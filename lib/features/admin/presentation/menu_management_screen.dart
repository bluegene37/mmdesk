import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mmdesk/features/auth/data/auth_repository.dart';
import 'package:mmdesk/features/home/presentation/menu_provider.dart';

class MenuManagementScreen extends ConsumerWidget {
  const MenuManagementScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Before rendering, ensure the user is an admin
    final roleAsync = ref.watch(userRoleProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu Management'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            tooltip: 'Add Top-Level Menu',
            onPressed: () {
              if (roleAsync.value == 'admin') {
                _showEditDialog(context, ref, null, null);
              }
            },
          ),
        ],
      ),
      body: roleAsync.when(
        data: (role) {
          if (role != 'admin') {
            return const Center(
              child: Text(
                'Access Denied. Admin privileges required.',
                style: TextStyle(color: Colors.red, fontSize: 18),
              ),
            );
          }

          final menuAsync = ref.watch(menuItemsProvider);
          return menuAsync.when(
            data: (nodes) {
              if (nodes.isEmpty) {
                return const Center(child: Text('No menu items found.'));
              }
              return ListView.builder(
                padding: const EdgeInsets.all(16),
                itemCount: nodes.length,
                itemBuilder: (context, index) {
                  final node = nodes[index];
                  return _buildNodeTile(context, ref, node);
                },
              );
            },
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (e, s) => Center(child: Text('Error: $e')),
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, s) => Center(child: Text('Error checking role: $e')),
      ),
    );
  }

  Widget _buildNodeTile(BuildContext context, WidgetRef ref, MenuNode node) {
    if (node.children.isEmpty) {
      return ListTile(
        title: Text(node.item.label),
        subtitle:
            node.item.actionKey != null ? Text(node.item.actionKey!) : null,
        trailing: _buildActions(context, ref, node.item),
      );
    }

    return ExpansionTile(
      title: Text(node.item.label),
      subtitle: node.item.requiredPermission != null
          ? Text('Perm: ${node.item.requiredPermission}')
          : null,
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            icon: const Icon(Icons.add_circle_outline, color: Colors.green),
            tooltip: 'Add Child Item',
            onPressed: () => _showEditDialog(context, ref, null, node.item.id),
          ),
          ..._buildActions(context, ref, node.item).children,
        ],
      ),
      children: node.children.map((child) {
        return Padding(
          padding: const EdgeInsets.only(left: 24.0),
          child: ListTile(
            title: Text(child.item.label),
            subtitle: child.item.actionKey != null
                ? Text(child.item.actionKey!)
                : null,
            trailing: _buildActions(context, ref, child.item),
          ),
        );
      }).toList(),
    );
  }

  Row _buildActions(BuildContext context, WidgetRef ref, MenuItem item) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton(
          icon: const Icon(Icons.edit, color: Colors.blue),
          onPressed: () => _showEditDialog(context, ref, item, item.parentId),
        ),
        IconButton(
          icon: const Icon(Icons.delete, color: Colors.red),
          onPressed: () => _confirmDelete(context, ref, item),
        ),
      ],
    );
  }

  void _showEditDialog(
    BuildContext context,
    WidgetRef ref,
    MenuItem? item,
    int? parentId,
  ) {
    final isNew = item == null;
    final labelCtrl = TextEditingController(text: item?.label);
    final actionCtrl = TextEditingController(text: item?.actionKey);
    final permCtrl = TextEditingController(text: item?.requiredPermission);
    final sortCtrl =
        TextEditingController(text: item?.sortOrder.toString() ?? '0');

    showDialog(
      context: context,
      builder: (ctx) {
        return AlertDialog(
          title: Text(isNew ? 'New Menu Item' : 'Edit Menu Item'),
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  controller: labelCtrl,
                  decoration: const InputDecoration(labelText: 'Label'),
                ),
                TextField(
                  controller: actionCtrl,
                  decoration: const InputDecoration(
                    labelText: 'Action Key (optional)',
                  ),
                ),
                TextField(
                  controller: permCtrl,
                  decoration: const InputDecoration(
                    labelText: 'Required Permission (optional)',
                  ),
                ),
                TextField(
                  controller: sortCtrl,
                  decoration: const InputDecoration(labelText: 'Sort Order'),
                  keyboardType: TextInputType.number,
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(ctx),
              child: const Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: () async {
                final label = labelCtrl.text.trim();
                final action = actionCtrl.text.trim();
                final perm = permCtrl.text.trim();
                final sort = int.tryParse(sortCtrl.text.trim()) ?? 0;

                if (label.isEmpty) return;

                final client = ref.read(supabaseAuthProvider);
                final Map<String, dynamic> data = {
                  'label': label,
                  'action_key': action.isEmpty ? null : action,
                  'required_permission': perm.isEmpty ? null : perm,
                  'sort_order': sort,
                  'parent_id': parentId,
                };

                try {
                  if (isNew) {
                    await client.from('menu_items').insert(data);
                  } else {
                    await client
                        .from('menu_items')
                        .update(data)
                        .eq('id', item.id);
                  }
                  ref.invalidate(menuItemsProvider);
                  if (ctx.mounted) Navigator.pop(ctx);
                } catch (e) {
                  if (ctx.mounted) {
                    ScaffoldMessenger.of(ctx).showSnackBar(
                      SnackBar(content: Text('Error saving: $e')),
                    );
                  }
                }
              },
              child: const Text('Save'),
            ),
          ],
        );
      },
    );
  }

  void _confirmDelete(BuildContext context, WidgetRef ref, MenuItem item) {
    showDialog(
      context: context,
      builder: (ctx) {
        return AlertDialog(
          title: const Text('Confirm Delete'),
          content: Text('Are you sure you want to delete "${item.label}"?'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(ctx),
              child: const Text('Cancel'),
            ),
            TextButton(
              child: const Text('Delete', style: TextStyle(color: Colors.red)),
              onPressed: () async {
                try {
                  final client = ref.read(supabaseAuthProvider);
                  await client.from('menu_items').delete().eq('id', item.id);
                  ref.invalidate(menuItemsProvider);
                  if (ctx.mounted) Navigator.pop(ctx);
                } catch (e) {
                  if (ctx.mounted) {
                    ScaffoldMessenger.of(ctx).showSnackBar(
                      SnackBar(content: Text('Error deleting: $e')),
                    );
                  }
                }
              },
            ),
          ],
        );
      },
    );
  }
}
