import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:mmdesk/core/models/case_model.dart';
import 'package:mmdesk/core/network/supabase_service.dart';

part 'cases_repository.g.dart';

class CasesRepository {
  final Ref ref;
  CasesRepository(this.ref);

  Future<List<CaseModel>> getCases() async {
    // 1. Fetch from Remote
    final supabase = ref.read(supabaseClientProvider);
    final response = await supabase.from('cases').select();
    final cases = response.map((json) => CaseModel.fromJson(json)).toList();
    
    // 2. TODO: Cache to Local Drift DB (Sync mechanism)
    
    return cases;
  }
}

@riverpod
CasesRepository casesRepository(Ref ref) {
  return CasesRepository(ref);
}

@riverpod
Future<List<CaseModel>> casesList(Ref ref) {
  return ref.read(casesRepositoryProvider).getCases();
}
