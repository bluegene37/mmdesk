import re

with open('lib/features/home/presentation/home_screen.dart', 'r') as f:
    lines = f.readlines()

new_lines = []
for line in lines:
    if line.startswith("import") and any(x in line for x in [
        'dart:io',
        'cases_repository.dart',
        'firm_setup_provider.dart',
        'admin/presentation/users_screen.dart',
        'admin/presentation/staff_screen.dart',
        'admin/presentation/permissions_screen.dart',
        'admin/presentation/preferences_screen.dart',
        'reactivate_contact_dialog.dart',
        'view_contacts_dialog.dart',
        'custom_merge_fields_dialog.dart',
        'case_officers_dialog.dart',
        'offices_dialog.dart',
        'legal_bases_dialog.dart',
        'matter_status_items_dialog.dart',
        'item_statuses_dialog.dart',
        'edit_matter_types_dialog.dart',
        'matter_type_fees_dialog.dart',
        'configure_progress_lists_dialog.dart',
        'progress_list_groups_dialog.dart',
        'quickparts_dialog.dart',
        'referral_sources_dialog.dart',
        'standard_directories_dialog.dart',
        'staff_positions_list_dialog.dart',
        'visa_types_dialog.dart',
        'flutter/services.dart'
    ]):
        continue
    new_lines.append(line)

with open('lib/features/home/presentation/home_screen.dart', 'w') as f:
    f.writelines(new_lines)
