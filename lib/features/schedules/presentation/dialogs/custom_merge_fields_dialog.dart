import 'package:flutter/material.dart';

class CustomMergeFieldsDialog extends StatelessWidget {
  const CustomMergeFieldsDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      title: Row(
        children: [
          const Icon(Icons.description, color: Colors.blueAccent),
          const SizedBox(width: 12),
          Text(
            'Custom Merge Fields',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w600),
          ),
        ],
      ),
      content: SizedBox(
        width: 800,
        height: 600,
        child: Column(
          children: [

            // Table Header
            Container(
              color: Colors.grey.shade50,
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        border: Border(
                          right: BorderSide(color: Colors.grey.shade300),
                          bottom: BorderSide(color: Colors.grey.shade300),
                        ),
                      ),
                      child: const Text(
                        'Field Name',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(color: Colors.grey.shade300),
                        ),
                      ),
                      child: const Text(
                        'Field Value',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Content
            Expanded(
              child: Container(
                color: Colors.white,
                child: ListView(
                  children: [
                    _buildRow('AAT Application Refused Case Change', '', false),
                    _buildRow(
                      'Certificate of character (out of time)',
                      '',
                      false,
                    ),
                    _buildRow('English Language Test Change', '', false),
                    _buildRow(
                      'Fee Per Copy RS file',
                      'Due the extra file the charge costs Please Copy (Currently \$ 3000)',
                      true,
                    ),
                    _buildRow('Health Examination Change', '', false),
                    _buildRow('Health Insurance', '', false),
                    _buildRow(
                      'Identity information non-disclosable comment',
                      '',
                      false,
                    ),
                    _buildRow('Old Visa Change/12M Cancellation', '', false),
                    _buildRow('Overseas Police Check Change', '', false),
                    _buildRow(
                      'Superannuation',
                      'Superannuation guidelines... will appear here.',
                      false,
                    ),
                    _buildRow('Translation Per document', '', false),
                    _buildRow('Visa label Change', '', false),
                  ],
                ),
              ),
            ),

                  ],
        ),
      ),
      actionsAlignment: MainAxisAlignment.spaceBetween,
      actions: [
        TextButton(
          onPressed: () {},
          child: const Text('Reset to source MM Templates', style: TextStyle(decoration: TextDecoration.underline)),
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Cancel', style: TextStyle(color: Colors.orange)),
            ),
            const SizedBox(width: 8),
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.save, size: 18),
              label: const Text('Save'),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              ),
            ),
          ],
        ),
      ],
      actionsPadding: const EdgeInsets.fromLTRB(24, 0, 24, 24),
    );
  }

  Widget _buildRow(String name, String value, bool isSelected) {
    return Container(
      decoration: BoxDecoration(
        color: isSelected ? Colors.blue.shade50 : Colors.transparent,
        border: Border(bottom: BorderSide(color: Colors.grey.shade300)),
      ),
      child: ListTile(
        leading: const Icon(Icons.insert_drive_file, color: Colors.blueAccent),
        title: Text(name, style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 14)),
        subtitle: value.isNotEmpty ? Text(value, style: const TextStyle(fontSize: 12, color: Colors.black54)) : null,
        hoverColor: Colors.blue.shade50.withOpacity(0.5),
        onTap: () {},
      ),
    );
  }
}
