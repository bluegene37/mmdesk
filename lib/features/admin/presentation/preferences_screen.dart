import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mmdesk/core/models/bank_account_model.dart';
import 'package:mmdesk/core/models/firm_preferences_model.dart';
import 'package:mmdesk/core/models/tax_code_model.dart';
import 'package:mmdesk/features/admin/data/bank_accounts_repository.dart';
import 'package:mmdesk/features/admin/data/preferences_repository.dart';
import 'package:mmdesk/features/admin/data/tax_codes_repository.dart';
import 'package:mmdesk/features/admin/presentation/widgets/bank_accounts_dialog.dart';
import 'package:mmdesk/features/admin/presentation/widgets/tax_codes_dialog.dart';

class PreferencesScreen extends ConsumerStatefulWidget {
  const PreferencesScreen({super.key});

  @override
  ConsumerState<PreferencesScreen> createState() => _PreferencesScreenState();
}

class _PreferencesScreenState extends ConsumerState<PreferencesScreen> {
  final _invoicesDueController = TextEditingController();
  final _depositRequestController = TextEditingController();
  
  FirmPreferencesModel _prefs = const FirmPreferencesModel();
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  Future<void> _loadData() async {
    final prefs = await ref.read(firmPreferencesProvider.future);
    setState(() {
      _prefs = prefs;
      _invoicesDueController.text = prefs.invoicesDueDays.toString();
      _depositRequestController.text = prefs.depositRequestDays.toString();
      _isLoading = false;
    });
  }

  @override
  void dispose() {
    _invoicesDueController.dispose();
    _depositRequestController.dispose();
    super.dispose();
  }

