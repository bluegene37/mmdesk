import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:mmdesk/core/models/tax_code_model.dart';
import 'package:mmdesk/core/network/supabase_service.dart';

part 'tax_codes_repository.g.dart';

class TaxCodesRepository {
  final Ref ref;
  TaxCodesRepository(this.ref);

  static final List<TaxCodeModel> _mockTaxCodes = [
    TaxCodeModel(
      id: 'tc-1',
      code: 'GST',
      description: 'Goods and Services Tax',
      rate: 10.0,
      isIncome: true,
      isExpense: true,
      createdAt: DateTime.now().subtract(const Duration(days: 365)),
      updatedAt: DateTime.now().subtract(const Duration(days: 30)),
    ),
    TaxCodeModel(
      id: 'tc-2',
      code: 'FRE',
      description: 'GST Free',
      rate: 0.0,
      isIncome: true,
      isExpense: true,
      createdAt: DateTime.now().subtract(const Duration(days: 365)),
      updatedAt: DateTime.now().subtract(const Duration(days: 30)),
    ),
    TaxCodeModel(
      id: 'tc-3',
      code: 'INP',
      description: 'Input Taxed',
      rate: 0.0,
      isIncome: false,
      isExpense: true,
      createdAt: DateTime.now().subtract(const Duration(days: 365)),
      updatedAt: DateTime.now().subtract(const Duration(days: 30)),
    ),
    TaxCodeModel(
      id: 'tc-4',
      code: 'N-T',
      description: 'Not Reportable',
      rate: 0.0,
      isIncome: true,
      isExpense: true,
      createdAt: DateTime.now().subtract(const Duration(days: 365)),
      updatedAt: DateTime.now().subtract(const Duration(days: 30)),
    ),
  ];

  Future<List<TaxCodeModel>> getTaxCodes() async {
    final supabase = ref.read(supabaseClientProvider);
    try {
      final response = await supabase
          .from('tax_codes')
          .select()
          .order('code', ascending: true);
      return response.map((json) => TaxCodeModel.fromJson(json)).toList();
    } catch (e) {
      return List.from(_mockTaxCodes);
    }
  }

  Future<void> createTaxCode(TaxCodeModel taxCode) async {
    final supabase = ref.read(supabaseClientProvider);
    try {
      await supabase.from('tax_codes').insert(taxCode.toJson());
    } catch (e) {
      _mockTaxCodes.insert(0, taxCode);
    }
  }

  Future<void> updateTaxCode(TaxCodeModel taxCode) async {
    final supabase = ref.read(supabaseClientProvider);
    try {
      await supabase
          .from('tax_codes')
          .update(taxCode.toJson())
          .eq('id', taxCode.id);
    } catch (e) {
      final index = _mockTaxCodes.indexWhere((t) => t.id == taxCode.id);
      if (index != -1) _mockTaxCodes[index] = taxCode;
    }
  }

  Future<void> deleteTaxCode(String id) async {
    final supabase = ref.read(supabaseClientProvider);
    try {
      await supabase.from('tax_codes').delete().eq('id', id);
    } catch (e) {
      _mockTaxCodes.removeWhere((t) => t.id == id);
    }
  }
}

@riverpod
TaxCodesRepository taxCodesRepository(Ref ref) {
  return TaxCodesRepository(ref);
}

@riverpod
Future<List<TaxCodeModel>> taxCodesList(Ref ref) {
  return ref.read(taxCodesRepositoryProvider).getTaxCodes();
}
