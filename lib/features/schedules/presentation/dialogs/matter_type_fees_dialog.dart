import 'package:flutter/material.dart';

class MatterTypeFeesDialog extends StatelessWidget {
  const MatterTypeFeesDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      title: Row(
        children: [
          const Icon(Icons.attach_money, color: Colors.blueAccent),
          const SizedBox(width: 12),
          Text(
            'Matter Type Fees',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w600),
          ),
        ],
      ),
      content: SizedBox(
        width: 1200,
        height: 700,
        child: Column(
          children: [

            // Toolbar
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              color: Colors.grey.shade50,
              child: Row(
                children: [
                  const Text('Matter Type', style: TextStyle(fontSize: 12)),
                  const SizedBox(width: 8),
                  SizedBox(
                    width: 200,
                    height: 24,
                    child: DropdownButtonFormField<String>(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        contentPadding: EdgeInsets.symmetric(horizontal: 8),
                        filled: true,
                        fillColor: Colors.white,
                      ),
                      value: 'Select...',
                      items: const [
                        DropdownMenuItem(
                          value: 'Select...',
                          child: Text(
                            'Select...',
                            style: TextStyle(fontSize: 12),
                          ),
                        ),
                      ],
                      onChanged: (v) {},
                    ),
                  ),
                  const SizedBox(width: 16),
                  const Text(
                    'Update selected rows fee item',
                    style: TextStyle(fontSize: 12),
                  ),
                  const SizedBox(width: 8),
                  SizedBox(
                    width: 200,
                    height: 24,
                    child: DropdownButtonFormField<String>(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        contentPadding: EdgeInsets.symmetric(horizontal: 8),
                        filled: true,
                        fillColor: Colors.white,
                      ),
                      value: 'Select...',
                      items: const [
                        DropdownMenuItem(
                          value: 'Select...',
                          child: Text(
                            'Select...',
                            style: TextStyle(fontSize: 12),
                          ),
                        ),
                      ],
                      onChanged: (v) {},
                    ),
                  ),
                  const Spacer(),
                  OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.white,
                      minimumSize: const Size(80, 24),
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                    ),
                    child: const Text(
                      'Update Rows',
                      style: TextStyle(fontSize: 12, color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),

            // Table Header
            Container(
              color: Colors.white,
              child: Row(
                children: [
                  _buildHeaderCell('', flex: 1),
                  _buildHeaderCell('Matter Type', flex: 6),
                  _buildHeaderCell('Primary Applicant \nFee (\$)', flex: 2),
                  _buildHeaderCell('Secondary \nApplicant \nFee (\$)', flex: 2),
                  _buildHeaderCell('Under 18 \nApplicant \nFee (\$)', flex: 2),
                  _buildHeaderCell(
                    'Secondary \nApplicant \nVisa Application \nCharge (\$)',
                    flex: 2,
                  ),
                  _buildHeaderCell(
                    'Primary Applicant \nNon-Internet \nApplication \nCharge (\$)',
                    flex: 2,
                  ),
                  _buildHeaderCell(
                    'Sponsorship \nApplication \nCharge (\$)',
                    flex: 2,
                  ),
                  _buildHeaderCell(
                    'Nomination \nApplication \nCharge (\$)',
                    flex: 2,
                  ),
                  _buildHeaderCell(
                    'Visa Evidence \nApplication \nCharge (\$)',
                    flex: 2,
                  ),
                  _buildHeaderCell('Fee Code', flex: 3),
                  _buildHeaderCell('Disbursement \nCode', flex: 3),
                  _buildHeaderCell('Tax Code', flex: 2),
                ],
              ),
            ),

            // Content
            Expanded(
              child: Container(
                color: Colors.white,
                child: ListView(
                  children: [
                    _buildDataRow('010 - Bridging (Class A)'),
                    _buildDataRow('020 - Bridging (Class B)'),
                    _buildDataRow('030 - Bridging (Class C)'),
                    _buildDataRow('040 - Bridging (Class D)'),
                    _buildDataRow('041 - Bridging (Non-applicant)'),
                    _buildDataRow('050 - Bridging (Class E)'),
                    _buildDataRow('051 - Bridging (Class E)'),
                    _buildDataRow('060 - Bridging (Class F)'),
                    _buildDataRow('070 - Bridging (Class R)'),
                    _buildDataRow('100 - Spouse'),
                    _buildDataRow('101 - Child'),
                    _buildDataRow('102 - Adoption'),
                    _buildDataRow('103 - Parent'),
                    _buildDataRow('114 - Aged Dependent Relative'),
                    _buildDataRow('115 - Remaining Relative'),
                    _buildDataRow('116 - Carer'),
                    _buildDataRow('117 - Orphan Relative'),
                    _buildDataRow('120 - Labour Agreement'),
                    _buildDataRow('121 - Employer Nomination'),
                    _buildDataRow('124 - Distinguished Talent'),
                    _buildDataRow('132 - Business Talent'),
                    _buildDataRow('143 - Contributory Parent'),
                    _buildDataRow('155 - Five Year Resident Return'),
                    _buildDataRow('157 - Three Month Resident Return'),
                    _buildDataRow('159 - Provisional Resident Return'),
                  ],
                ),
              ),
            ),

                  ],
        ),
      ),
      actions: [
        ElevatedButton.icon(
          onPressed: () {},
          icon: const Icon(Icons.add, size: 18),
          label: const Text('Add'),
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          ),
        ),
        const Spacer(),
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text('Close', style: TextStyle(color: Colors.red)),
        ),
      ],
      actionsPadding: const EdgeInsets.fromLTRB(24, 0, 24, 24),
    );
  }

  Widget _buildHeaderCell(String text, {required int flex}) {
    return Expanded(
      flex: flex,
      child: Container(
        height: 60,
        alignment: Alignment.center,
        padding: const EdgeInsets.all(4),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade300),
          color: Colors.grey.shade50,
        ),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.bold,
            color: Colors.blue,
          ),
        ),
      ),
    );
  }

  Widget _buildDataRow(String matterType) {
    return Row(
      children: [
        _buildCheckboxCell(flex: 1),
        _buildTextCell(matterType, flex: 6, isBlue: true),
        _buildTextCell('', flex: 2),
        _buildTextCell('', flex: 2),
        _buildTextCell('', flex: 2),
        _buildTextCell('', flex: 2),
        _buildTextCell('', flex: 2),
        _buildTextCell('', flex: 2),
        _buildTextCell('', flex: 2),
        _buildTextCell('', flex: 2),
        _buildTextCell('', flex: 3),
        _buildTextCell('', flex: 3),
        _buildTextCell('', flex: 2),
      ],
    );
  }

  Widget _buildCheckboxCell({required int flex}) {
    return Expanded(
      flex: flex,
      child: Container(
        height: 24,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade300),
        ),
        child: SizedBox(
          width: 16,
          height: 16,
          child: Checkbox(value: false, onChanged: (v) {}),
        ),
      ),
    );
  }

  Widget _buildTextCell(String text, {required int flex, bool isBlue = false}) {
    return Expanded(
      flex: flex,
      child: Container(
        height: 24,
        padding: const EdgeInsets.symmetric(horizontal: 4),
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade300),
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 11,
            color: isBlue ? Colors.blue : Colors.black87,
          ),
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }
}
