import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:mmdesk/core/models/case_model.dart';
import 'package:mmdesk/features/home/presentation/widgets/cases_data_table.dart';

enum MatterRegistrationType { client, prospect, copyExisting }
enum MatterDetailType { migrant, sponsor, business, family }

class MatterDialog extends ConsumerStatefulWidget {
  final CaseModel? caseModel;
  const MatterDialog({super.key, this.caseModel});

  @override
  ConsumerState<MatterDialog> createState() => _MatterDialogState();
}

class _MatterDialogState extends ConsumerState<MatterDialog> {
  final _surnameController = TextEditingController();
  final _givenNameController = TextEditingController();
  final _preferredNameController = TextEditingController();
  final _matterIdController = TextEditingController();
  final _engagementDateController = TextEditingController();

  MatterRegistrationType _regType = MatterRegistrationType.client;
  MatterDetailType _detailType = MatterDetailType.migrant;

  String? _responsibleStaff;
  String? _manager;
  String? _clerk;
  String _office = 'Main';

  @override
  void initState() {
    super.initState();
    _engagementDateController.text = DateFormat('dd/MM/yyyy').format(DateTime.now());

    _surnameController.addListener(_updateMatterId);
    _givenNameController.addListener(_updateMatterId);

    if (widget.caseModel != null) {
      _loadExistingCaseData();
    }
  }

  Future<void> _loadExistingCaseData() async {
    // If we have an existing case, we fetch the client to populate Surname and Given Name.
    final clientAsync = ref.read(clientDetailsProvider(widget.caseModel!.clientId));
    
    // We can await the future provider if we want, or just wait for Riverpod.
    // Since it's a FutureProvider, we can do:
    final client = await ref.read(clientDetailsProvider(widget.caseModel!.clientId).future);
    
    if (client != null && mounted) {
      setState(() {
        _surnameController.text = client.lastName;
        _givenNameController.text = client.firstName;
        // matter id will auto-generate based on the listener.
      });
    }
  }

  @override
  void dispose() {
    _surnameController.dispose();
    _givenNameController.dispose();
    _preferredNameController.dispose();
    _matterIdController.dispose();
    _engagementDateController.dispose();
    super.dispose();
  }

