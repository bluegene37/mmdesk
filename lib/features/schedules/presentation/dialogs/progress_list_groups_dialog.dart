import 'package:flutter/material.dart';

class ProgressListGroupsDialog extends StatelessWidget {
  const ProgressListGroupsDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      title: Row(
        children: [
          const Icon(Icons.list, color: Colors.blueAccent),
          const SizedBox(width: 12),
          Text(
            'Edit Progress Item Group',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w600),
          ),
        ],
      ),
      content: SizedBox(
        width: 400,
        height: 600,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Text(
                'Progress Item Groups',
                style: Theme.of(context).textTheme.titleSmall?.copyWith(color: Colors.blue),
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  _buildRow('Aged Dependent', true),
                  _buildRow('Agreement', false),
                  _buildRow('AAT', false),
                  _buildRow('Australian Ties & Residence', false),
                  _buildRow('Bridging Visa', false),
                  _buildRow('Business', false),
                  _buildRow('Change of Address', false),
                  _buildRow('Child Visa', false),
                  _buildRow('Citizenship', false),
                  _buildRow('Decision', false),
                  _buildRow('Dependent', false),
                  _buildRow('Dependent (>=18yrs)', false),
                  _buildRow('Dependent (<18yrs)', false),
                  _buildRow('Direct', false),
                  _buildRow('Domestic', false),
                  _buildRow('Exchange', false),
                  _buildRow('File Closing', false),
                  _buildRow('Foreign', false),
                  _buildRow('Form', false),
                  _buildRow('Form - Other', false),
                  _buildRow('Government', false),
                  _buildRow('Health', false),
                  _buildRow('Interview Types', false),
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
        const SizedBox(width: 8),
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
          child: const Text('Cancel', style: TextStyle(color: Colors.orange)),
        ),
        ElevatedButton.icon(
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(Icons.save, size: 18),
          label: const Text('Save & Close'),
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
        title: Text(name, style: const TextStyle(fontSize: 14)),
        hoverColor: Colors.blue.shade50.withOpacity(0.5),
        onTap: () {},
      ),
    );
  }
}
