import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mmdesk/features/admin/data/tax_codes_repository.dart';
import 'package:mmdesk/features/admin/presentation/widgets/edit_tax_code_dialog.dart';

class TaxCodesDialog extends ConsumerWidget {
  const TaxCodesDialog({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final taxCodesAsync = ref.watch(taxCodesListProvider);

    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Container(
        width: 600,
        height: 500,
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Tax Codes', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.add_circle, color: Color(0xFF1A56DB)),
                      tooltip: 'New Tax Code',
                      onPressed: () {
                        showDialog(context: context, builder: (_) => const EditTaxCodeDialog());
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
              child: taxCodesAsync.when(
                loading: () => const Center(child: CircularProgressIndicator()),
                error: (err, _) => Center(child: Text('Error: $err')),
                data: (codes) {
                  return SingleChildScrollView(
                    child: DataTable(
                      headingTextStyle: const TextStyle(fontWeight: FontWeight.bold, color: Colors.black54),
                      columns: const [
                        DataColumn(label: Text('Code')),
                        DataColumn(label: Text('Description')),
                        DataColumn(label: Text('Rate (%)')),
                        DataColumn(label: Text('Income')),
                        DataColumn(label: Text('Expense')),
                        DataColumn(label: Text('')),
                      ],
                      rows: codes.map((tc) {
                        return DataRow(
                          cells: [
                            DataCell(Text(tc.code, style: const TextStyle(fontWeight: FontWeight.w500))),
                            DataCell(Text(tc.description)),
                            DataCell(Text(tc.rate.toStringAsFixed(2))),
                            DataCell(Icon(tc.isIncome ? Icons.check : Icons.close, color: tc.isIncome ? Colors.green : Colors.red, size: 18)),
                            DataCell(Icon(tc.isExpense ? Icons.check : Icons.close, color: tc.isExpense ? Colors.green : Colors.red, size: 18)),
                            DataCell(
                              IconButton(
                                icon: const Icon(Icons.edit, size: 18),
                                onPressed: () {
                                  showDialog(context: context, builder: (_) => EditTaxCodeDialog(taxCode: tc));
                                },
                              ),
                            ),
                          ],
                        );
                      }).toList(),
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
