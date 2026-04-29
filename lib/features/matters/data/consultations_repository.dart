import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:mmdesk/core/models/consultation_model.dart';
import 'package:mmdesk/core/network/supabase_service.dart';

part 'consultations_repository.g.dart';

class ConsultationsRepository {
  final Ref ref;
  ConsultationsRepository(this.ref);

  Future<List<ConsultationModel>> getConsultations({
    String? matterId,
    String? clientId,
    String? status,
  }) async {
    final supabase = ref.read(supabaseClientProvider);
    var query = supabase.from('consultations').select();
    if (matterId != null) query = query.eq('matter_id', matterId);
    if (clientId != null) query = query.eq('client_id', clientId);
    if (status != null) query = query.eq('status', status);
    final response = await query.order('date', ascending: false);
    return response.map((json) => ConsultationModel.fromJson(json)).toList();
  }

  Future<ConsultationModel> createConsultation(ConsultationModel consultation) async {
    final supabase = ref.read(supabaseClientProvider);
    final response = await supabase
        .from('consultations')
        .insert(consultation.toJson())
        .select()
        .single();
    return ConsultationModel.fromJson(response);
  }

  Future<void> updateConsultation(ConsultationModel consultation) async {
    final supabase = ref.read(supabaseClientProvider);
    await supabase
        .from('consultations')
        .update(consultation.toJson())
        .eq('id', consultation.id);
  }

  Future<void> deleteConsultation(String id) async {
    final supabase = ref.read(supabaseClientProvider);
    await supabase.from('consultations').delete().eq('id', id);
  }
}

@riverpod
ConsultationsRepository consultationsRepository(Ref ref) {
  return ConsultationsRepository(ref);
}

@riverpod
Future<List<ConsultationModel>> consultationsList(Ref ref) {
  return ref.read(consultationsRepositoryProvider).getConsultations();
}
