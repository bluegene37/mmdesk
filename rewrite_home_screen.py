import re

# Read the current file
with open('lib/features/home/presentation/home_screen.dart', 'r') as f:
    content = f.read()

# Replace the Row in the app bar bottom with a MenuBar
content = content.replace('''            child: Row(
              children: [
                const _FileMenuButton(),
                const _SchedulesMenuButton(),
                const _ToolsMenuButton(),
                const _HelpMenuButton(),
              ],
            ),''', '''            child: Theme(
              data: Theme.of(context).copyWith(
                menuTheme: const MenuThemeData(
                  style: MenuStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.white),
                    elevation: MaterialStatePropertyAll(4),
                  ),
                ),
              ),
              child: MenuBar(
                style: const MenuStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.transparent),
                  elevation: MaterialStatePropertyAll(0),
                  padding: MaterialStatePropertyAll(EdgeInsets.zero),
                ),
                children: [
                  const _FileMenuButton(),
                  const _SchedulesMenuButton(),
                  const _ToolsMenuButton(),
                  const _HelpMenuButton(),
                ],
              ),
            ),''')

# We'll completely replace the widget classes at the bottom with their modernized versions.
# Find where `class _FileMenuButton extends ConsumerWidget {` starts.
start_idx = content.find('class _FileMenuButton extends ConsumerWidget {')

header_and_body = content[:start_idx]

