import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:mmdesk/core/models/filenote_model.dart';
import 'package:mmdesk/core/network/supabase_service.dart';

part 'filenotes_repository.g.dart';

class FilenotesRepository {
  final Ref ref;
  FilenotesRepository(this.ref);

  Future<List<FilenoteModel>> getFilenotes({String? matterId}) async {
    final supabase = ref.read(supabaseClientProvider);
    var query = supabase.from('filenotes').select();
    if (matterId != null) {
      query = query.eq('matter_id', matterId);
    }
    final response = await query.order('date', ascending: false);
    return response.map((json) => FilenoteModel.fromJson(json)).toList();
  }

  Future<FilenoteModel> createFilenote(FilenoteModel filenote) async {
    final supabase = ref.read(supabaseClientProvider);
    final response = await supabase
        .from('filenotes')
        .insert(filenote.toJson())
        .select()
        .single();
    return FilenoteModel.fromJson(response);
  }

  Future<void> updateFilenote(FilenoteModel filenote) async {
    final supabase = ref.read(supabaseClientProvider);
    await supabase
        .from('filenotes')
        .update(filenote.toJson())
        .eq('id', filenote.id);
  }

  Future<void> deleteFilenote(String id) async {
    final supabase = ref.read(supabaseClientProvider);
    await supabase.from('filenotes').delete().eq('id', id);
  }
}

@riverpod
FilenotesRepository filenotesRepository(Ref ref) {
  return FilenotesRepository(ref);
}

@riverpod
Future<List<FilenoteModel>> filenotesList(Ref ref, {String? matterId}) {
  return ref.read(filenotesRepositoryProvider).getFilenotes(matterId: matterId);
}
