import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:mmdesk/core/models/bank_account_model.dart';
import 'package:mmdesk/core/network/supabase_service.dart';

part 'bank_accounts_repository.g.dart';

class BankAccountsRepository {
  final Ref ref;
  BankAccountsRepository(this.ref);

  static final List<BankAccountModel> _mockAccounts = [
    BankAccountModel(
      id: 'ba-1',
      displayName: 'Client Trust Account',
      accountName: 'MMDesk Client Trust',
      accountNumber: '1234 5678',
      bsb: '062-000',
      bankName: 'Commonwealth Bank',
      createdAt: DateTime.now().subtract(const Duration(days: 365)),
      updatedAt: DateTime.now().subtract(const Duration(days: 10)),
    ),
    BankAccountModel(
      id: 'ba-2',
      displayName: 'Office Operating Account',
      accountName: 'MMDesk Operations',
      accountNumber: '8765 4321',
      bsb: '062-001',
      bankName: 'Commonwealth Bank',
      createdAt: DateTime.now().subtract(const Duration(days: 365)),
      updatedAt: DateTime.now().subtract(const Duration(days: 10)),
    ),
  ];

  Future<List<BankAccountModel>> getBankAccounts() async {
    final supabase = ref.read(supabaseClientProvider);
    try {
      final response = await supabase
          .from('bank_accounts')
          .select()
          .order('display_name', ascending: true);
      return response.map((json) => BankAccountModel.fromJson(json)).toList();
    } catch (e) {
      return List.from(_mockAccounts);
    }
  }

  Future<void> createBankAccount(BankAccountModel account) async {
    final supabase = ref.read(supabaseClientProvider);
    try {
      await supabase.from('bank_accounts').insert(account.toJson());
    } catch (e) {
      _mockAccounts.insert(0, account);
    }
  }

  Future<void> updateBankAccount(BankAccountModel account) async {
    final supabase = ref.read(supabaseClientProvider);
    try {
      await supabase
          .from('bank_accounts')
          .update(account.toJson())
          .eq('id', account.id);
    } catch (e) {
      final index = _mockAccounts.indexWhere((a) => a.id == account.id);
      if (index != -1) _mockAccounts[index] = account;
    }
  }

  Future<void> deleteBankAccount(String id) async {
    final supabase = ref.read(supabaseClientProvider);
    try {
      await supabase.from('bank_accounts').delete().eq('id', id);
    } catch (e) {
      _mockAccounts.removeWhere((a) => a.id == id);
    }
  }
}

@riverpod
BankAccountsRepository bankAccountsRepository(Ref ref) {
  return BankAccountsRepository(ref);
}

@riverpod
Future<List<BankAccountModel>> bankAccountsList(Ref ref) {
  return ref.read(bankAccountsRepositoryProvider).getBankAccounts();
}
