import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:mmdesk/core/models/case_model.dart';
import 'package:mmdesk/core/network/supabase_service.dart';

part 'cases_repository.g.dart';

class CasesRepository {
  final Ref ref;
  CasesRepository(this.ref);

  static final List<CaseModel> _mockCases = [
    CaseModel(
      id: 'case-1',
      clientId: 'client-1',
      agentId: 'agent-1',
      type: CaseType.visa,
      status: CaseStatus.in_progress,
      priority: PriorityLevel.high,
      createdAt: DateTime.now().subtract(const Duration(days: 12)),
      updatedAt: DateTime.now().subtract(const Duration(days: 12)),
    ),
    CaseModel(
      id: 'case-2',
      clientId: 'client-2',
      agentId: 'agent-2',
      type: CaseType.citizenship,
      status: CaseStatus.submitted,
      priority: PriorityLevel.medium,
      createdAt: DateTime.now().subtract(const Duration(days: 13)),
      updatedAt: DateTime.now().subtract(const Duration(days: 13)),
    )
  ];

  Future<List<CaseModel>> getCases() async {
    // 1. Fetch from Remote
    final supabase = ref.read(supabaseClientProvider);
    try {
      final response = await supabase.from('cases').select().order('created_at', ascending: false);
      final cases = response.map((json) => CaseModel.fromJson(json)).toList();
      
      // 2. TODO: Cache to Local Drift DB (Sync mechanism)
      return cases;
    } catch (e) {
      if (e.toString().contains('Failed host lookup') || e.toString().contains('placeholder')) {
        return _mockCases;
      }
      rethrow;
    }
  }

  Future<void> createCase(CaseModel newCase) async {
    final supabase = ref.read(supabaseClientProvider);
    try {
      await supabase.from('cases').insert(newCase.toJson());
    } catch (e) {
      if (e.toString().contains('Failed host lookup') || e.toString().contains('placeholder')) {
        _mockCases.insert(0, newCase);
        return;
      }
      rethrow;
    }
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
