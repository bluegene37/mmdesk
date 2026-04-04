import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mmdesk/features/admin/data/bank_accounts_repository.dart';
import 'package:mmdesk/features/admin/presentation/widgets/edit_bank_account_dialog.dart';

class BankAccountsDialog extends ConsumerWidget {
  const BankAccountsDialog({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final accountsAsync = ref.watch(bankAccountsListProvider);

    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Container(
        width: 700,
        height: 500,
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Bank Accounts', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.add_circle, color: Color(0xFF1A56DB)),
                      tooltip: 'New Bank Account',
                      onPressed: () {
                        showDialog(context: context, builder: (_) => const EditBankAccountDialog());
                      },
                    ),
                    IconButton(
                      icon: const Icon(Icons.close),
                      onPressed: () => Navigator.of(context).pop(),
                    ),
                  ],
                ),
              ],
            ),
            const Divider(),
            Expanded(
              child: accountsAsync.when(
                loading: () => const Center(child: CircularProgressIndicator()),
                error: (err, _) => Center(child: Text('Error: $err')),
                data: (accounts) {
                  return SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: DataTable(
                        headingTextStyle: const TextStyle(fontWeight: FontWeight.bold, color: Colors.black54),
                        columns: const [
                          DataColumn(label: Text('Display Name')),
                          DataColumn(label: Text('Account Name')),
                          DataColumn(label: Text('Bank')),
                          DataColumn(label: Text('BSB')),
                          DataColumn(label: Text('Account No.')),
                          DataColumn(label: Text('')),
                        ],
                        rows: accounts.map((ba) {
                          return DataRow(
                            cells: [
                              DataCell(Text(ba.displayName, style: const TextStyle(fontWeight: FontWeight.w500))),
                              DataCell(Text(ba.accountName)),
                              DataCell(Text(ba.bankName ?? '-')),
                              DataCell(Text(ba.bsb)),
                              DataCell(Text(ba.accountNumber)),
                              DataCell(
                                IconButton(
                                  icon: const Icon(Icons.edit, size: 18),
                                  onPressed: () {
                                    showDialog(context: context, builder: (_) => EditBankAccountDialog(bankAccount: ba));
                                  },
                                ),
                              ),
                            ],
                          );
                        }).toList(),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
