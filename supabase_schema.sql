-- ============================================================
-- MMDesk Database Schema
-- Run this in your Supabase Dashboard > SQL Editor
-- ============================================================

-- 1. PROFILES (extends Supabase auth.users)
create table if not exists public.profiles (
  id uuid primary key references auth.users(id) on delete cascade,
  role text not null default 'agent' check (role in ('admin', 'agent', 'lawyer')),
  first_name text not null default '',
  last_name text not null default '',
  email text not null default '',
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

alter table public.profiles enable row level security;

create policy "Users can view all profiles"
  on public.profiles for select
  using (true);

create policy "Users can update their own profile"
  on public.profiles for update
  using (auth.uid() = id);

-- Auto-create profile on signup
create or replace function public.handle_new_user()
returns trigger as $$
begin
  insert into public.profiles (id, email, first_name, last_name)
  values (
    new.id,
    new.email,
    coalesce(new.raw_user_meta_data ->> 'full_name', split_part(new.email, '@', 1)),
    ''
  );
  return new;
end;
$$ language plpgsql security definer;

-- Drop trigger if it exists, then create
drop trigger if exists on_auth_user_created on auth.users;
create trigger on_auth_user_created
  after insert on auth.users
  for each row execute function public.handle_new_user();


-- 2. CLIENTS
create table if not exists public.clients (
  id uuid primary key default gen_random_uuid(),
  primary_agent_id uuid not null references public.profiles(id),
  first_name text not null,
  last_name text not null,
  email text,
  phone text,
  date_of_birth date,
  nationality text,
  passport_number text,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

alter table public.clients enable row level security;

create policy "Authenticated users can view all clients"
  on public.clients for select
  using (auth.role() = 'authenticated');

create policy "Authenticated users can insert clients"
  on public.clients for insert
  with check (auth.role() = 'authenticated');

create policy "Authenticated users can update clients"
  on public.clients for update
  using (auth.role() = 'authenticated');


-- 3. CASES
create table if not exists public.cases (
  id uuid primary key default gen_random_uuid(),
  client_id uuid not null references public.clients(id) on delete cascade,
  agent_id uuid not null references public.profiles(id),
  type text not null default 'other' check (type in ('visa', 'citizenship', 'asylum', 'corporate', 'other')),
  status text not null default 'open' check (status in ('open', 'in_progress', 'pending_documents', 'submitted', 'approved', 'rejected', 'closed')),
  priority text not null default 'medium' check (priority in ('low', 'medium', 'high', 'urgent')),
  description text,
  expiry_date timestamptz,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

alter table public.cases enable row level security;

create policy "Authenticated users can view all cases"
  on public.cases for select
  using (auth.role() = 'authenticated');

create policy "Authenticated users can insert cases"
  on public.cases for insert
  with check (auth.role() = 'authenticated');

create policy "Authenticated users can update cases"
  on public.cases for update
  using (auth.role() = 'authenticated');


-- 4. DEPENDENTS
create table if not exists public.dependents (
  id uuid primary key default gen_random_uuid(),
  client_id uuid not null references public.clients(id) on delete cascade,
  first_name text not null,
  last_name text not null,
  relationship text not null,
  date_of_birth date,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

alter table public.dependents enable row level security;

create policy "Authenticated users can view dependents"
  on public.dependents for select
  using (auth.role() = 'authenticated');

create policy "Authenticated users can insert dependents"
  on public.dependents for insert
  with check (auth.role() = 'authenticated');

create policy "Authenticated users can update dependents"
  on public.dependents for update
  using (auth.role() = 'authenticated');


-- 5. DOCUMENTS
create table if not exists public.documents (
  id uuid primary key default gen_random_uuid(),
  case_id uuid references public.cases(id) on delete set null,
  client_id uuid references public.clients(id) on delete set null,
  uploaded_by uuid not null references public.profiles(id),
  file_name text not null,
  file_path text not null,
  content_type text,
  file_size_bytes bigint,
  is_sensitive boolean not null default true,
  created_at timestamptz not null default now()
);

alter table public.documents enable row level security;

create policy "Authenticated users can view documents"
  on public.documents for select
  using (auth.role() = 'authenticated');

create policy "Authenticated users can insert documents"
  on public.documents for insert
  with check (auth.role() = 'authenticated');


-- 6. Auto-update `updated_at` trigger
create or replace function public.update_updated_at()
returns trigger as $$
begin
  new.updated_at = now();
  return new;
end;
$$ language plpgsql;

drop trigger if exists profiles_updated_at on public.profiles;
create trigger profiles_updated_at before update on public.profiles
  for each row execute function public.update_updated_at();

drop trigger if exists clients_updated_at on public.clients;
create trigger clients_updated_at before update on public.clients
  for each row execute function public.update_updated_at();

drop trigger if exists cases_updated_at on public.cases;
create trigger cases_updated_at before update on public.cases
  for each row execute function public.update_updated_at();

drop trigger if exists dependents_updated_at on public.dependents;
create trigger dependents_updated_at before update on public.dependents
  for each row execute function public.update_updated_at();
