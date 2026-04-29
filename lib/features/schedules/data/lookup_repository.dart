import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:mmdesk/core/models/lookup_models.dart';
import 'package:mmdesk/core/network/supabase_service.dart';

part 'lookup_repository.g.dart';

/// Generic repository for simple lookup tables (name + sort_order).
/// Covers: contact_types, categories, matter_types, departments,
/// referral_sources, progress_lists, standard_directories
class LookupRepository {
  final Ref ref;
  LookupRepository(this.ref);

  Future<List<LookupItem>> getItems(String tableName) async {
    final supabase = ref.read(supabaseClientProvider);
    final response = await supabase
        .from(tableName)
        .select()
        .order('sort_order', ascending: true);
    return response.map((json) => LookupItem.fromJson(json)).toList();
  }

  Future<LookupItem> createItem(String tableName, LookupItem item) async {
    final supabase = ref.read(supabaseClientProvider);
    final response = await supabase
        .from(tableName)
        .insert(item.toJson())
        .select()
        .single();
    return LookupItem.fromJson(response);
  }

  Future<void> updateItem(String tableName, LookupItem item) async {
    final supabase = ref.read(supabaseClientProvider);
    await supabase.from(tableName).update(item.toJson()).eq('id', item.id);
  }

  Future<void> deleteItem(String tableName, String id) async {
    final supabase = ref.read(supabaseClientProvider);
    await supabase.from(tableName).delete().eq('id', id);
  }

  // Specialized getters for extended models

  Future<List<StatusItem>> getStatuses() async {
    final supabase = ref.read(supabaseClientProvider);
    final response = await supabase
        .from('statuses')
        .select()
        .order('sort_order', ascending: true);
    return response.map((json) => StatusItem.fromJson(json)).toList();
  }

  Future<List<VisaTypeItem>> getVisaTypes() async {
    final supabase = ref.read(supabaseClientProvider);
    final response = await supabase
        .from('visa_types')
        .select()
        .order('sort_order', ascending: true);
    return response.map((json) => VisaTypeItem.fromJson(json)).toList();
  }

  Future<List<CodeItem>> getCodes(String tableName) async {
    final supabase = ref.read(supabaseClientProvider);
    final response = await supabase
        .from(tableName)
        .select()
        .order('code', ascending: true);
    return response.map((json) => CodeItem.fromJson(json)).toList();
  }

  Future<List<LegalBasisItem>> getLegalBases() async {
    final supabase = ref.read(supabaseClientProvider);
    final response = await supabase
        .from('legal_bases')
        .select()
        .order('sort_order', ascending: true);
    return response.map((json) => LegalBasisItem.fromJson(json)).toList();
  }

  Future<List<QuickpartItem>> getQuickparts() async {
    final supabase = ref.read(supabaseClientProvider);
    final response = await supabase
        .from('quickparts')
        .select()
        .order('sort_order', ascending: true);
    return response.map((json) => QuickpartItem.fromJson(json)).toList();
  }

  Future<List<MergeFieldItem>> getMergeFields() async {
    final supabase = ref.read(supabaseClientProvider);
    final response = await supabase
        .from('custom_merge_fields')
        .select()
        .order('field_name', ascending: true);
    return response.map((json) => MergeFieldItem.fromJson(json)).toList();
  }
}

@riverpod
LookupRepository lookupRepository(Ref ref) {
  return LookupRepository(ref);
}

// Convenience providers for each lookup table
@riverpod
Future<List<LookupItem>> contactTypesList(Ref ref) {
  return ref.read(lookupRepositoryProvider).getItems('contact_types');
}

@riverpod
Future<List<LookupItem>> categoriesList(Ref ref) {
  return ref.read(lookupRepositoryProvider).getItems('categories');
}

@riverpod
Future<List<LookupItem>> matterTypesList(Ref ref) {
  return ref.read(lookupRepositoryProvider).getItems('matter_types');
}

@riverpod
Future<List<LookupItem>> departmentsList(Ref ref) {
  return ref.read(lookupRepositoryProvider).getItems('departments');
}

@riverpod
Future<List<LookupItem>> referralSourcesList(Ref ref) {
  return ref.read(lookupRepositoryProvider).getItems('referral_sources');
}

@riverpod
Future<List<LookupItem>> progressListItems(Ref ref) {
  return ref.read(lookupRepositoryProvider).getItems('progress_lists');
}

@riverpod
Future<List<StatusItem>> statusesList(Ref ref) {
  return ref.read(lookupRepositoryProvider).getStatuses();
}

@riverpod
Future<List<VisaTypeItem>> visaTypesList(Ref ref) {
  return ref.read(lookupRepositoryProvider).getVisaTypes();
}

@riverpod
Future<List<CodeItem>> costCodesList(Ref ref) {
  return ref.read(lookupRepositoryProvider).getCodes('cost_codes');
}

@riverpod
Future<List<CodeItem>> disbursementCodesList(Ref ref) {
  return ref.read(lookupRepositoryProvider).getCodes('disbursement_codes');
}

@riverpod
Future<List<CodeItem>> feeCodesList(Ref ref) {
  return ref.read(lookupRepositoryProvider).getCodes('fee_codes');
}

@riverpod
Future<List<LegalBasisItem>> legalBasesList(Ref ref) {
  return ref.read(lookupRepositoryProvider).getLegalBases();
}

@riverpod
Future<List<QuickpartItem>> quickpartsList(Ref ref) {
  return ref.read(lookupRepositoryProvider).getQuickparts();
}

@riverpod
Future<List<MergeFieldItem>> mergeFieldsList(Ref ref) {
  return ref.read(lookupRepositoryProvider).getMergeFields();
}
