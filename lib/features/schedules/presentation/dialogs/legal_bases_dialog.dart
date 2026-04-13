import 'package:flutter/material.dart';

class LegalBasesDialog extends StatelessWidget {
  const LegalBasesDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      title: Row(
        children: [
          const Icon(Icons.gavel, color: Colors.blueAccent),
          const SizedBox(width: 12),
          Text(
            'Legal Basis Statuses',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w600),
          ),
        ],
      ),
      content: SizedBox(
        width: 450,
        height: 500,
        child: ListView(
          children: [
            _buildRow('Demand', false),
            _buildRow('In-country', false),
            _buildRow('Assurance policy', false),
            _buildRow('Legal issues summary', false),
            _buildRow('Public list', false),
            _buildRow('Other / Network', true),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {},
          child: const Text('Reset to source MM Templates', style: TextStyle(decoration: TextDecoration.underline)),
        ),
        const Spacer(),
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text('Close'),
        ),
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
      actionsPadding: const EdgeInsets.fromLTRB(24, 0, 24, 24),
    );
  }

  Widget _buildRow(String name, bool isSelected) {
    return Container(
      decoration: BoxDecoration(
        color: isSelected ? Colors.blue.shade50 : Colors.transparent,
        borderRadius: BorderRadius.circular(8),
      ),
      margin: const EdgeInsets.symmetric(vertical: 2),
      child: ListTile(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        leading: Checkbox(value: isSelected, onChanged: (val) {}),
        title: Text(name, style: const TextStyle(fontSize: 14)),
        onTap: () {},
      ),
    );
  }
}
