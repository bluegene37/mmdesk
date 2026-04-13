import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:mmdesk/features/auth/data/auth_repository.dart';
import 'package:mmdesk/features/home/presentation/menu_provider.dart';

// Dialog imports
import 'package:mmdesk/features/schedules/presentation/dialogs/legal_bases_dialog.dart';
import 'package:mmdesk/features/schedules/presentation/dialogs/matter_status_items_dialog.dart';
import 'package:mmdesk/features/schedules/presentation/dialogs/item_statuses_dialog.dart';
import 'package:mmdesk/features/schedules/presentation/dialogs/edit_matter_types_dialog.dart';
import 'package:mmdesk/features/schedules/presentation/dialogs/matter_type_fees_dialog.dart';
import 'package:mmdesk/features/schedules/presentation/dialogs/configure_progress_lists_dialog.dart';
import 'package:mmdesk/features/schedules/presentation/dialogs/progress_list_groups_dialog.dart';
import 'package:mmdesk/features/schedules/presentation/dialogs/quickparts_dialog.dart';
import 'package:mmdesk/features/schedules/presentation/dialogs/referral_sources_dialog.dart';
import 'package:mmdesk/features/schedules/presentation/dialogs/standard_directories_dialog.dart';
import 'package:mmdesk/features/schedules/presentation/dialogs/staff_positions_list_dialog.dart';
import 'package:mmdesk/features/schedules/presentation/dialogs/visa_types_dialog.dart';
import 'package:mmdesk/features/schedules/presentation/dialogs/custom_merge_fields_dialog.dart';
import 'package:mmdesk/features/schedules/presentation/dialogs/case_officers_dialog.dart';
import 'package:mmdesk/features/schedules/presentation/dialogs/offices_dialog.dart';
import 'package:mmdesk/features/contacts/presentation/reactivate_contact_dialog.dart';
import 'package:mmdesk/features/contacts/presentation/view_contacts_dialog.dart';
import 'package:mmdesk/features/admin/presentation/users_screen.dart';
import 'package:mmdesk/features/admin/presentation/staff_screen.dart';
import 'package:mmdesk/features/admin/presentation/permissions_screen.dart';
import 'package:mmdesk/features/admin/presentation/preferences_screen.dart';
import 'package:mmdesk/features/admin/presentation/menu_management_screen.dart';

class DynamicMenuBar extends ConsumerWidget {
  const DynamicMenuBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final menuAsync = ref.watch(menuItemsProvider);

