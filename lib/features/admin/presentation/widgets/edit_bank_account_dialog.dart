import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mmdesk/core/models/bank_account_model.dart';
import 'package:mmdesk/features/admin/data/bank_accounts_repository.dart';
import 'package:uuid/uuid.dart';

class EditBankAccountDialog extends ConsumerStatefulWidget {
  final BankAccountModel? bankAccount;
  const EditBankAccountDialog({super.key, this.bankAccount});

  @override
  ConsumerState<EditBankAccountDialog> createState() => _EditBankAccountDialogState();
}

class _EditBankAccountDialogState extends ConsumerState<EditBankAccountDialog> {
  final _formKey = GlobalKey<FormState>();
  final _displayNameController = TextEditingController();
  final _accountNameController = TextEditingController();
  final _accountNumberController = TextEditingController();
  final _bsbController = TextEditingController();
  final _bankNameController = TextEditingController();
  
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    if (widget.bankAccount != null) {
      _displayNameController.text = widget.bankAccount!.displayName;
      _accountNameController.text = widget.bankAccount!.accountName;
      _accountNumberController.text = widget.bankAccount!.accountNumber;
      _bsbController.text = widget.bankAccount!.bsb;
      _bankNameController.text = widget.bankAccount!.bankName ?? '';
    }
  }

  @override
  void dispose() {
    _displayNameController.dispose();
    _accountNameController.dispose();
    _accountNumberController.dispose();
    _bsbController.dispose();
    _bankNameController.dispose();
    super.dispose();
  }

  Future<void> _save() async {
    if (!_formKey.currentState!.validate()) return;
    
    setState(() => _isLoading = true);

    final ba = BankAccountModel(
      id: widget.bankAccount?.id ?? const Uuid().v4(),
      displayName: _displayNameController.text.trim(),
      accountName: _accountNameController.text.trim(),
      accountNumber: _accountNumberController.text.trim(),
      bsb: _bsbController.text.trim(),
      bankName: _bankNameController.text.trim().isEmpty ? null : _bankNameController.text.trim(),
      createdAt: widget.bankAccount?.createdAt ?? DateTime.now(),
      updatedAt: DateTime.now(),
    );

    try {
      final repo = ref.read(bankAccountsRepositoryProvider);
      if (widget.bankAccount != null) {
        await repo.updateBankAccount(ba);
      } else {
        await repo.createBankAccount(ba);
      }
      ref.invalidate(bankAccountsListProvider);
      if (mounted) Navigator.of(context).pop();
    } catch (e) {
      if (mounted) ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Error: $e')));
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
                widget.bankAccount != null ? 'Edit Bank Account' : 'New Bank Account',
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 24),
              TextFormField(
                controller: _displayNameController,
                decoration: const InputDecoration(labelText: 'Display Name (e.g. Office Account)', isDense: true),
                validator: (val) => val == null || val.isEmpty ? 'Required' : null,
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _accountNameController,
                decoration: const InputDecoration(labelText: 'Account Name', isDense: true),
                validator: (val) => val == null || val.isEmpty ? 'Required' : null,
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _bankNameController,
                decoration: const InputDecoration(labelText: 'Bank Name', isDense: true),
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      controller: _bsbController,
                      decoration: const InputDecoration(labelText: 'BSB', isDense: true),
                      validator: (val) => val == null || val.isEmpty ? 'Required' : null,
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    flex: 2,
                    child: TextFormField(
                      controller: _accountNumberController,
                      decoration: const InputDecoration(labelText: 'Account Number', isDense: true),
                      validator: (val) => val == null || val.isEmpty ? 'Required' : null,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(onPressed: () => Navigator.of(context).pop(), child: const Text('Cancel')),
                  const SizedBox(width: 16),
                  ElevatedButton(
                    onPressed: _isLoading ? null : _save,
                    style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFF1A56DB), foregroundColor: Colors.white),
                    child: const Text('Save'),
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
