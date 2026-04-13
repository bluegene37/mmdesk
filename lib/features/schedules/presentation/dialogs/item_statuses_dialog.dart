import 'package:flutter/material.dart';

class ItemStatusesDialog extends StatelessWidget {
  const ItemStatusesDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      title: Row(
        children: [
          const Icon(Icons.list_alt, color: Colors.blueAccent),
          const SizedBox(width: 12),
          Text(
            'Item Statuses',
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
            Container(
              padding: const EdgeInsets.all(12),
              margin: const EdgeInsets.only(bottom: 16),
              decoration: BoxDecoration(
                color: Colors.blue.shade50,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.blue.shade100),
              ),
              child: const Text(
                'Entries listed in this window will be made available for selection in the item status dropdown box for Documents, File Notes and Progress items.\n\nNote: You may NOT remove the \'Complete\' item, as it is a preset item which the software depends upon.',
                style: TextStyle(fontSize: 13, color: Colors.black87),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Text(
                'Item Status Items',
                style: Theme.of(context).textTheme.titleSmall?.copyWith(color: Colors.blue),
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  _buildRow('To Do', false),
                  _buildRow('In Progress', false),
                  _buildRow('With Client', false),
                  _buildRow('Awaiting Information', false),
                  _buildRow('To Be Reviewed', false),
                  _buildRow('With Clerk', false),
                  _buildRow('With Manager', false),
                  _buildRow('With Responsible', false),
                  _buildRow('Overdue', true),
                  _buildRow('Not Applicable', false),
                  _buildRow('Complete', false),
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
        hoverColor: Colors.blue.shade50.withOpacity(0.5),
        onTap: () {},
      ),
    );
  }
}
