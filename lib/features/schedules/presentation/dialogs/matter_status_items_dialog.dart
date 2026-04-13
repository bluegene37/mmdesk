import 'package:flutter/material.dart';

class MatterStatusItemsDialog extends StatelessWidget {
  const MatterStatusItemsDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      title: Row(
        children: [
          const Icon(Icons.list, color: Colors.blueAccent),
          const SizedBox(width: 12),
          Text(
            'Matter Status Items',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w600),
          ),
        ],
      ),
      content: SizedBox(
        width: 450,
        height: 500,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Text(
                'Matter Status Items',
                style: Theme.of(context).textTheme.titleSmall?.copyWith(color: Colors.blue),
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  _buildRow('Web lead', true),
                  _buildRow('Prospect', false),
                  _buildRow('Initial Consultation', false),
                  _buildRow('Confirmation of Instructions Sent', false),
                  _buildRow('Service Agreement Received', false),
                  _buildRow('Questionnaire Completed', false),
                  _buildRow('Documents Requested', false),
                  _buildRow('Documents Collected', false),
                  _buildRow('Preparing for Lodgement', false),
                  _buildRow('Ready for Lodgement', false),
                  _buildRow('Lodged', false),
                  _buildRow('Processing', false),
                  _buildRow('Decision Received', false),
                  _buildRow('File Inactive', false),
                ],
              ),
            ),
          ],
        ),
      ),
      actions: [
        OutlinedButton.icon(
          onPressed: () {},
          icon: const Icon(Icons.menu, size: 18),
          label: const Text('More'),
        ),
        const Spacer(),
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text('Close', style: TextStyle(color: Colors.red)),
        ),
        ElevatedButton.icon(
          onPressed: () {},
          icon: const Icon(Icons.add, size: 18),
          label: const Text('Add'),
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          ),
        ),
      ],
      actionsPadding: const EdgeInsets.fromLTRB(24, 0, 24, 24),
    );
  }

  Widget _buildRow(String name, bool isSelected, {int indentLevel = 0}) {
    return Container(
      decoration: BoxDecoration(
        color: isSelected ? Colors.blue.shade50 : Colors.transparent,
        borderRadius: BorderRadius.circular(8),
      ),
      margin: EdgeInsets.only(left: indentLevel * 16.0, top: 2, bottom: 2),
      child: ListTile(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        leading: Checkbox(value: isSelected, onChanged: (val) {}),
        title: Text(name, style: const TextStyle(fontSize: 14)),
        hoverColor: Colors.blue.shade50.withOpacity(0.5),
        onTap: () {},
      ),
    );
  }
}
