import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:mmdesk/features/auth/data/auth_repository.dart';
import 'package:mmdesk/features/cases/data/cases_repository.dart';
import 'package:mmdesk/features/home/presentation/widgets/kpi_stat_card.dart';
import 'package:mmdesk/features/home/presentation/widgets/cases_data_table.dart';
import 'package:mmdesk/features/home/presentation/widgets/new_case_dialog.dart';
import 'package:mmdesk/features/home/presentation/firm_setup_provider.dart';
import 'package:mmdesk/features/admin/presentation/users_screen.dart';
import 'package:mmdesk/features/admin/presentation/staff_screen.dart';
import 'package:mmdesk/features/admin/presentation/permissions_screen.dart';
import 'package:mmdesk/features/admin/presentation/preferences_screen.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDesktop = MediaQuery.of(context).size.width > 800;

    return Scaffold(
      appBar: AppBar(
        title: const Text('MMDesk', style: TextStyle(fontWeight: FontWeight.bold)),
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
          )
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(48),
          child: Container(
            color: Colors.white,
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                TextButton(onPressed: () {}, child: const Text('File')),
                TextButton(onPressed: () {}, child: const Text('Schedules')),
                _ToolsMenuButton(),
                TextButton(onPressed: () {}, child: const Text('Help')),
              ],
            ),
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
                        builder: (ctx) => const NewCaseDialog(),
                      );
                    },
                  ),
                  _RibbonButton(icon: Icons.note_add, label: 'Filenotes'),
                  _RibbonButton(icon: Icons.check_circle_outline, label: 'Tasks'),
                  _RibbonButton(icon: Icons.account_balance_wallet, label: 'Accounts'),
                  _RibbonButton(icon: Icons.bar_chart, label: 'Reports'),
                  _RibbonButton(icon: Icons.rate_review, label: 'Review Submitted'),
                  _RibbonButton(icon: Icons.people_outline, label: 'Consultations'),
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
                      ref.read(dashboardSearchQueryProvider.notifier).state = val;
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
                    padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
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
                      Expanded(child: KPIStatCard(title: 'Total Clients', value: '1,245', valueColor: Colors.black)),
                      const SizedBox(width: 16),
                      Expanded(child: KPIStatCard(title: 'Ongoing', value: '342', valueColor: Colors.green)),
                      const SizedBox(width: 16),
                      Expanded(child: KPIStatCard(title: 'Lodged', value: '89', valueColor: Colors.orange)),
                      const SizedBox(width: 16),
                      Expanded(child: KPIStatCard(title: 'Decided', value: '24', valueColor: Colors.blue)),
                    ],
                  );
                } else {
                  return Column(
                     children: [
                        Row(
                          children: [
                            Expanded(child: KPIStatCard(title: 'Total Clients', value: '1,245', valueColor: Colors.black)),
                            const SizedBox(width: 16),
                            Expanded(child: KPIStatCard(title: 'Ongoing', value: '342', valueColor: Colors.green)),
                          ]
                        ),
                        const SizedBox(height: 16),
                        Row(
                          children: [
                            Expanded(child: KPIStatCard(title: 'Lodged', value: '89', valueColor: Colors.orange)),
                            const SizedBox(width: 16),
                            Expanded(child: KPIStatCard(title: 'Decided', value: '24', valueColor: Colors.blue)),
                          ]
                        ),
                     ]
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
            const SizedBox(
              width: double.infinity,
              child: CasesDataTable()
            ),
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

  const _RibbonButton({required this.icon, required this.label, this.onPressed});

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

class _ToolsMenuButton extends ConsumerWidget {
  const _ToolsMenuButton();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return PopupMenuButton<String>(
      tooltip: 'Tools',
      offset: const Offset(0, 40),
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        child: Text('Tools', style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w500)),
      ),
      itemBuilder: (context) => [
        const PopupMenuItem<String>(value: 'firm_setup', child: Text('Firm Setup Guide')),
        const PopupMenuItem<String>(value: 'user_setup', child: Text('User Setup Guide')),
        const PopupMenuItem<String>(value: 'template_setup', child: Text('Template Setup Guide')),
        const PopupMenuDivider(),
        PopupMenuItem<String>(
          value: 'archive',
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [Text('Archive'), Icon(Icons.arrow_right, color: Colors.black54)],
          ),
        ),
        PopupMenuItem<String>(
          value: 'administrative',
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [Text('Administrative'), Icon(Icons.arrow_right, color: Colors.black54)],
          ),
        ),
        const PopupMenuDivider(),
        const PopupMenuItem<String>(value: 'batch_data_import', child: Text('Batch Data Import')),
        PopupMenuItem<String>(
          value: 'batch_vevo',
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [Text('Batch Vevo'), Icon(Icons.arrow_right, color: Colors.black54)],
          ),
        ),
        const PopupMenuItem<String>(value: 'conflict_check', child: Text('Conflict Check')),
        PopupMenuItem<String>(
          value: 'matter_management',
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [Text('Matter Management'), Icon(Icons.arrow_right, color: Colors.black54)],
          ),
        ),
        const PopupMenuItem<String>(value: 'scan_document', child: Text('Scan Document')),
        const PopupMenuItem<String>(value: 'update', child: Text('Update')),
      ],
      onSelected: (value) {
        if (value == 'firm_setup') {
          // Show cascading menu logic using an overlay or another popup
          _showFirmSetupMenu(context, ref);
        } else {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Selected: $value')));
        }
      },
    );
  }

  void _showFirmSetupMenu(BuildContext context, WidgetRef ref) {
    final RenderBox button = context.findRenderObject() as RenderBox;
    final RenderBox overlay = Navigator.of(context).overlay!.context.findRenderObject() as RenderBox;
    final RelativeRect position = RelativeRect.fromRect(
      Rect.fromPoints(
        button.localToGlobal(button.size.bottomRight(Offset.zero), ancestor: overlay),
        button.localToGlobal(button.size.bottomRight(Offset.zero), ancestor: overlay),
      ),
      Offset.zero & overlay.size,
    );

    showMenu<String>(
      context: context,
      position: position,
      items: [
        _buildSetupMenuItem(context, ref, 'Firms and Offices', 'firms_offices'),
        _buildSetupMenuItem(context, ref, 'Users', 'users'),
        _buildSetupMenuItem(context, ref, 'Staff', 'staff'),
        _buildSetupMenuItem(context, ref, 'Permissions', 'permissions'),
        _buildSetupMenuItem(context, ref, 'Preferences', 'preferences'),
      ],
    ).then((value) {
      if (value != null) {
        // Handle navigation based on selection
        switch (value) {
          case 'users':
            Navigator.of(context).push(MaterialPageRoute(builder: (_) => const UsersScreen()));
            break;
          case 'staff':
            Navigator.of(context).push(MaterialPageRoute(builder: (_) => const StaffScreen()));
            break;
          case 'permissions':
            Navigator.of(context).push(MaterialPageRoute(builder: (_) => const PermissionsScreen()));
            break;
          case 'preferences':
            Navigator.of(context).push(MaterialPageRoute(builder: (_) => const PreferencesScreen()));
            break;
          case 'firms_offices':
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Firms and Offices screen placeholder')));
            break;
        }
      }
    });
  }

  PopupMenuItem<String> _buildSetupMenuItem(BuildContext context, WidgetRef ref, String title, String key) {
    final state = ref.read(firmSetupStateProvider);
    final isDone = state[key] == true;

    return PopupMenuItem<String>(
      value: key,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(isDone ? Icons.check : Icons.circle_outlined, color: isDone ? Colors.green : Colors.grey, size: 16),
          const SizedBox(width: 8),
          Text(title),
          const SizedBox(width: 16),
          if (isDone) const Text('Done', style: TextStyle(color: Colors.green, fontSize: 12)),
        ],
      ),
    );
  }
}

