import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mmdesk/core/models/permission_model.dart';
import 'package:uuid/uuid.dart';

class PermissionsScreen extends ConsumerStatefulWidget {
  const PermissionsScreen({super.key});

  @override
  ConsumerState<PermissionsScreen> createState() => _PermissionsScreenState();
}

class _PermissionsScreenState extends ConsumerState<PermissionsScreen> {
  String _selectedShowGroup = 'All';
  String _selectedAccessLevel = 'Full';

  final List<String> _showGroups = ['All', 'Accounts', 'File Notes', 'Admin', 'Cases', 'Clients'];
  final List<String> _accessLevels = ['Full', 'Limited', 'Read Only', 'Custom'];

  List<PermissionEntry> _permissions = [];

  @override
  void initState() {
    super.initState();
    _initializePermissions();
    _applyPreset(_selectedAccessLevel);
  }

  void _initializePermissions() {
    _permissions = [
      // Accounts
      PermissionEntry(id: const Uuid().v4(), group: 'Accounts', name: 'View Invoices', description: 'Can view client invoices'),
      PermissionEntry(id: const Uuid().v4(), group: 'Accounts', name: 'Create Invoices', description: 'Can generate new invoices'),
      PermissionEntry(id: const Uuid().v4(), group: 'Accounts', name: 'Manage Trust Accounts', description: 'Can move money in and out of trust'),
      // File Notes
      PermissionEntry(id: const Uuid().v4(), group: 'File Notes', name: 'View File Notes', description: 'Can read file notes on cases'),
      PermissionEntry(id: const Uuid().v4(), group: 'File Notes', name: 'Create File Notes', description: 'Can add new file notes'),
      PermissionEntry(id: const Uuid().v4(), group: 'File Notes', name: 'Delete File Notes', description: 'Can remove file notes'),
      // Cases
      PermissionEntry(id: const Uuid().v4(), group: 'Cases', name: 'View Cases', description: 'Can view all cases'),
      PermissionEntry(id: const Uuid().v4(), group: 'Cases', name: 'Edit Cases', description: 'Can modify case details'),
      // Admin
      PermissionEntry(id: const Uuid().v4(), group: 'Admin', name: 'Manage Users', description: 'Create, edit, and delete users'),
      PermissionEntry(id: const Uuid().v4(), group: 'Admin', name: 'Firm Preferences', description: 'Modify global firm settings'),
    ];
  }

  void _applyPreset(String level) {
    setState(() {
      _selectedAccessLevel = level;
      for (int i = 0; i < _permissions.length; i++) {
        bool granted = false;
        if (level == 'Full') {
          granted = true;
        } else if (level == 'Limited') {
          // Grant basic view permissions
          granted = _permissions[i].name.startsWith('View') || _permissions[i].name.startsWith('Create');
          // No admin or trust account power
          if (_permissions[i].group == 'Admin' || _permissions[i].name == 'Manage Trust Accounts') granted = false;
        } else if (level == 'Read Only') {
          granted = _permissions[i].name.startsWith('View');
        } else {
          // Custom: leave as is
          return;
        }
        _permissions[i] = _permissions[i].copyWith(isGranted: granted);
      }
    });
  }

  void _togglePermission(int index, bool? value) {
    if (value == null) return;
    setState(() {
      // Find the actual index if filtered
      final pIndex = _permissions.indexWhere((p) => p.id == _filteredPermissions[index].id);
      if (pIndex != -1) {
        _permissions[pIndex] = _permissions[pIndex].copyWith(isGranted: value);
      }
      _selectedAccessLevel = 'Custom';
    });
  }

  List<PermissionEntry> get _filteredPermissions {
    if (_selectedShowGroup == 'All') return _permissions;
    return _permissions.where((p) => p.group == _selectedShowGroup).toList();
  }

  @override
  Widget build(BuildContext context) {
    final displayList = _filteredPermissions;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Permissions', style: TextStyle(fontWeight: FontWeight.bold)),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
        actions: [
          TextButton(
            onPressed: () {
               ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Permissions saved')));
               Navigator.of(context).pop();
            },
            child: const Text('Save Changes', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
          ),
          const SizedBox(width: 16),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Filters Row
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.grey.shade300),
              ),
              child: Row(
                children: [
                  const Text('Show:', style: TextStyle(fontWeight: FontWeight.bold)),
                  const SizedBox(width: 16),
                  SizedBox(
                    width: 200,
                    child: DropdownButtonFormField<String>(
                      value: _selectedShowGroup,
                      decoration: const InputDecoration(isDense: true, border: OutlineInputBorder()),
                      items: _showGroups.map((group) => DropdownMenuItem(
                        value: group,
                        child: Text(group),
                      )).toList(),
                      onChanged: (val) {
                        if (val != null) setState(() => _selectedShowGroup = val);
                      },
                    ),
                  ),
                  const Spacer(),
                  const Text('Access Level Preset:', style: TextStyle(fontWeight: FontWeight.bold)),
                  const SizedBox(width: 16),
                  SizedBox(
                    width: 200,
                    child: DropdownButtonFormField<String>(
                      value: _selectedAccessLevel,
                      decoration: const InputDecoration(isDense: true, border: OutlineInputBorder()),
                      items: _accessLevels.map((lvl) => DropdownMenuItem(
                        value: lvl,
                        child: Text(lvl),
                      )).toList(),
                      onChanged: (val) {
                        if (val != null) _applyPreset(val);
                      },
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            Text(
              '$_selectedShowGroup List of Permissions',
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            Expanded(
              child: Card(
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                  side: const BorderSide(color: Color(0xFFE0E0E0)),
                ),
                child: SingleChildScrollView(
                  child: SizedBox(
                    width: double.infinity,
                    child: DataTable(
                      headingTextStyle: const TextStyle(fontWeight: FontWeight.bold, color: Colors.black54),
                      columns: const [
                        DataColumn(label: Text('Granted')),
                        DataColumn(label: Text('Permission Group')),
                        DataColumn(label: Text('Permission Name')),
                        DataColumn(label: Text('Description')),
                      ],
                      rows: List.generate(displayList.length, (index) {
                        final p = displayList[index];
                        return DataRow(
                          cells: [
                            DataCell(
                              Checkbox(
                                value: p.isGranted,
                                onChanged: (val) => _togglePermission(index, val),
                              ),
                            ),
                            DataCell(Text(p.group)),
                            DataCell(Text(p.name, style: const TextStyle(fontWeight: FontWeight.w500))),
                            DataCell(Text(p.description, style: TextStyle(color: Colors.grey.shade700))),
                          ],
                        );
                      }),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