modern_classes = """class _FileMenuButton extends ConsumerWidget {
  const _FileMenuButton();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SubmenuButton(
      menuChildren: [
        MenuItemButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Reset Password selected')));
          },
          child: const Text('Reset Password'),
        ),
        MenuItemButton(
          onPressed: () async {
            await ref.read(authRepositoryProvider).signOut();
            if (context.mounted) context.go('/login');
          },
          child: const Text('Re-Login'),
        ),
        MenuItemButton(
          onPressed: () {
            if (Platform.isAndroid || Platform.isIOS) {
              SystemNavigator.pop();
            } else {
              exit(0);
            }
          },
          child: const Text('Exit'),
        ),
      ],
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        child: Text('File', style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w500)),
      ),
    );
  }
}

class _SchedulesMenuButton extends StatelessWidget {
  const _SchedulesMenuButton();

  @override
  Widget build(BuildContext context) {
    return SubmenuButton(
      menuChildren: [
        SubmenuButton(
          menuChildren: [
            MenuItemButton(onPressed: () => _showMessage(context, 'Bank Accounts'), child: const Text('Bank Accounts')),
            MenuItemButton(onPressed: () => _showMessage(context, 'Cost Codes'), child: const Text('Cost Codes')),
            MenuItemButton(onPressed: () => _showMessage(context, 'Disbursement Codes'), child: const Text('Disbursement Codes')),
            MenuItemButton(onPressed: () => _showMessage(context, 'Fee Codes'), child: const Text('Fee Codes')),
            MenuItemButton(onPressed: () => showDialog(context: context, builder: (_) => const MatterTypeFeesDialog()), child: const Text('Matter Type Fees')),
            MenuItemButton(onPressed: () => _showMessage(context, 'Suppliers'), child: const Text('Suppliers')),
            MenuItemButton(onPressed: () => _showMessage(context, 'Tax Codes'), child: const Text('Tax Codes')),
          ],
          child: const Text('Accounts'),
        ),
        MenuItemButton(onPressed: () => _showMessage(context, 'Auto Email Matches'), child: const Text('Auto Email Matches')),
        SubmenuButton(
          menuChildren: [
            MenuItemButton(onPressed: () => _showMessage(context, 'Edit Contact Types'), child: const Text('Edit Contact Types')),
            MenuItemButton(onPressed: () => showDialog(context: context, builder: (_) => const ReactivateContactDialog()), child: const Text('Reactivate Contact Person')),
            MenuItemButton(onPressed: () => showDialog(context: context, builder: (_) => const ViewContactsDialog()), child: const Text('View All Contacts')),
          ],
          child: const Text('Contacts'),
        ),
        MenuItemButton(onPressed: () => showDialog(context: context, builder: (_) => const CustomMergeFieldsDialog()), child: const Text('Custom Merge Fields')),
        SubmenuButton(
          menuChildren: [
            MenuItemButton(onPressed: () => showDialog(context: context, builder: (_) => const CaseOfficersDialog()), child: const Text('Case Officers')),
            MenuItemButton(onPressed: () => showDialog(context: context, builder: (_) => const OfficesDialog()), child: const Text('Offices')),
          ],
          child: const Text('Dept'),
        ),
        MenuItemButton(onPressed: () => showDialog(context: context, builder: (_) => const LegalBasesDialog()), child: const Text('Legal Bases')),
        SubmenuButton(
          menuChildren: [
            MenuItemButton(onPressed: () => showDialog(context: context, builder: (_) => const MatterStatusItemsDialog()), child: const Text('Matter Statuses')),
            MenuItemButton(onPressed: () => showDialog(context: context, builder: (_) => const ItemStatusesDialog()), child: const Text('Item Statuses')),
          ],
          child: const Text('Statuses'),
        ),
        SubmenuButton(
          menuChildren: [
            MenuItemButton(onPressed: () => showDialog(context: context, builder: (_) => const EditMatterTypesDialog()), child: const Text('Edit Matter Types')),
            MenuItemButton(onPressed: () => showDialog(context: context, builder: (_) => const MatterTypeFeesDialog()), child: const Text('Matter Type Fees')),
          ],
          child: const Text('Matter Types'),
        ),
        SubmenuButton(
          menuChildren: [
            MenuItemButton(onPressed: () => showDialog(context: context, builder: (_) => const ConfigureProgressListsDialog()), child: const Text('Configure Progress Lists')),
            MenuItemButton(onPressed: () => showDialog(context: context, builder: (_) => const ProgressListGroupsDialog()), child: const Text('Progress List Groups')),
          ],
          child: const Text('Progress Lists'),
        ),
        MenuItemButton(onPressed: () => showDialog(context: context, builder: (_) => const QuickpartsDialog()), child: const Text('Quickparts')),
        MenuItemButton(onPressed: () => showDialog(context: context, builder: (_) => const ReferralSourcesDialog()), child: const Text('Referral Sources')),
        MenuItemButton(onPressed: () => showDialog(context: context, builder: (_) => const StandardDirectoriesDialog()), child: const Text('Standard Directories')),
        SubmenuButton(
          menuChildren: [
            MenuItemButton(onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => const UsersScreen())), child: const Text('Add/Edit Users')),
            MenuItemButton(onPressed: () => showDialog(context: context, builder: (_) => const StaffPositionsListDialog()), child: const Text('Staff Positions List')),
          ],
          child: const Text('Users'),
        ),
        MenuItemButton(onPressed: () => showDialog(context: context, builder: (_) => const VisaTypesDialog()), child: const Text('Visa Types')),
      ],
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        child: Text('Schedules', style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w500)),
      ),
    );
  }

  void _showMessage(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Selected: $message')));
  }
}

class _ToolsMenuButton extends ConsumerWidget {
  const _ToolsMenuButton();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SubmenuButton(
      menuChildren: [
        SubmenuButton(
          menuChildren: [
            MenuItemButton(onPressed: () => _showFirmSetupMsg(context, 'Firms and Offices'), child: _buildSetupItem(ref, 'Firms and Offices', 'firms_offices')),
            MenuItemButton(onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => const UsersScreen())), child: _buildSetupItem(ref, 'Users', 'users')),
            MenuItemButton(onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => const StaffScreen())), child: _buildSetupItem(ref, 'Staff', 'staff')),
            MenuItemButton(onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => const PermissionsScreen())), child: _buildSetupItem(ref, 'Permissions', 'permissions')),
            MenuItemButton(onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => const PreferencesScreen())), child: _buildSetupItem(ref, 'Preferences', 'preferences')),
          ],
          child: const Text('Firm Setup Guide'),
        ),
        MenuItemButton(onPressed: () => _showMessage(context, 'User Setup Guide'), child: const Text('User Setup Guide')),
        MenuItemButton(onPressed: () => _showMessage(context, 'Template Setup Guide'), child: const Text('Template Setup Guide')),
        // Instead of Divider which doesn't directly fit in menuChildren array perfectly (unless wrapped), we just use a small padding or ignore for now, or use a container. Let's use a standard item.
        MenuItemButton(onPressed: null, child: Container(height: 1, color: Colors.black12)),
        SubmenuButton(menuChildren: [MenuItemButton(onPressed: () => _showMessage(context, 'Archive Item'), child: const Text('Archive Item'))], child: const Text('Archive')),
        SubmenuButton(menuChildren: [MenuItemButton(onPressed: () => _showMessage(context, 'Admin Item'), child: const Text('Admin Item'))], child: const Text('Administrative')),
        MenuItemButton(onPressed: null, child: Container(height: 1, color: Colors.black12)),
        MenuItemButton(onPressed: () => _showMessage(context, 'Batch Data Import'), child: const Text('Batch Data Import')),
        SubmenuButton(menuChildren: [MenuItemButton(onPressed: () => _showMessage(context, 'Vevo Item'), child: const Text('Vevo Item'))], child: const Text('Batch Vevo')),
        MenuItemButton(onPressed: () => _showMessage(context, 'Conflict Check'), child: const Text('Conflict Check')),
        SubmenuButton(menuChildren: [MenuItemButton(onPressed: () => _showMessage(context, 'Matter Item'), child: const Text('Matter Item'))], child: const Text('Matter Management')),
        MenuItemButton(onPressed: () => _showMessage(context, 'Scan Document'), child: const Text('Scan Document')),
        MenuItemButton(onPressed: () => _showMessage(context, 'Update'), child: const Text('Update')),
      ],
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        child: Text('Tools', style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w500)),
      ),
    );
  }

  Widget _buildSetupItem(WidgetRef ref, String title, String key) {
    final state = ref.read(firmSetupStateProvider);
    final isDone = state[key] == true;
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(isDone ? Icons.check : Icons.circle_outlined, color: isDone ? Colors.green : Colors.grey, size: 16),
        const SizedBox(width: 8),
        Text(title),
        if (isDone) const Padding(padding: EdgeInsets.only(left: 16), child: Text('Done', style: TextStyle(color: Colors.green, fontSize: 12))),
      ],
    );
  }

  void _showMessage(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Selected: $message')));
  }

  void _showFirmSetupMsg(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('$message screen placeholder')));
  }
}

class _HelpMenuButton extends StatelessWidget {
  const _HelpMenuButton();

  @override
  Widget build(BuildContext context) {
    return SubmenuButton(
      menuChildren: [
        MenuItemButton(onPressed: () => _showMessage(context, 'Log a Support Call Online'), child: const Text('Log a Support Call Online')),
        MenuItemButton(onPressed: () => _showMessage(context, 'Download Remote Connection Software'), child: const Text('Download Remote Connection Software')),
        MenuItemButton(onPressed: () => _showMessage(context, 'Grant Temporary Data Access To Support'), child: const Text('Grant Temporary Data Access To Support')),
        MenuItemButton(onPressed: null, child: Container(height: 1, color: Colors.black12)),
        MenuItemButton(onPressed: () => _showMessage(context, 'About MM'), child: const Text('About MM')),
        MenuItemButton(onPressed: () => _showMessage(context, 'Book a Training Session'), child: const Text('Book a Training Session')),
        MenuItemButton(onPressed: () => _showMessage(context, 'Check sites accessible'), child: const Text('Check sites accessible')),
        MenuItemButton(onPressed: () => _showMessage(context, 'End User Agreement'), child: const Text('End User Agreement')),
        MenuItemButton(onPressed: () => _showMessage(context, 'Install on another computer'), child: const Text('Install on another computer')),
        MenuItemButton(onPressed: () => _showMessage(context, 'Monitor Background Tasks'), child: const Text('Monitor Background Tasks')),
        MenuItemButton(onPressed: () => _showMessage(context, 'Online Update'), child: const Text('Online Update')),
        MenuItemButton(onPressed: () => _showMessage(context, 'Record eVisa Session'), child: const Text('Record eVisa Session')),
        MenuItemButton(onPressed: () => _showMessage(context, 'Send Memory Usage Report'), child: const Text('Send Memory Usage Report')),
        MenuItemButton(onPressed: () => _showMessage(context, 'System Readiness Report'), child: const Text('System Readiness Report')),
        MenuItemButton(onPressed: () => _showMessage(context, 'User Manual'), child: const Text('User Manual')),
      ],
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        child: Text('Help', style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w500)),
      ),
    );
  }

  void _showMessage(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Selected: $message')));
  }
}
"""

with open('lib/features/home/presentation/home_screen.dart', 'w') as f:
    f.write(header_and_body + modern_classes)