  void _updateMatterId() {
    final surname = _surnameController.text.trim().replaceAll(' ', '').toUpperCase();
    final givenName = _givenNameController.text.trim().replaceAll(' ', '').toUpperCase();

    final surPart = surname.length > 3 ? surname.substring(0, 3) : surname;
    final givPart = givenName.length > 3 ? givenName.substring(0, 3) : givenName;

    if (surPart.isEmpty && givPart.isEmpty) {
      if (_matterIdController.text.isNotEmpty) {
        _matterIdController.text = '';
      }
      return;
    }

    final year = DateTime.now().year.toString().substring(2);
    final newId = '${surPart}_$givPart.$year-00001';

    if (_matterIdController.text != newId) {
      _matterIdController.text = newId;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Container(
        width: 1000,
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Create Matter',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Color(0xFF1A56DB)),
                ),
                IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: () => Navigator.of(context).pop(),
                ),
              ],
            ),
            const Divider(height: 32),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Column 1: Matter Type
                Expanded(
                  flex: 2,
                  child: _buildSection(
                    title: 'Matter Source',
                    child: Column(
                      children: [
                        RadioListTile<MatterRegistrationType>(
                          title: const Text('Client'),
                          value: MatterRegistrationType.client,
                          groupValue: _regType,
                          onChanged: (val) => setState(() => _regType = val!),
                        ),
                        RadioListTile<MatterRegistrationType>(
                          title: const Text('Prospect'),
                          value: MatterRegistrationType.prospect,
                          groupValue: _regType,
                          onChanged: (val) => setState(() => _regType = val!),
                        ),
                        RadioListTile<MatterRegistrationType>(
                          title: const Text('Copy Existing'),
                          value: MatterRegistrationType.copyExisting,
                          groupValue: _regType,
                          onChanged: (val) => setState(() => _regType = val!),
                        ),
                        const SizedBox(height: 16),
                        TextFormField(
                          decoration: const InputDecoration(
                            hintText: 'Search...',
                            prefixIcon: Icon(Icons.search),
                            border: OutlineInputBorder(),
                            isDense: true,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 24),

                // Column 2: Matter Detail
                Expanded(
                  flex: 4,
                  child: _buildSection(
                    title: 'Matter Detail',
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(top: 14.0),
                              child: SizedBox(width: 80, child: Text('Type:', style: TextStyle(fontWeight: FontWeight.w500))),
                            ),
                            Expanded(
                              child: Wrap(
                                spacing: 4,
                                runSpacing: 4,
                                children: [
                                  _buildRadio(MatterDetailType.migrant, 'Migrant'),
                                  _buildRadio(MatterDetailType.sponsor, 'Sponsor'),
                                  _buildRadio(MatterDetailType.business, 'Business'),
                                  _buildRadio(MatterDetailType.family, 'Family'),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),
                        _buildTextFieldRow('Surname', _surnameController),
                        const SizedBox(height: 12),
                        _buildTextFieldRow('Given Names', _givenNameController),
                        const SizedBox(height: 12),
                        _buildTextFieldRow('Preferred Name', _preferredNameController),
                        const SizedBox(height: 12),
                        _buildTextFieldRow('Matter ID', _matterIdController, readOnly: true),
                        const SizedBox(height: 12),
                        _buildTextFieldRow('Engagement Date', _engagementDateController, readOnly: true, isDate: true),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 24),

                // Column 3: Responsible Staff/Office
                Expanded(
                  flex: 3,
                  child: _buildSection(
                    title: 'Responsible Staff / Office',
                    child: Column(
                      children: [
                        _buildDropdownRow('Responsible', _responsibleStaff, ['John Smith', 'Maria Garcia'], (val) => setState(() => _responsibleStaff = val)),
                        const SizedBox(height: 12),
                        _buildDropdownRow('Manager', _manager, ['John Smith', 'Maria Garcia'], (val) => setState(() => _manager = val)),
                        const SizedBox(height: 12),
                        _buildDropdownRow('Clerk', _clerk, ['Clerk 1', 'Clerk 2'], (val) => setState(() => _clerk = val)),
                        const SizedBox(height: 12),
                        _buildDropdownRow('Office', _office, ['Main', 'Branch A', 'Remote'], (val) => setState(() => _office = val ?? 'Main')),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text('Reset'),
                ),
                const Spacer(),
                OutlinedButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: const Text('Cancel'),
                ),
                const SizedBox(width: 16),
                ElevatedButton(
                  onPressed: () {
                    // Logic to save the new matter
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Created Matter: ${_matterIdController.text}')));
                    Navigator.of(context).pop();
                  },
                  style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFF1A56DB), foregroundColor: Colors.white),
                  child: Text(widget.caseModel == null ? 'Create' : 'Save Changes'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSection({required String title, required Widget child}) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
          const Divider(),
          const SizedBox(height: 8),
          child,
        ],
      ),
    );
  }

  Widget _buildRadio(MatterDetailType type, String label) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Radio<MatterDetailType>(
          value: type,
          groupValue: _detailType,
          onChanged: (val) => setState(() => _detailType = val!),
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        ),
        Flexible(child: Text(label, style: const TextStyle(fontSize: 13), overflow: TextOverflow.ellipsis)),
      ],
    );
  }

  Widget _buildTextFieldRow(String label, TextEditingController controller, {bool readOnly = false, bool isDate = false}) {
    return Row(
      children: [
        SizedBox(width: 120, child: Text(label, style: const TextStyle(fontWeight: FontWeight.w500))),
        Expanded(
          child: TextFormField(
            controller: controller,
            readOnly: readOnly,
            decoration: InputDecoration(
              isDense: true,
              filled: readOnly,
              fillColor: readOnly ? Colors.grey.shade100 : Colors.white,
              border: const OutlineInputBorder(),
              suffixIcon: isDate ? const Icon(Icons.calendar_today, size: 20) : null,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildDropdownRow(String label, String? value, List<String> options, ValueChanged<String?> onChanged) {
    return Row(
      children: [
        SizedBox(width: 100, child: Text(label, style: const TextStyle(fontWeight: FontWeight.w500))),
        Expanded(
          child: DropdownButtonFormField<String>(
            value: value,
            decoration: const InputDecoration(
              isDense: true,
              border: OutlineInputBorder(),
              contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            ),
            items: options.map((opt) => DropdownMenuItem(value: opt, child: Text(opt))).toList(),
            onChanged: onChanged,
          ),
        ),
      ],
    );
  }
}
