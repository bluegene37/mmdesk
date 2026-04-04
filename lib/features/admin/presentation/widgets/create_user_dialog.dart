import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mmdesk/core/models/user_model.dart';
import 'package:mmdesk/features/admin/data/users_repository.dart';
import 'package:uuid/uuid.dart';

class CreateUserDialog extends ConsumerStatefulWidget {
  final UserModel? user;
  const CreateUserDialog({super.key, this.user});

  @override
  ConsumerState<CreateUserDialog> createState() => _CreateUserDialogState();
}

class _CreateUserDialogState extends ConsumerState<CreateUserDialog> {
  final _formKey = GlobalKey<FormState>();
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();
  
  String _accessLevel = 'full';
  bool _isActive = true;
  bool _isLoading = false;

  final List<String> _accessLevels = ['full', 'limited', 'read_only'];

  @override
  void initState() {
    super.initState();
    if (widget.user != null) {
      _firstNameController.text = widget.user!.firstName;
      _lastNameController.text = widget.user!.lastName;
      _emailController.text = widget.user!.email;
      _phoneController.text = widget.user!.phone ?? '';
      _accessLevel = widget.user!.accessLevel;
      _isActive = widget.user!.isActive;
    }
  }

  @override
  void dispose() {
    _firstNameController.dispose();
    _lastNameController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    super.dispose();
  }

  Future<void> _saveUser() async {
    if (!_formKey.currentState!.validate()) return;

    setState(() => _isLoading = true);

    final user = UserModel(
      id: widget.user?.id ?? const Uuid().v4(),
      firstName: _firstNameController.text.trim(),
      lastName: _lastNameController.text.trim(),
      email: _emailController.text.trim(),
      phone: _phoneController.text.trim().isEmpty ? null : _phoneController.text.trim(),
      accessLevel: _accessLevel,
      isActive: _isActive,
      createdAt: widget.user?.createdAt ?? DateTime.now(),
      updatedAt: DateTime.now(),
    );

    try {
      final repo = ref.read(usersRepositoryProvider);
      if (widget.user != null) {
        await repo.updateUser(user);
      } else {
        await repo.createUser(user);
      }
      ref.invalidate(usersListProvider);
      if (mounted) Navigator.of(context).pop();
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Error saving user: $e')));
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
                widget.user != null ? 'Edit User Account' : 'Create a User Account',
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
                    child: DropdownButtonFormField<String>(
                      value: _accessLevel,
                      decoration: const InputDecoration(labelText: 'Access Level', isDense: true),
                      items: _accessLevels.map((lvl) => DropdownMenuItem(
                        value: lvl,
                        child: Text(lvl.toUpperCase()),
                      )).toList(),
                      onChanged: (val) {
                        if (val != null) setState(() => _accessLevel = val);
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              if (widget.user == null)
                TextFormField(
                  decoration: const InputDecoration(labelText: 'Temporary Password', isDense: true),
                  obscureText: true,
                  validator: (val) => val == null || val.isEmpty ? 'Required' : null,
                )
              else
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
                    onPressed: _isLoading ? null : _saveUser,
                    style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFF1A56DB), foregroundColor: Colors.white),
                    child: _isLoading 
                      ? const SizedBox(width: 20, height: 20, child: CircularProgressIndicator(strokeWidth: 2, color: Colors.white))
                      : Text(widget.user != null ? 'Save Changes' : 'Create User'),
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
