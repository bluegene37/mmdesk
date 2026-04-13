import 'package:flutter/material.dart';

class StaffPositionsListDialog extends StatelessWidget {
  const StaffPositionsListDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      title: Row(
        children: [
          const Icon(Icons.badge, color: Colors.blueAccent),
          const SizedBox(width: 12),
          Text(
            'Staff Positions List',
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

            // Info Text
            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.grey.shade100, // Light blue header color
              child: const Text(
                'Entries listed in this window are available for selection in the Position dropdown box when adding/editing user details.',
                style: TextStyle(fontSize: 11, color: Colors.black87),
              ),
            ),

            Container(
              color: Colors.grey.shade50,
              padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
              alignment: Alignment.centerLeft,
              child: const Text(
                'Staff Positions Items',
                style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
            ),

            // Content
            Expanded(
              child: Container(
                color: Colors.white,
                child: ListView(
                  children: [
                    // Empty list as per screenshot
                  ],
                ),
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
          child: const Text('Close', style: TextStyle(color: Colors.red)),
        ),
      ],
      actionsPadding: const EdgeInsets.fromLTRB(24, 0, 24, 24),
    );
  }
}
