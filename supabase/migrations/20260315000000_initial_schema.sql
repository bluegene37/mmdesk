-- Migration: Initial Schema for Immigration CRM
-- Author: Antigravity
-- Description: Sets up Profiles, Clients, Cases, Dependents, Documents, and RLS policies.

-- Set timezone to UTC
SET TIME ZONE 'UTC';

-- 1. Custom Types/Enums
CREATE TYPE user_role AS ENUM ('admin', 'agent', 'lawyer');
CREATE TYPE case_type AS ENUM ('visa', 'citizenship', 'asylum', 'corporate', 'other');
CREATE TYPE case_status AS ENUM ('open', 'in_progress', 'pending_documents', 'submitted', 'approved', 'rejected', 'closed');
CREATE TYPE priority_level AS ENUM ('low', 'medium', 'high', 'urgent');

-- 2. Tables

-- Profiles table (extends auth.users)
CREATE TABLE public.profiles (
    id UUID PRIMARY KEY REFERENCES auth.users(id) ON DELETE CASCADE,
    role user_role NOT NULL DEFAULT 'agent',
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    email TEXT UNIQUE NOT NULL,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

-- Clients table
CREATE TABLE public.clients (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    primary_agent_id UUID NOT NULL REFERENCES public.profiles(id) ON DELETE RESTRICT,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    email TEXT,
    phone TEXT,
    date_of_birth DATE,
    nationality TEXT,
    passport_number TEXT,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

-- Dependents table
CREATE TABLE public.dependents (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    client_id UUID NOT NULL REFERENCES public.clients(id) ON DELETE CASCADE,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    relationship TEXT NOT NULL,
    date_of_birth DATE,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

-- Cases table
CREATE TABLE public.cases (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    client_id UUID NOT NULL REFERENCES public.clients(id) ON DELETE CASCADE,
    agent_id UUID NOT NULL REFERENCES public.profiles(id) ON DELETE RESTRICT,
    type case_type NOT NULL,
    status case_status NOT NULL DEFAULT 'open',
    priority priority_level NOT NULL DEFAULT 'medium',
    description TEXT,
    expiry_date TIMESTAMPTZ, -- UTC storage
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

-- Documents (Metadata) table
CREATE TABLE public.documents (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    case_id UUID REFERENCES public.cases(id) ON DELETE CASCADE,
    client_id UUID REFERENCES public.clients(id) ON DELETE CASCADE,
    uploaded_by UUID NOT NULL REFERENCES public.profiles(id),
    file_name TEXT NOT NULL,
    file_path TEXT NOT NULL, -- Logical path in Supabase Storage
    content_type TEXT,
    file_size_bytes BIGINT,
    is_sensitive BOOLEAN DEFAULT true,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

-- 3. Row Level Security (RLS)

ALTER TABLE public.profiles ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.clients ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.dependents ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.cases ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.documents ENABLE ROW LEVEL SECURITY;

-- Profiles: Users can read all profiles (agents) but only update their own
CREATE POLICY "Profiles are viewable by all authenticated users" 
    ON public.profiles FOR SELECT USING (auth.role() = 'authenticated');
CREATE POLICY "Users can update own profile" 
    ON public.profiles FOR UPDATE USING (auth.uid() = id);

-- Clients: Agents can only view/edit clients they manage (or if they are admin)
CREATE POLICY "Agents can view their clients" 
    ON public.clients FOR SELECT 
    USING (auth.uid() = primary_agent_id OR EXISTS (SELECT 1 FROM public.profiles WHERE id = auth.uid() AND role = 'admin'));
CREATE POLICY "Agents can insert clients" 
    ON public.clients FOR INSERT WITH CHECK (auth.uid() = primary_agent_id);
CREATE POLICY "Agents can update their clients" 
    ON public.clients FOR UPDATE 
    USING (auth.uid() = primary_agent_id OR EXISTS (SELECT 1 FROM public.profiles WHERE id = auth.uid() AND role = 'admin'));

-- Cases: Agents can only view/edit cases they manage
CREATE POLICY "Agents can view their cases" 
    ON public.cases FOR SELECT 
    USING (auth.uid() = agent_id OR EXISTS (SELECT 1 FROM public.profiles WHERE id = auth.uid() AND role = 'admin'));
CREATE POLICY "Agents can insert cases" 
    ON public.cases FOR INSERT WITH CHECK (auth.uid() = agent_id);
CREATE POLICY "Agents can update their cases" 
    ON public.cases FOR UPDATE 
    USING (auth.uid() = agent_id OR EXISTS (SELECT 1 FROM public.profiles WHERE id = auth.uid() AND role = 'admin'));

-- Dependents: Tied to client readability
CREATE POLICY "Agents can view dependents of their clients" 
    ON public.dependents FOR SELECT 
    USING (EXISTS (SELECT 1 FROM public.clients WHERE id = public.dependents.client_id AND primary_agent_id = auth.uid()));
CREATE POLICY "Agents can manage dependents of their clients" 
    ON public.dependents FOR ALL 
    USING (EXISTS (SELECT 1 FROM public.clients WHERE id = public.dependents.client_id AND primary_agent_id = auth.uid()));

-- Documents: Readability tied to case/client ownership
CREATE POLICY "Agents can view documents of their cases/clients" 
    ON public.documents FOR SELECT 
    USING (uploaded_by = auth.uid() OR EXISTS (SELECT 1 FROM public.profiles WHERE id = auth.uid() AND role = 'admin'));
CREATE POLICY "Agents can insert documents" 
    ON public.documents FOR INSERT WITH CHECK (uploaded_by = auth.uid());

-- 4. Triggers (Updated At)

CREATE OR REPLACE FUNCTION update_updated_at_column()
RETURNS TRIGGER AS $$
BEGIN
   NEW.updated_at = NOW();
   RETURN NEW;
END;
$$ language 'plpgsql';

CREATE TRIGGER update_profiles_modtime BEFORE UPDATE ON public.profiles FOR EACH ROW EXECUTE PROCEDURE update_updated_at_column();
CREATE TRIGGER update_clients_modtime BEFORE UPDATE ON public.clients FOR EACH ROW EXECUTE PROCEDURE update_updated_at_column();
CREATE TRIGGER update_dependents_modtime BEFORE UPDATE ON public.dependents FOR EACH ROW EXECUTE PROCEDURE update_updated_at_column();
CREATE TRIGGER update_cases_modtime BEFORE UPDATE ON public.cases FOR EACH ROW EXECUTE PROCEDURE update_updated_at_column();

-- 5. Storage Bucket (Document Vault)
-- Note: Must be executed by a superuser or via Supabase dashboard if executing externally.
INSERT INTO storage.buckets (id, name, public) 
VALUES ('document_vault', 'document_vault', false)
ON CONFLICT (id) DO NOTHING;

-- Storage RLS
CREATE POLICY "Authenticated users can upload documents"
    ON storage.objects FOR INSERT TO authenticated WITH CHECK (bucket_id = 'document_vault');
CREATE POLICY "Users can only fetch their own uploaded files"
    ON storage.objects FOR SELECT TO authenticated USING (bucket_id = 'document_vault' AND owner = auth.uid());
