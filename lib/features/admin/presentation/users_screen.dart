import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:mmdesk/features/admin/data/users_repository.dart';
import 'package:mmdesk/features/admin/presentation/widgets/create_user_dialog.dart';

class UsersScreen extends ConsumerWidget {
  const UsersScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final usersAsync = ref.watch(usersListProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Users', style: TextStyle(fontWeight: FontWeight.bold)),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Actions Row
            Row(
              children: [
                OutlinedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.edit, size: 18),
                  label: const Text('Edit'),
                ),
                const SizedBox(width: 12),
                OutlinedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.block, size: 18, color: Colors.red),
                  label: const Text('Deactivate User'),
                ),
                const SizedBox(width: 12),
                OutlinedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.restore, size: 18),
                  label: const Text('Reactivate User'),
                ),
                const SizedBox(width: 12),
                OutlinedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.swap_horiz, size: 18),
                  label: const Text('Transfer User Files'),
                ),
                const Spacer(),
                ElevatedButton.icon(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) => const CreateUserDialog(),
                    );
                  },
                  icon: const Icon(Icons.add),
                  label: const Text('Add'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white,
                  ),
                ),
                const SizedBox(width: 12),
                OutlinedButton.icon(
                  onPressed: () => Navigator.of(context).pop(),
                  icon: const Icon(Icons.close, color: Colors.red),
                  label: const Text('Close'),
                ),
              ],
            ),
            const SizedBox(height: 24),
            Expanded(
              child: Card(
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                  side: const BorderSide(color: Color(0xFFE0E0E0)),
                ),
                child: usersAsync.when(
                  loading: () => const Center(child: CircularProgressIndicator()),
                  error: (err, _) => Center(child: Text('Error: $err')),
                  data: (users) {
                    if (users.isEmpty) {
                      return const Center(child: Text('No users found.'));
                    }
                    return SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: DataTable(
                          headingTextStyle: const TextStyle(fontWeight: FontWeight.bold, color: Colors.black54),
                          columns: const [
                            DataColumn(label: Text('User Name')),
                            DataColumn(label: Text('Email')),
                            DataColumn(label: Text('Respo...')),
                            DataColumn(label: Text('Primary Registration No')),
                            DataColumn(label: Text('Primary Registration Type')),
                            DataColumn(label: Text('Business Name')),
                            DataColumn(label: Text('Office Name')),
                          ],
                          rows: users.map((user) {
                            return DataRow(
                              color: WidgetStateProperty.resolveWith<Color?>((states) {
                                // Match the yellow-ish alternating color seen in the screenshot
                                if (users.indexOf(user) % 2 == 0) return const Color(0xFFFFF2CC);
                                return null;
                              }),
                              cells: [
                                DataCell(
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      const Icon(Icons.arrow_right, size: 16),
                                      const SizedBox(width: 4),
                                      Text('${user.lastName}, ${user.firstName}', style: const TextStyle(fontWeight: FontWeight.w500)),
                                    ],
                                  ),
                                ),
                                DataCell(Text(user.email)),
                                DataCell(
                                  Checkbox(
                                    value: user.isResponsible,
                                    onChanged: null, // read-only in table
                                  )
                                ),
                                DataCell(Text(user.primaryRegistrationNo ?? '')),
                                DataCell(Text(user.primaryRegistrationType ?? '')),
                                DataCell(Text(user.businessName ?? '')),
                                DataCell(Text(user.officeName ?? '')),
                              ],
                            );
                          }).toList(),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
