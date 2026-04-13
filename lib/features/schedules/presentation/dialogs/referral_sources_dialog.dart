import 'package:flutter/material.dart';

class ReferralSourcesDialog extends StatelessWidget {
  const ReferralSourcesDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      title: Row(
        children: [
          const Icon(Icons.people, color: Colors.blueAccent),
          const SizedBox(width: 12),
          Text(
            'Manage Referral Sources',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w600),
          ),
        ],
      ),
      content: SizedBox(
        width: 450,
        height: 500,
        child: Column(
          children: [

            // Content
            Expanded(
              child: Container(
                color: Colors.white,
                child: const Center(
                  child: Text(
                    'Referral Sources List (Empty)',
                    style: TextStyle(color: Colors.black54),
                  ),
                ),
              ),
            ),

                  ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text('Close'),
        ),
      ],
      actionsPadding: const EdgeInsets.fromLTRB(24, 0, 24, 24),
    );
  }
}
