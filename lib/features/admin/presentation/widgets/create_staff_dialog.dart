import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mmdesk/core/models/staff_model.dart';
import 'package:mmdesk/features/admin/data/staff_repository.dart';
import 'package:uuid/uuid.dart';

class CreateStaffDialog extends ConsumerStatefulWidget {
  final StaffModel? staff;
  const CreateStaffDialog({super.key, this.staff});

  @override
  ConsumerState<CreateStaffDialog> createState() => _CreateStaffDialogState();
}

class _CreateStaffDialogState extends ConsumerState<CreateStaffDialog> {
  final _formKey = GlobalKey<FormState>();
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();
  final _officeController = TextEditingController();
  
  StaffRole _role = StaffRole.agent;
  bool _isActive = true;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    if (widget.staff != null) {
      _firstNameController.text = widget.staff!.firstName;
      _lastNameController.text = widget.staff!.lastName;
      _emailController.text = widget.staff!.email;
      _phoneController.text = widget.staff!.phone ?? '';
      _officeController.text = widget.staff!.office ?? '';
      _role = widget.staff!.role;
      _isActive = widget.staff!.isActive;
    }
  }

  @override
  void dispose() {
    _firstNameController.dispose();
    _lastNameController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    _officeController.dispose();
    super.dispose();
  }

  Future<void> _saveStaff() async {
    if (!_formKey.currentState!.validate()) return;

    setState(() => _isLoading = true);

    final staff = StaffModel(
      id: widget.staff?.id ?? const Uuid().v4(),
      firstName: _firstNameController.text.trim(),
      lastName: _lastNameController.text.trim(),
      email: _emailController.text.trim(),
      phone: _phoneController.text.trim().isEmpty ? null : _phoneController.text.trim(),
      office: _officeController.text.trim().isEmpty ? null : _officeController.text.trim(),
      role: _role,
      isActive: _isActive,
      createdAt: widget.staff?.createdAt ?? DateTime.now(),
      updatedAt: DateTime.now(),
    );

    try {
      final repo = ref.read(staffRepositoryProvider);
      if (widget.staff != null) {
        await repo.updateStaff(staff);
      } else {
        await repo.createStaff(staff);
      }
      ref.invalidate(staffListProvider);
      if (mounted) Navigator.of(context).pop();
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Error saving staff: $e')));
      }
    } finally {
      if (mounted) setState(() => _isLoading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Container(
        width: 450,
        padding: const EdgeInsets.all(24),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.staff != null ? 'Edit Staff Member' : 'Add Staff Member',
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 24),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      controller: _firstNameController,
                      decoration: const InputDecoration(labelText: 'First Name', isDense: true),
                      validator: (val) => val == null || val.isEmpty ? 'Required' : null,
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: TextFormField(
                      controller: _lastNameController,
                      decoration: const InputDecoration(labelText: 'Last Name', isDense: true),
                      validator: (val) => val == null || val.isEmpty ? 'Required' : null,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _emailController,
                decoration: const InputDecoration(labelText: 'Email Address', isDense: true),
                validator: (val) {
                  if (val == null || val.isEmpty) return 'Required';
                  if (!val.contains('@')) return 'Invalid email';
                  return null;
                },
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      controller: _phoneController,
                      decoration: const InputDecoration(labelText: 'Phone (Optional)', isDense: true),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: DropdownButtonFormField<StaffRole>(
                      value: _role,
                      decoration: const InputDecoration(labelText: 'Role', isDense: true),
                      items: StaffRole.values.map((lvl) => DropdownMenuItem(
                        value: lvl,
                        child: Text(lvl.name.toUpperCase()),
                      )).toList(),
                      onChanged: (val) {
                        if (val != null) setState(() => _role = val);
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _officeController,
                decoration: const InputDecoration(labelText: 'Office (Optional)', isDense: true),
              ),
              const SizedBox(height: 16),
              if (widget.staff != null)
                Row(
                  children: [
                    const Text('Status:'),
                    Switch(
                      value: _isActive,
                      onChanged: (val) => setState(() => _isActive = val),
                    ),
                    Text(_isActive ? 'Active' : 'Inactive'),
                  ],
                ),
              const SizedBox(height: 32),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () => Navigator.of(context).pop(),
                    child: const Text('Cancel'),
                  ),
                  const SizedBox(width: 16),
                  ElevatedButton(
                    onPressed: _isLoading ? null : _saveStaff,
                    style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFF1A56DB), foregroundColor: Colors.white),
                    child: _isLoading 
                      ? const SizedBox(width: 20, height: 20, child: CircularProgressIndicator(strokeWidth: 2, color: Colors.white))
                      : Text(widget.staff != null ? 'Save Changes' : 'Add Staff'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
