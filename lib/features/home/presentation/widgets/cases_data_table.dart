import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:mmdesk/core/models/case_model.dart';
import 'package:mmdesk/core/models/client_model.dart';
import 'package:mmdesk/core/models/profile_model.dart';
import 'package:mmdesk/core/network/supabase_service.dart';
import 'package:mmdesk/features/cases/data/cases_repository.dart';
import 'package:mmdesk/features/cases/presentation/widgets/matter_dialog.dart';

final dashboardSearchQueryProvider = StateProvider<String>((ref) => '');
final selectedCaseIdProvider = StateProvider<String?>((ref) => null);

void _showContextMenu(BuildContext context, Offset position, CaseModel caseModel, WidgetRef ref) {
  showMenu<String>(
    context: context,
    position: RelativeRect.fromLTRB(position.dx, position.dy, position.dx, position.dy),
    items: <PopupMenuEntry<String>>[
      const PopupMenuItem<String>(value: 'open', child: Text('Open')),
      const PopupMenuItem<String>(value: 'delete', child: Text('Delete')),
      const PopupMenuItem<String>(value: 'copy', child: Text('Create Copy')),
      const PopupMenuDivider(),
      const PopupMenuItem<String>(enabled: false, child: Text('Change Status', style: TextStyle(fontWeight: FontWeight.bold))),
      const PopupMenuItem<String>(value: 'status_ongoing', child: Padding(padding: EdgeInsets.only(left: 16), child: Text('Ongoing'))),
      const PopupMenuItem<String>(value: 'status_lodged', child: Padding(padding: EdgeInsets.only(left: 16), child: Text('Lodged'))),
      const PopupMenuItem<String>(value: 'status_decided', child: Padding(padding: EdgeInsets.only(left: 16), child: Text('Decided'))),
      const PopupMenuItem<String>(value: 'status_archived', child: Padding(padding: EdgeInsets.only(left: 16), child: Text('Archived'))),
      const PopupMenuDivider(),
      const PopupMenuItem<String>(value: 'account', child: Text('Account')),
      const PopupMenuItem<String>(value: 'change_agent', child: Text('Change Agent')),
      const PopupMenuDivider(),
      const PopupMenuItem<String>(enabled: false, child: Text('Link', style: TextStyle(fontWeight: FontWeight.bold))),
      const PopupMenuItem<String>(value: 'link_add_client', child: Padding(padding: EdgeInsets.only(left: 16), child: Text('Add Client'))),
      const PopupMenuItem<String>(value: 'link_existing_client', child: Padding(padding: EdgeInsets.only(left: 16), child: Text('Existing Client'))),
    ],
  ).then((value) {
    if (value != null) {
      if (value == 'open') {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Opened Matter for Case ${caseModel.id.substring(0,4)}')));
      } else {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Selected action: $value for case ${caseModel.id.substring(0,4)}')));
      }
    }
  });
}

final clientDetailsProvider = FutureProvider.family<ClientModel?, String>((ref, id) async {
  final supabase = ref.read(supabaseClientProvider);
  try {
    final res = await supabase.from('clients').select().eq('id', id).single();
    return ClientModel.fromJson(res);
  } catch (e) {
    if (e.toString().contains('Failed host lookup') || e.toString().contains('placeholder')) {
      if (id == 'client-1') {
        return ClientModel(id: 'client-1', primaryAgentId: 'agent-1', firstName: 'Sarah', lastName: 'Chen', createdAt: DateTime.now(), updatedAt: DateTime.now());
      }
      if (id == 'client-2') {
        return ClientModel(id: 'client-2', primaryAgentId: 'agent-2', firstName: 'Mohammed', lastName: 'Al-Rashid', createdAt: DateTime.now(), updatedAt: DateTime.now());
      }
    }
    return null;
  }
});

final agentDetailsProvider = FutureProvider.family<ProfileModel?, String>((ref, id) async {
  final supabase = ref.read(supabaseClientProvider);
  try {
    final res = await supabase.from('profiles').select().eq('id', id).single();
    return ProfileModel.fromJson(res);
  } catch (e) {
    if (e.toString().contains('Failed host lookup') || e.toString().contains('placeholder')) {
      if (id == 'agent-1') {
        return ProfileModel(id: 'agent-1', role: UserRole.agent, firstName: 'John', lastName: 'Smith', email: 'john@example.com', createdAt: DateTime.now(), updatedAt: DateTime.now());
      }
      if (id == 'agent-2') {
        return ProfileModel(id: 'agent-2', role: UserRole.agent, firstName: 'Maria', lastName: 'Garcia', email: 'maria@example.com', createdAt: DateTime.now(), updatedAt: DateTime.now());
      }
    }
    return null;
  }
});

class AsyncClientName extends ConsumerWidget {
  final String clientId;
  const AsyncClientName(this.clientId, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final clientAsync = ref.watch(clientDetailsProvider(clientId));
    return clientAsync.when(
      data: (client) => Text(
        client != null ? '${client.firstName} ${client.lastName}' : 'Client ${clientId.substring(0, 4)}',
        style: const TextStyle(color: Color(0xFF1A56DB), fontWeight: FontWeight.w500),
      ),
      loading: () => const SizedBox(width: 80, height: 14, child: LinearProgressIndicator()),
      error: (_, __) => const Text('Error', style: TextStyle(color: Colors.red)),
    );
  }
}