  void _save() {
    final updated = _prefs.copyWith(
      invoicesDueDays: int.tryParse(_invoicesDueController.text) ?? 14,
      depositRequestDays: int.tryParse(_depositRequestController.text) ?? 14,
    );
    ref.read(preferencesRepositoryProvider).savePreferences(updated);
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Preferences saved')));
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    if (_isLoading) {
      return const Scaffold(body: Center(child: CircularProgressIndicator()));
    }

    final taxCodesAsync = ref.watch(taxCodesListProvider);
    final bankAccountsAsync = ref.watch(bankAccountsListProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Administrative Preferences', style: TextStyle(fontWeight: FontWeight.bold)),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
        actions: [
          TextButton(
            onPressed: _save,
            child: const Text('Save Changes', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
          ),
          const SizedBox(width: 16),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSection(
              title: 'Program-level Accounts',
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   _buildDropdownRow(
                     'Basis', 
                     _prefs.basis, 
                     ['cash', 'accrual'], 
                     (val) => setState(() => _prefs = _prefs.copyWith(basis: val ?? 'cash'))
                   ),
                   const SizedBox(height: 16),
                   // For dates, we simplify to dropdowns for demo purposes
                   Row(
                     children: [
                       const SizedBox(width: 150, child: Text('Financial Year End', style: TextStyle(fontWeight: FontWeight.w500))),
                       SizedBox(
                         width: 80,
                         child: DropdownButtonFormField<int>(
                           value: _prefs.financialYearEndDay,
                           decoration: const InputDecoration(isDense: true, border: OutlineInputBorder()),
                           items: List.generate(31, (i) => DropdownMenuItem(value: i + 1, child: Text('${i + 1}'))),
                           onChanged: (val) => setState(() => _prefs = _prefs.copyWith(financialYearEndDay: val ?? 30)),
                         ),
                       ),
                       const SizedBox(width: 8),
                       Expanded(
                         child: DropdownButtonFormField<int>(
                           value: _prefs.financialYearEndMonth,
                           decoration: const InputDecoration(isDense: true, border: OutlineInputBorder()),
                           items: [
                             for (int i = 1; i <= 12; i++)
                               DropdownMenuItem(value: i, child: Text(switch (i) {
                                 1 => 'January', 2 => 'February', 3 => 'March', 4 => 'April', 5 => 'May', 6 => 'June',
                                 7 => 'July', 8 => 'August', 9 => 'September', 10 => 'October', 11 => 'November', 12 => 'December',
                                 _ => ''
                               }))
                           ],
                           onChanged: (val) => setState(() => _prefs = _prefs.copyWith(financialYearEndMonth: val ?? 6)),
                         ),
                       ),
                     ],
                   ),
                   const SizedBox(height: 16),
                   _buildTextFieldRow('Invoices Due (days)', _invoicesDueController),
                   const SizedBox(height: 16),
                   _buildTextFieldRow('Deposit Requests (days)', _depositRequestController),
                ],
              ),
            ),
            const SizedBox(height: 24),
            
            // Tax Codes
            taxCodesAsync.when(
              loading: () => const CircularProgressIndicator(),
              error: (err, _) => Text('Error loading tax codes: $err'),
              data: (codes) {
                final incomeCodes = codes.where((c) => c.isIncome).map((c) => c.code).toList();
                final expenseCodes = codes.where((c) => c.isExpense).map((c) => c.code).toList();
                final bothCodes = codes.where((c) => c.isIncome && c.isExpense).map((c) => c.code).toList();
                
                return _buildSection(
                  title: 'Default Tax Codes',
                  actionBtn: IconButton(
                    icon: const Icon(Icons.edit, size: 20, color: Color(0xFF1A56DB)),
                    tooltip: 'Manage Tax Codes',
                    onPressed: () => showDialog(context: context, builder: (_) => const TaxCodesDialog()),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                _buildTC('Taxable Income', _prefs.defaultTaxableIncome, incomeCodes, (v) => setState(() => _prefs = _prefs.copyWith(defaultTaxableIncome: v))),
                                _buildTC('Tax Free Income', _prefs.defaultTaxFreeIncome, incomeCodes, (v) => setState(() => _prefs = _prefs.copyWith(defaultTaxFreeIncome: v))),
                                _buildTC('Client Credits', _prefs.defaultClientCredits, incomeCodes, (v) => setState(() => _prefs = _prefs.copyWith(defaultClientCredits: v))),
                                _buildTC('Agent Fees', _prefs.defaultAgentFees, incomeCodes, (v) => setState(() => _prefs = _prefs.copyWith(defaultAgentFees: v))),
                              ],
                            ),
                          ),
                          const SizedBox(width: 32),
                          Expanded(
                            child: Column(
                              children: [
                                _buildTC('Taxable Expenses', _prefs.defaultTaxableExpenses, expenseCodes, (v) => setState(() => _prefs = _prefs.copyWith(defaultTaxableExpenses: v))),
                                _buildTC('Tax Free Expenses', _prefs.defaultTaxFreeExpenses, expenseCodes, (v) => setState(() => _prefs = _prefs.copyWith(defaultTaxFreeExpenses: v))),
                                _buildTC('Dept Disbursements', _prefs.defaultDeptDisbursements, expenseCodes, (v) => setState(() => _prefs = _prefs.copyWith(defaultDeptDisbursements: v))),
                                _buildTC('Not Reportable', _prefs.defaultNotReportable, bothCodes, (v) => setState(() => _prefs = _prefs.copyWith(defaultNotReportable: v))),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
            
            const SizedBox(height: 24),
            
            // Bank Accounts
            bankAccountsAsync.when(
              loading: () => const CircularProgressIndicator(),
              error: (err, _) => Text('Error loading accounts: $err'),
              data: (accounts) {
                final displayNames = accounts.map((a) => a.displayName).toList();
                return _buildSection(
                  title: 'Default Bank Accounts',
                  actionBtn: IconButton(
                    icon: const Icon(Icons.edit, size: 20, color: Color(0xFF1A56DB)),
                    tooltip: 'Manage Bank Accounts',
                    onPressed: () => showDialog(context: context, builder: (_) => const BankAccountsDialog()),
                  ),
                  child: Column(
                    children: [
                      _buildTC('Client Account', _prefs.defaultClientAccount, displayNames, (v) => setState(() => _prefs = _prefs.copyWith(defaultClientAccount: v))),
                      _buildTC('Office Account', _prefs.defaultOfficeAccount, displayNames, (v) => setState(() => _prefs = _prefs.copyWith(defaultOfficeAccount: v))),
                      _buildTC('Disbursements', _prefs.defaultDisbursementsAccount, displayNames, (v) => setState(() => _prefs = _prefs.copyWith(defaultDisbursementsAccount: v))),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSection({required String title, required Widget child, Widget? actionBtn}) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade300),
      ),
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(title, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              if (actionBtn != null) ...[const SizedBox(width: 8), actionBtn],
            ],
          ),
          const Divider(height: 32),
          child,
        ],
      ),
    );
  }

  Widget _buildDropdownRow(String label, String? value, List<String> options, ValueChanged<String?> onChanged) {
    return Row(
      children: [
        SizedBox(width: 150, child: Text(label, style: const TextStyle(fontWeight: FontWeight.w500))),
        Expanded(
          child: DropdownButtonFormField<String>(
            value: options.contains(value) ? value : null,
            decoration: const InputDecoration(isDense: true, border: OutlineInputBorder()),
            items: options.map((opt) => DropdownMenuItem(value: opt, child: Text(opt.toUpperCase()))).toList(),
            onChanged: onChanged,
          ),
        ),
      ],
    );
  }

  Widget _buildTC(String label, String? value, List<String> options, ValueChanged<String?> onChanged) {
      return Padding(
        padding: const EdgeInsets.only(bottom: 12),
        child: Row(
          children: [
            SizedBox(width: 150, child: Text(label, style: const TextStyle(fontWeight: FontWeight.w500))),
            Expanded(
              child: DropdownButtonFormField<String>(
                value: options.contains(value) ? value : null,
                decoration: const InputDecoration(isDense: true, border: OutlineInputBorder()),
                items: [
                  const DropdownMenuItem(value: null, child: Text('')),
                  ...options.map((opt) => DropdownMenuItem(value: opt, child: Text(opt))),
                ],
                onChanged: onChanged,
              ),
            ),
          ],
        ),
      );
  }

  Widget _buildTextFieldRow(String label, TextEditingController controller) {
    return Row(
      children: [
        SizedBox(width: 150, child: Text(label, style: const TextStyle(fontWeight: FontWeight.w500))),
        Expanded(
          child: TextFormField(
            controller: controller,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(isDense: true, border: OutlineInputBorder()),
          ),
        ),
      ],
    );
  }
}
