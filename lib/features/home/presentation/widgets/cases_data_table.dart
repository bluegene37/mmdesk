import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mmdesk/features/cases/data/cases_repository.dart';

final dashboardSearchQueryProvider = StateProvider<String>((ref) => '');

class CasesDataTable extends ConsumerWidget {
  const CasesDataTable({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final casesAsync = ref.watch(casesListProvider);
    final searchQuery = ref.watch(dashboardSearchQueryProvider).toLowerCase();

    return Card(
      elevation: 0,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: const BorderSide(color: Color(0xFFE0E0E0)),
      ),
      child: casesAsync.when(
        loading: () => const Center(
          child: Padding(
            padding: EdgeInsets.all(40.0),
            child: CircularProgressIndicator(),
          ),
        ),
        error: (err, stack) => Center(child: Text('Error: $err')),
        data: (cases) {
          final filteredCases = cases.where((c) {
             // In a real app we'd join with the client name.
             // For now we just search by case ID or Type.
            final idMatch = c.id.toLowerCase().contains(searchQuery);
            final typeMatch = c.type.name.toLowerCase().contains(searchQuery);
            return idMatch || typeMatch;
          }).toList();

          if (filteredCases.isEmpty) {
            return const Center(
              child: Padding(
                padding: EdgeInsets.all(40.0),
                child: Text('No cases matching search criteria found.'),
              ),
            );
          }

          return SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: DataTable(
              headingTextStyle: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black54,
              ),
              columns: const [
                DataColumn(label: Text('Priority')),
                DataColumn(label: Text('Case ID / Client')),
                DataColumn(label: Text('Visa Type')),
                DataColumn(label: Text('Status')),
                DataColumn(label: Text('Agent ID')),
                DataColumn(label: Text('Actions')),
              ],
              rows: filteredCases.map((c) {
                Color priorityColor;
                switch (c.priority.name) {
                  case 'urgent':
                  case 'high':
                    priorityColor = Colors.red;
                    break;
                  case 'medium':
                    priorityColor = Colors.orange;
                    break;
                  case 'low':
                  default:
                    priorityColor = Colors.blue;
                }

                return DataRow(
                  cells: [
                    DataCell(
                      Row(
                        children: [
                          Container(
                            width: 10,
                            height: 10,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: priorityColor,
                            ),
                          ),
                          const SizedBox(width: 8),
                          Text(c.priority.name.toUpperCase()),
                        ],
                      ),
                    ),
                    DataCell(
                      Text(
                        'Case ${c.id.substring(0, 8)}',
                        style: const TextStyle(
                          color: Color(0xFF0047FF),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    DataCell(Text(c.type.name.toUpperCase())),
                    DataCell(
                      Chip(
                        label: Text(
                          c.status.name.replaceAll('_', ' ').toUpperCase(),
                          style: const TextStyle(fontSize: 11, fontWeight: FontWeight.bold),
                        ),
                        backgroundColor: Colors.grey.shade100,
                        side: BorderSide.none,
                      ),
                    ),
                    DataCell(Text(c.agentId.substring(0, 8))),
                    DataCell(
                      IconButton(
                        icon: const Icon(Icons.more_horiz),
                        onPressed: () {},
                      ),
                    ),
                  ],
                );
              }).toList(),
            ),
          );
        },
      ),
    );
  }
}
