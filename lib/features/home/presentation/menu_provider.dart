import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mmdesk/features/auth/data/auth_repository.dart';

class MenuItem {
  final int id;
  final int? parentId;
  final String label;
  final String? actionKey;
  final String? requiredPermission;
  final int sortOrder;

  MenuItem({
    required this.id,
    this.parentId,
    required this.label,
    this.actionKey,
    this.requiredPermission,
    this.sortOrder = 0,
  });

  factory MenuItem.fromJson(Map<String, dynamic> json) {
    return MenuItem(
      id: json['id'] as int,
      parentId: json['parent_id'] as int?,
      label: json['label'] as String,
      actionKey: json['action_key'] as String?,
      requiredPermission: json['required_permission'] as String?,
      sortOrder: json['sort_order'] as int? ?? 0,
    );
  }
}

class MenuNode {
  final MenuItem item;
  final List<MenuNode> children;

  MenuNode(this.item, this.children);
}

// Fetch user's permissions via role_permissions
final userPermissionsProvider = FutureProvider<List<String>>((ref) async {
  final user = ref.watch(currentUserProvider);
  if (user == null) return [];

  final client = ref.watch(supabaseAuthProvider);
  
  // Get role_id
  final roleResp = await client
      .from('user_roles')
      .select('role_id')
      .eq('user_id', user.id)
      .maybeSingle();
      
  if (roleResp == null) return [];
  
  final roleId = roleResp['role_id'];

  // Get permissions for role_id
  final permResp = await client
      .from('role_permissions')
      .select('permission')
      .eq('role_id', roleId);
      
  return (permResp as List).map((e) => e['permission'] as String).toList();
});

final menuItemsProvider = FutureProvider<List<MenuNode>>((ref) async {
  final client = ref.watch(supabaseAuthProvider);
  
  // Await permissions to load properly before evaluating
  final permissions = await ref.watch(userPermissionsProvider.future);

  // Fetch all items
  final response = await client
      .from('menu_items')
      .select()
      .order('sort_order', ascending: true);
      
  final allItems = (response as List).map((e) => MenuItem.fromJson(e)).toList();

  return _buildHierarchy(allItems, null, permissions);
});

List<MenuNode> _buildHierarchy(
  List<MenuItem> allItems,
  int? parentId,
  List<String> permissions,
) {
  final children = allItems.where((item) => item.parentId == parentId).toList();

  // Sort by sortOrder
  children.sort((a, b) => a.sortOrder.compareTo(b.sortOrder));

  final nodes = <MenuNode>[];
  for (final child in children) {
    // Check permission
    if (child.requiredPermission != null &&
        !permissions.contains(child.requiredPermission)) {
      // If the required permission is not in the user's permissions, skip
      continue;
    }

    final childNodes = _buildHierarchy(allItems, child.id, permissions);
    nodes.add(MenuNode(child, childNodes));
  }
  return nodes;
}
