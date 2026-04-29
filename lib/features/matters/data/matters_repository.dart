import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:mmdesk/core/models/matter_model.dart';
import 'package:mmdesk/core/network/supabase_service.dart';

part 'matters_repository.g.dart';

class MattersRepository {
  final Ref ref;
  MattersRepository(this.ref);

  Future<List<MatterModel>> getMatters({bool includeArchived = false}) async {
    final supabase = ref.read(supabaseClientProvider);
    var query = supabase.from('matters').select();
    if (!includeArchived) {
      query = query.eq('is_archived', false);
    }
    final response = await query.order('created_at', ascending: false);
    return response.map((json) => MatterModel.fromJson(json)).toList();
  }

  Future<MatterModel> getMatter(String id) async {
    final supabase = ref.read(supabaseClientProvider);
    final response =
        await supabase.from('matters').select().eq('id', id).single();
    return MatterModel.fromJson(response);
  }

  Future<MatterModel> createMatter(MatterModel matter) async {
    final supabase = ref.read(supabaseClientProvider);
    final response =
        await supabase.from('matters').insert(matter.toJson()).select().single();
    return MatterModel.fromJson(response);
  }

  Future<void> updateMatter(MatterModel matter) async {
    final supabase = ref.read(supabaseClientProvider);
    await supabase
        .from('matters')
        .update(matter.toJson())
        .eq('id', matter.id);
  }

  Future<void> deleteMatter(String id) async {
    final supabase = ref.read(supabaseClientProvider);
    await supabase.from('matters').delete().eq('id', id);
  }

  Future<void> archiveMatter(String id) async {
    final supabase = ref.read(supabaseClientProvider);
    await supabase
        .from('matters')
        .update({'is_archived': true, 'updated_at': DateTime.now().toIso8601String()})
        .eq('id', id);
  }

  Future<void> restoreMatter(String id) async {
    final supabase = ref.read(supabaseClientProvider);
    await supabase
        .from('matters')
        .update({'is_archived': false, 'updated_at': DateTime.now().toIso8601String()})
        .eq('id', id);
  }

  /// Generate a unique matter ID in the format: SUR_GIV.YY-NNNNN
  Future<String> generateMatterId(String surname, String givenName) async {
    final surPart = surname.trim().replaceAll(' ', '').toUpperCase();
    final givPart = givenName.trim().replaceAll(' ', '').toUpperCase();

    final surCode = surPart.length > 3 ? surPart.substring(0, 3) : surPart;
    final givCode = givPart.length > 3 ? givPart.substring(0, 3) : givPart;

    final year = DateTime.now().year.toString().substring(2);
    final prefix = '${surCode}_$givCode.$year-';

    // Find the next sequential number
    final supabase = ref.read(supabaseClientProvider);
    final response = await supabase
        .from('matters')
        .select('matter_id')
        .like('matter_id', '$prefix%')
        .order('matter_id', ascending: false)
        .limit(1);

    int nextNum = 1;
    if (response.isNotEmpty) {
      final lastId = response.first['matter_id'] as String;
      final lastNum = int.tryParse(lastId.split('-').last) ?? 0;
      nextNum = lastNum + 1;
    }

    return '$prefix${nextNum.toString().padLeft(5, '0')}';
  }
}

@riverpod
MattersRepository mattersRepository(Ref ref) {
  return MattersRepository(ref);
}

@riverpod
Future<List<MatterModel>> mattersList(Ref ref) {
  return ref.read(mattersRepositoryProvider).getMatters();
}
