import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:mmdesk/core/models/contact_model.dart';
import 'package:mmdesk/core/network/supabase_service.dart';

part 'contacts_repository.g.dart';

class ContactsRepository {
  final Ref ref;
  ContactsRepository(this.ref);

  Future<List<ContactModel>> getContacts({String? matterId, String? clientId}) async {
    final supabase = ref.read(supabaseClientProvider);
    var query = supabase.from('contacts').select();
    if (matterId != null) {
      query = query.eq('matter_id', matterId);
    }
    if (clientId != null) {
      query = query.eq('client_id', clientId);
    }
    final response = await query.order('created_at', ascending: false);
    return response.map((json) => ContactModel.fromJson(json)).toList();
  }

  Future<ContactModel> createContact(ContactModel contact) async {
    final supabase = ref.read(supabaseClientProvider);
    final response = await supabase
        .from('contacts')
        .insert(contact.toJson())
        .select()
        .single();
    return ContactModel.fromJson(response);
  }

  Future<void> updateContact(ContactModel contact) async {
    final supabase = ref.read(supabaseClientProvider);
    await supabase
        .from('contacts')
        .update(contact.toJson())
        .eq('id', contact.id);
  }

  Future<void> deleteContact(String id) async {
    final supabase = ref.read(supabaseClientProvider);
    await supabase.from('contacts').delete().eq('id', id);
  }

  Future<void> deactivateContact(String id) async {
    final supabase = ref.read(supabaseClientProvider);
    await supabase
        .from('contacts')
        .update({'is_active': false, 'updated_at': DateTime.now().toIso8601String()})
        .eq('id', id);
  }

  Future<void> reactivateContact(String id) async {
    final supabase = ref.read(supabaseClientProvider);
    await supabase
        .from('contacts')
        .update({'is_active': true, 'updated_at': DateTime.now().toIso8601String()})
        .eq('id', id);
  }
}

@riverpod
ContactsRepository contactsRepository(Ref ref) {
  return ContactsRepository(ref);
}

@riverpod
Future<List<ContactModel>> contactsList(Ref ref) {
  return ref.read(contactsRepositoryProvider).getContacts();
}