    return menuAsync.when(
      data: (nodes) {
        return Theme(
          data: Theme.of(context).copyWith(
            menuTheme: const MenuThemeData(
              style: MenuStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.white),
                elevation: WidgetStatePropertyAll(4),
              ),
            ),
          ),
          child: MenuBar(
            style: const MenuStyle(
              backgroundColor: WidgetStatePropertyAll(Colors.transparent),
              elevation: WidgetStatePropertyAll(0),
              padding: WidgetStatePropertyAll(EdgeInsets.zero),
            ),
            children: nodes
                .map((n) => _buildMenuNode(context, ref, n, true))
                .toList(),
          ),
        );
      },
      loading: () => const SizedBox(
        height: 48,
        child: Center(child: CircularProgressIndicator()),
      ),
      error: (e, s) => SizedBox(
        height: 48,
        child: Center(child: Text('Error loading menus: $e')),
      ),
    );
  }

  Widget _buildMenuNode(
    BuildContext context,
    WidgetRef ref,
    MenuNode node,
    bool isTopLevel,
  ) {
    if (node.item.label == '-') {
      return MenuItemButton(
        onPressed: null,
        child: Container(height: 1, color: Colors.black12),
      );
    }

    if (node.children.isEmpty) {
      return MenuItemButton(
        onPressed: () =>
            _handleAction(context, ref, node.item.actionKey, node.item.label),
        child: isTopLevel
            ? Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                child: Text(
                  node.item.label,
                  style: const TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              )
            : Text(node.item.label),
      );
    }

    return SubmenuButton(
      menuChildren: node.children
          .map((child) => _buildMenuNode(context, ref, child, false))
          .toList(),
      child: isTopLevel
          ? Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              child: Text(
                node.item.label,
                style: const TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.w500,
                ),
              ),
            )
          : Text(node.item.label),
    );
  }

  void _handleAction(
    BuildContext context,
    WidgetRef ref,
    String? actionKey,
    String label,
  ) async {
    if (actionKey == null) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('Selected: $label')));
      return;
    }

    switch (actionKey) {
      // File
      case 'reset_password':
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Reset Password selected')),
        );
        break;
      case 're_login':
        await ref.read(authRepositoryProvider).signOut();
        if (context.mounted) context.go('/login');
        break;
      case 'exit':
        if (Platform.isAndroid || Platform.isIOS) {
          SystemNavigator.pop();
        } else {
          exit(0);
        }
        break;

      // Schedules
      case 'matter_type_fees':
        showDialog(
          context: context,
          builder: (_) => const MatterTypeFeesDialog(),
        );
        break;
      case 'reactivate_contact_person':
        showDialog(
          context: context,
          builder: (_) => const ReactivateContactDialog(),
        );
        break;
      case 'view_all_contacts':
        showDialog(
          context: context,
          builder: (_) => const ViewContactsDialog(),
        );
        break;
      case 'custom_merge_fields':
        showDialog(
          context: context,
          builder: (_) => const CustomMergeFieldsDialog(),
        );
        break;
      case 'case_officers':
        showDialog(
          context: context,
          builder: (_) => const CaseOfficersDialog(),
        );
        break;
      case 'offices':
        showDialog(context: context, builder: (_) => const OfficesDialog());
        break;
      case 'legal_bases':
        showDialog(context: context, builder: (_) => const LegalBasesDialog());
        break;
      case 'matter_statuses':
        showDialog(
          context: context,
          builder: (_) => const MatterStatusItemsDialog(),
        );
        break;
      case 'item_statuses':
        showDialog(
          context: context,
          builder: (_) => const ItemStatusesDialog(),
        );
        break;
      case 'edit_matter_types':
        showDialog(
          context: context,
          builder: (_) => const EditMatterTypesDialog(),
        );
        break;
      case 'configure_progress_lists':
        showDialog(
          context: context,
          builder: (_) => const ConfigureProgressListsDialog(),
        );
        break;
      case 'progress_list_groups':
        showDialog(
          context: context,
          builder: (_) => const ProgressListGroupsDialog(),
        );
        break;
      case 'quickparts':
        showDialog(context: context, builder: (_) => const QuickpartsDialog());
        break;
      case 'referral_sources':
        showDialog(
          context: context,
          builder: (_) => const ReferralSourcesDialog(),
        );
        break;
      case 'standard_directories':
        showDialog(
          context: context,
          builder: (_) => const StandardDirectoriesDialog(),
        );
        break;
      case 'add_edit_users':
        Navigator.of(
          context,
        ).push(MaterialPageRoute(builder: (_) => const UsersScreen()));
        break;
      case 'staff_positions_list':
        showDialog(
          context: context,
          builder: (_) => const StaffPositionsListDialog(),
        );
        break;
      case 'visa_types':
        showDialog(context: context, builder: (_) => const VisaTypesDialog());
        break;

      // Tools
      case 'firms_offices':
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Firms and Offices placeholder')),
        );
        break;
      case 'users':
        Navigator.of(
          context,
        ).push(MaterialPageRoute(builder: (_) => const UsersScreen()));
        break;
      case 'staff':
        Navigator.of(
          context,
        ).push(MaterialPageRoute(builder: (_) => const StaffScreen()));
        break;
      case 'permissions':
        Navigator.of(
          context,
        ).push(MaterialPageRoute(builder: (_) => const PermissionsScreen()));
        break;
      case 'preferences':
        Navigator.of(
          context,
        ).push(MaterialPageRoute(builder: (_) => const PreferencesScreen()));
        break;
      case 'admin_item': // Let's use 'admin_item' for this
        Navigator.of(
          context,
        ).push(MaterialPageRoute(builder: (_) => const MenuManagementScreen()));
        break;

      // Default (Help items + simple items)
      default:
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text('Selected: $label')));
        break;
    }
  }
}