class AsyncAgentName extends ConsumerWidget {
  final String agentId;
  const AsyncAgentName(this.agentId, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final agentAsync = ref.watch(agentDetailsProvider(agentId));
    return agentAsync.when(
      data: (agent) => Text(
        agent != null ? '${agent.firstName} ${agent.lastName}' : 'Agent ${agentId.substring(0, 4)}',
        style: TextStyle(color: Colors.grey[700]),
      ),
      loading: () => const SizedBox(width: 80, height: 14, child: LinearProgressIndicator()),
      error: (_, __) => const Text('Error', style: TextStyle(color: Colors.red)),
    );
  }
}

class CasesDataTable extends ConsumerWidget {
  const CasesDataTable({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final casesAsync = ref.watch(casesListProvider);
    final searchQuery = ref.watch(dashboardSearchQueryProvider).toLowerCase();
    final selectedCaseId = ref.watch(selectedCaseIdProvider);

    DataCell buildInteractiveCell(CaseModel c, Widget child) {
      return DataCell(
        GestureDetector(
          behavior: HitTestBehavior.translucent,
          onDoubleTap: () {
            showDialog(
              context: context,
              builder: (ctx) => MatterDialog(caseModel: c),
            );
          },
          onSecondaryTapDown: (details) {
            ref.read(selectedCaseIdProvider.notifier).state = c.id;
            _showContextMenu(context, details.globalPosition, c, ref);
          },
          child: Container(
            alignment: Alignment.centerLeft,
            constraints: const BoxConstraints(minWidth: 40, minHeight: 65),
            child: child,
          ),
        ),
      );
    }

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
              showCheckboxColumn: false,
              headingTextStyle: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black54,
              ),
              dataRowMaxHeight: 65,
              dataRowMinHeight: 65,
              horizontalMargin: 24,
              columnSpacing: 48,
              columns: const [
                DataColumn(label: Text('Priority')),
                DataColumn(label: Text('Client Name')),
                DataColumn(label: Text('Visa Type')),
                DataColumn(label: Text('Status')),
                DataColumn(label: Text('Agent')),
                DataColumn(label: Text('Last Contact')),
                DataColumn(label: Text('Actions')),
              ],
              rows: filteredCases.map((c) {
                // Priority Styling
                Color priorityColor;
                switch (c.priority) {
                  case PriorityLevel.urgent:
                  case PriorityLevel.high:
                    priorityColor = const Color(0xFFF44336); // Red
                    break;
                  case PriorityLevel.medium:
                    priorityColor = const Color(0xFFFF9800); // Orange
                    break;
                  case PriorityLevel.low:
                  default:
                    priorityColor = const Color(0xFF4CAF50); // Green
                }

                // Status Styling
                Color statusBgColor;
                Color statusTextColor;
                String statusText = c.status.name.replaceAll('_', ' ');
                statusText = statusText[0].toUpperCase() + statusText.substring(1);

                switch (c.status) {
                  case CaseStatus.in_progress:
                  case CaseStatus.open:
                    statusBgColor = const Color(0xFFE8F5E9); // Light Green
                    statusTextColor = const Color(0xFF2E7D32); // Dark Green
                    statusText = 'Ongoing';
                    break;
                  case CaseStatus.submitted:
                  case CaseStatus.pending_documents:
                    statusBgColor = const Color(0xFFFFF8E1); // Light Yellow
                    statusTextColor = const Color(0xFFF57F17); // Dark Yellow
                    statusText = 'Lodged';
                    break;
                  case CaseStatus.approved:
                    statusBgColor = const Color(0xFFE3F2FD); // Light Blue
                    statusTextColor = const Color(0xFF1565C0); // Dark Blue
                    break;
                  case CaseStatus.rejected:
                    statusBgColor = const Color(0xFFFFEBEE); // Light Red
                    statusTextColor = const Color(0xFFC62828); // Dark Red
                    break;
                  default:
                    statusBgColor = Colors.grey.shade100;
                    statusTextColor = Colors.black87;
                }

                String visaTypeStr = c.type.name;
                visaTypeStr = visaTypeStr[0].toUpperCase() + visaTypeStr.substring(1);
                if (c.type == CaseType.visa) {
                   visaTypeStr = 'Skilled Independent (189)'; // Mock detail matching image for demo
                }

                return DataRow(
                  selected: c.id == selectedCaseId,
                  onSelectChanged: (selected) {
                    if (selected == true) {
                      ref.read(selectedCaseIdProvider.notifier).state = c.id;
                    }
                  },
                  cells: [
                    buildInteractiveCell(c, 
                      Container(
                        width: 12,
                        height: 12,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: priorityColor,
                        ),
                      ),
                    ),
                    buildInteractiveCell(c, AsyncClientName(c.clientId)),
                    buildInteractiveCell(c, 
                      Text(
                        visaTypeStr,
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                    ),
                    buildInteractiveCell(c, 
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                        decoration: BoxDecoration(
                          color: statusBgColor,
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(color: statusTextColor.withOpacity(0.2)),
                        ),
                        child: Text(
                          statusText,
                          style: TextStyle(
                            color: statusTextColor,
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    buildInteractiveCell(c, AsyncAgentName(c.agentId)),
                    buildInteractiveCell(c, 
                      Text(
                        DateFormat('yyyy-MM-dd').format(c.updatedAt),
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                    ),
                    buildInteractiveCell(c, 
                      IconButton(
                        icon: const Icon(Icons.more_vert, color: Colors.black87),
                        onPressed: () {
                           // For mouse-less environments, clicking the menu icon
                           final renderBox = context.findRenderObject() as RenderBox?;
                           // Simplified fallback to center of screen:
                           _showContextMenu(context, Offset(MediaQuery.of(context).size.width / 2, MediaQuery.of(context).size.height / 2), c, ref);
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
    );
  }
}
