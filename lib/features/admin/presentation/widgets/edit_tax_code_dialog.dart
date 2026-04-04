import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mmdesk/core/models/tax_code_model.dart';
import 'package:mmdesk/features/admin/data/tax_codes_repository.dart';
import 'package:uuid/uuid.dart';

class EditTaxCodeDialog extends ConsumerStatefulWidget {
  final TaxCodeModel? taxCode;
  const EditTaxCodeDialog({super.key, this.taxCode});

  @override
  ConsumerState<EditTaxCodeDialog> createState() => _EditTaxCodeDialogState();
}

class _EditTaxCodeDialogState extends ConsumerState<EditTaxCodeDialog> {
  final _formKey = GlobalKey<FormState>();
  final _codeController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _rateController = TextEditingController();
  
  bool _isIncome = false;
  bool _isExpense = false;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    if (widget.taxCode != null) {
      _codeController.text = widget.taxCode!.code;
      _descriptionController.text = widget.taxCode!.description;
      _rateController.text = widget.taxCode!.rate.toStringAsFixed(2);
      _isIncome = widget.taxCode!.isIncome;
      _isExpense = widget.taxCode!.isExpense;
    }
  }

  @override
  void dispose() {
    _codeController.dispose();
    _descriptionController.dispose();
    _rateController.dispose();
    super.dispose();
  }

  Future<void> _save() async {
    if (!_formKey.currentState!.validate()) return;
    
    setState(() => _isLoading = true);

    final tc = TaxCodeModel(
      id: widget.taxCode?.id ?? const Uuid().v4(),
      code: _codeController.text.trim(),
      description: _descriptionController.text.trim(),
      rate: double.tryParse(_rateController.text) ?? 0.0,
      isIncome: _isIncome,
      isExpense: _isExpense,
      createdAt: widget.taxCode?.createdAt ?? DateTime.now(),
      updatedAt: DateTime.now(),
    );

    try {
      final repo = ref.read(taxCodesRepositoryProvider);
      if (widget.taxCode != null) {
        await repo.updateTaxCode(tc);
      } else {
        await repo.createTaxCode(tc);
      }
      ref.invalidate(taxCodesListProvider);
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
        width: 400,
        padding: const EdgeInsets.all(24),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.taxCode != null ? 'Edit Tax Code' : 'New Tax Code',
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 24),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: TextFormField(
                      controller: _codeController,
                      decoration: const InputDecoration(labelText: 'Code', isDense: true),
                      validator: (val) => val == null || val.isEmpty ? 'Req' : null,
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    flex: 2,
                    child: TextFormField(
                      controller: _descriptionController,
                      decoration: const InputDecoration(labelText: 'Description', isDense: true),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _rateController,
                decoration: const InputDecoration(labelText: 'Rate (%)', isDense: true),
                keyboardType: TextInputType.number,
                validator: (val) {
                  if (val == null || val.isEmpty) return 'Required';
                  if (double.tryParse(val) == null) return 'Must be number';
                  return null;
                },
              ),
              const SizedBox(height: 16),
              CheckboxListTile(
                title: const Text('Applies to Income'),
                controlAffinity: ListTileControlAffinity.leading,
                contentPadding: EdgeInsets.zero,
                value: _isIncome,
                onChanged: (val) => setState(() => _isIncome = val ?? false),
              ),
              CheckboxListTile(
                title: const Text('Applies to Expenses'),
                controlAffinity: ListTileControlAffinity.leading,
                contentPadding: EdgeInsets.zero,
                value: _isExpense,
                onChanged: (val) => setState(() => _isExpense = val ?? false),
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
