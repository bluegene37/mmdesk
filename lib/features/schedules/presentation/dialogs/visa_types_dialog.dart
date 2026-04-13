import 'package:flutter/material.dart';

class VisaTypesDialog extends StatelessWidget {
  const VisaTypesDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      title: Row(
        children: [
          const Icon(Icons.flight, color: Colors.blueAccent),
          const SizedBox(width: 12),
          Text(
            'Visa Types',
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
              padding: const EdgeInsets.only(bottom: 12.0),
              child: Text(
                'Visa Types Items',
                style: Theme.of(context).textTheme.titleSmall?.copyWith(color: Colors.blue),
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  _buildRow('030 - Bridging (Class C)', false),
                  _buildRow('040 - Bridging (Prospective Applicant)', false),
                  _buildRow('041 - Bridging (Non-applicant)', false),
                  _buildRow('050 - Bridging (General)', false),
                  _buildRow('051 - Bridging (Protection Visa Applicant)', true),
                  _buildRow('060 - Bridging F', false),
                  _buildRow('070 - Bridging (Removal Pending)', false),
                  _buildRow('100 - Partner', false),
                  _buildRow('100 - Spouse', false),
                  _buildRow('101 - Child', false),
                  _buildRow('102 - Adoption', false),
                  _buildRow('103 - Parent', false),
                  _buildRow('105 - Skilled-Australian Linked', false),
                  _buildRow('106 - Regional Linked', false),
                  _buildRow('110 - Interdependency', false),
                  _buildRow('114 - Aged Dependent Relative', false),
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
        title: Text(name, style: const TextStyle(fontSize: 14)),
        hoverColor: Colors.blue.shade50.withOpacity(0.5),
        onTap: () {},
      ),
    );
  }
}
