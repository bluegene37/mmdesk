import 'package:flutter/material.dart';

class StandardDirectoriesDialog extends StatelessWidget {
  const StandardDirectoriesDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      title: Row(
        children: [
          const Icon(Icons.folder, color: Colors.blueAccent),
          const SizedBox(width: 12),
          Text(
            'Standard Directories',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w600),
          ),
        ],
      ),
      content: SizedBox(
        width: 450,
        height: 500,
        child: Column(
          children: [

            // Info Text
            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.grey.shade100, // Light blue header color
              child: const Text(
                'When New client files are added to Migration Manager, directories as shown in this window are added to that client\'s directory in your Client Files directory. System directories are preset and cannot be deleted. You may, however, add any number of directories in the User Defined field.',
                style: TextStyle(fontSize: 11, color: Colors.black87),
              ),
            ),

            Container(
              color: Colors.grey.shade50,
              padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
              alignment: Alignment.centerLeft,
              child: const Text(
                'Directory Items',
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
                    _buildRow('Accounts', false, isSystem: true),
                    _buildRow('Disbursements', false, isSystem: true),
                    _buildRow('Documents', false, isSystem: true),
                    _buildRow('Documents Received', false, isSystem: true),
                    _buildRow('Forms', false, isSystem: true),
                    _buildRow('Letters In', false, isSystem: true),
                    _buildRow('Letters Out', false, isSystem: true),
                  ],
                ),
              ),
            ),

                  ],
        ),
      ),
      actionsAlignment: MainAxisAlignment.spaceBetween,
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
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text('Close', style: TextStyle(color: Colors.red)),
        ),
      ],
      actionsPadding: const EdgeInsets.fromLTRB(24, 0, 24, 24),
    );
  }

  Widget _buildRow(String name, bool isSelected, {bool isSystem = false}) {
    return Container(
      decoration: BoxDecoration(
        color: isSelected ? Colors.blue.shade50 : Colors.transparent,
        borderRadius: BorderRadius.circular(8),
      ),
      margin: const EdgeInsets.symmetric(vertical: 2),
      child: ListTile(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        leading: Icon(isSystem ? Icons.lock : Icons.folder, color: isSystem ? Colors.black38 : Colors.blue),
        title: Text(name, style: TextStyle(fontSize: 14, color: isSystem ? Colors.black38 : Colors.black87)),
        hoverColor: Colors.blue.shade50.withOpacity(0.5),
        onTap: () {},
      ),
    );
  }
}
