import 'package:mmdesk/features/home/presentation/widgets/dynamic_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:mmdesk/features/auth/data/auth_repository.dart';
import 'package:mmdesk/features/home/presentation/widgets/kpi_stat_card.dart';
import 'package:mmdesk/features/home/presentation/widgets/cases_data_table.dart';
import 'package:mmdesk/features/cases/presentation/widgets/matter_dialog.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDesktop = MediaQuery.of(context).size.width > 800;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'MMDesk',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            tooltip: 'Sign Out',
            onPressed: () async {
              await ref.read(authRepositoryProvider).signOut();
              if (context.mounted) context.go('/login');
            },
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: CircleAvatar(
              backgroundColor: Colors.white24,
              child: Icon(Icons.person, color: Colors.white),
            ),
          ),
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(48),
          child: Container(
            color: Colors.white,
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: const DynamicMenuBar(),
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Action Ribbon
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  _RibbonButton(
                    icon: Icons.add,
                    label: 'New',
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (ctx) => const MatterDialog(),
                      );
                    },
                  ),
                  _RibbonButton(icon: Icons.note_add, label: 'Filenotes'),
                  _RibbonButton(
                    icon: Icons.check_circle_outline,
                    label: 'Tasks',
                  ),
                  _RibbonButton(
                    icon: Icons.account_balance_wallet,
                    label: 'Accounts',
                  ),
                  _RibbonButton(icon: Icons.bar_chart, label: 'Reports'),
                  _RibbonButton(
                    icon: Icons.rate_review,
                    label: 'Review Submitted',
                  ),
                  _RibbonButton(
                    icon: Icons.people_outline,
                    label: 'Consultations',
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32),

            // Search and Filter Bar
            Row(
              children: [
                Expanded(
                  child: TextField(
                    onChanged: (val) {
                      ref.read(dashboardSearchQueryProvider.notifier).state =
                          val;
                    },
                    decoration: InputDecoration(
                      hintText: 'Search cases or clients...',
                      prefixIcon: const Icon(Icons.search),
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(color: Color(0xFFE0E0E0)),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(color: Color(0xFFE0E0E0)),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                OutlinedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.filter_list),
                  label: const Text('Filter'),
                  style: OutlinedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 16,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    backgroundColor: Colors.white,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 32),

            // KPI Scorecards
            LayoutBuilder(
              builder: (context, constraints) {
                if (isDesktop) {
                  return Row(
                    children: [
                      Expanded(
                        child: KPIStatCard(
                          title: 'Total Clients',
                          value: '1,245',
                          valueColor: Colors.black,
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: KPIStatCard(
                          title: 'Ongoing',
                          value: '342',
                          valueColor: Colors.green,
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: KPIStatCard(
                          title: 'Lodged',
                          value: '89',
                          valueColor: Colors.orange,
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: KPIStatCard(
                          title: 'Decided',
                          value: '24',
                          valueColor: Colors.blue,
                        ),
                      ),
                    ],
                  );
                } else {
                  return Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: KPIStatCard(
                              title: 'Total Clients',
                              value: '1,245',
                              valueColor: Colors.black,
                            ),
                          ),
                          const SizedBox(width: 16),
                          Expanded(
                            child: KPIStatCard(
                              title: 'Ongoing',
                              value: '342',
                              valueColor: Colors.green,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      Row(
                        children: [
                          Expanded(
                            child: KPIStatCard(
                              title: 'Lodged',
                              value: '89',
                              valueColor: Colors.orange,
                            ),
                          ),
                          const SizedBox(width: 16),
                          Expanded(
                            child: KPIStatCard(
                              title: 'Decided',
                              value: '24',
                              valueColor: Colors.blue,
                            ),
                          ),
                        ],
                      ),
                    ],
                  );
                }
              },
            ),
            const SizedBox(height: 32),

            // Data Table
            const Text(
              'Recent Cases',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            const SizedBox(width: double.infinity, child: CasesDataTable()),
          ],
        ),
      ),
    );
  }
}

class _RibbonButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback? onPressed;

  const _RibbonButton({
    required this.icon,
    required this.label,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12.0),
      child: OutlinedButton.icon(
        onPressed: onPressed ?? () {},
        icon: Icon(icon, color: Colors.black54),
        label: Text(label, style: const TextStyle(color: Colors.black87)),
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.white,
          side: const BorderSide(color: Color(0xFFE0E0E0)),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        ),
      ),
    );
  }
}
