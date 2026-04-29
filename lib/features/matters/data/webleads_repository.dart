import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:mmdesk/core/models/weblead_model.dart';
import 'package:mmdesk/core/network/supabase_service.dart';

part 'webleads_repository.g.dart';

class WebLeadsRepository {
  final Ref ref;
  WebLeadsRepository(this.ref);

  Future<List<WebLeadModel>> getWebLeads({String? status}) async {
    final supabase = ref.read(supabaseClientProvider);
    var query = supabase.from('webleads').select();
    if (status != null) query = query.eq('status', status);
    final response = await query.order('created_at', ascending: false);
    return response.map((json) => WebLeadModel.fromJson(json)).toList();
  }

  Future<WebLeadModel> createWebLead(WebLeadModel lead) async {
    final supabase = ref.read(supabaseClientProvider);
    final response = await supabase
        .from('webleads')
        .insert(lead.toJson())
        .select()
        .single();
    return WebLeadModel.fromJson(response);
  }

  Future<void> updateWebLead(WebLeadModel lead) async {
    final supabase = ref.read(supabaseClientProvider);
    await supabase.from('webleads').update(lead.toJson()).eq('id', lead.id);
  }

  Future<void> reviewWebLead(String id, String reviewedBy) async {
    final supabase = ref.read(supabaseClientProvider);
    await supabase.from('webleads').update({
      'status': 'reviewed',
      'reviewed_by': reviewedBy,
      'updated_at': DateTime.now().toIso8601String(),
    }).eq('id', id);
  }

  Future<void> convertWebLead(String id, String matterId) async {
    final supabase = ref.read(supabaseClientProvider);
    await supabase.from('webleads').update({
      'status': 'converted',
      'converted_matter_id': matterId,
      'updated_at': DateTime.now().toIso8601String(),
    }).eq('id', id);
  }

  Future<void> rejectWebLead(String id) async {
    final supabase = ref.read(supabaseClientProvider);
    await supabase.from('webleads').update({
      'status': 'rejected',
      'updated_at': DateTime.now().toIso8601String(),
    }).eq('id', id);
  }

  Future<void> deleteWebLead(String id) async {
    final supabase = ref.read(supabaseClientProvider);
    await supabase.from('webleads').delete().eq('id', id);
  }
}

@riverpod
WebLeadsRepository webLeadsRepository(Ref ref) {
  return WebLeadsRepository(ref);
}

@riverpod
Future<List<WebLeadModel>> webLeadsList(Ref ref) {
  return ref.read(webLeadsRepositoryProvider).getWebLeads();
}
