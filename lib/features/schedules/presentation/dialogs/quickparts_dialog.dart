import 'package:flutter/material.dart';

class QuickpartsDialog extends StatelessWidget {
  const QuickpartsDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      title: Row(
        children: [
          const Icon(Icons.bolt, color: Colors.amber),
          const SizedBox(width: 12),
          Text(
            'Edit Quickparts',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w600),
          ),
        ],
      ),
      content: SizedBox(
        width: 1000,
        height: 700,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
                    // Categories
                    Expanded(
                      flex: 1,
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border(
                            right: BorderSide(color: Colors.grey.shade300),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(4),
                              color: Colors.grey.shade50,
                              child: const Text(
                                'Categories',
                                style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue,
                                ),
                              ),
                            ),
                            Expanded(
                              child: ListView(
                                children: [
                                  _buildCategoryRow('SHOW ALL', true),
                                  _buildCategoryRow('Partner Migration', false),
                                  _buildCategoryRow('Child Migration', false),
                                  _buildCategoryRow('Parent Migration', false),
                                  _buildCategoryRow(
                                    'Other Family Migration',
                                    false,
                                  ),
                                  _buildCategoryRow(
                                    'Employer Sponsored Migration',
                                    false,
                                  ),
                                  _buildCategoryRow(
                                    'General Skilled Migration',
                                    false,
                                  ),
                                  _buildCategoryRow(
                                    'Business Skills Entry',
                                    false,
                                  ),
                                  _buildCategoryRow('Special Migration', false),
                                  _buildCategoryRow(
                                    'Portal Messaging',
                                    false,
                                    isBold: true,
                                  ),
                                  _buildCategoryRow(
                                    'Portal Signatures',
                                    false,
                                    isBold: true,
                                  ),
                                  _buildCategoryRow('Other', false),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    // Quickparts
                    Expanded(
                      flex: 2,
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border(
                            right: BorderSide(color: Colors.grey.shade300),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 4,
                                vertical: 2,
                              ),
                              color: Colors.grey.shade50,
                              child: Row(
                                children: [
                                  const Expanded(
                                    child: Text(
                                      'Quickpart',
                                      style: TextStyle(
                                        fontSize: 11,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.blue,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 24,
                                    width: 150,
                                    child: TextField(
                                      decoration: const InputDecoration(
                                        border: OutlineInputBorder(),
                                        contentPadding: EdgeInsets.symmetric(
                                          horizontal: 8,
                                        ),
                                        fillColor: Colors.white,
                                        filled: true,
                                      ),
                                      style: const TextStyle(fontSize: 12),
                                    ),
                                  ),
                                  const SizedBox(width: 4),
                                  OutlinedButton(
                                    onPressed: () {},
                                    style: OutlinedButton.styleFrom(
                                      backgroundColor: Colors.white,
                                      minimumSize: const Size(60, 24),
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 8,
                                      ),
                                    ),
                                    child: const Text(
                                      'Find Next',
                                      style: TextStyle(
                                        fontSize: 10,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: ListView(
                                children: [
                                  _buildQuickpartRow('ATTEND:', false),
                                  _buildQuickpartRow('Call From:', false),
                                  _buildQuickpartRow('Call To:', false),
                                  _buildQuickpartRow('MEMO:', false),
                                ],
                              ),
                            ),
                          ],
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

  Widget _buildCategoryRow(
    String name,
    bool isSelected, {
    bool isBold = false,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: isSelected ? Colors.blue.shade50 : Colors.transparent,
        borderRadius: BorderRadius.circular(8),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
      child: ListTile(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        title: Text(name, style: TextStyle(
          fontSize: 13,
          fontWeight: isBold ? FontWeight.w600 : FontWeight.normal,
        )),
        hoverColor: Colors.blue.shade50.withOpacity(0.5),
        onTap: () {},
      ),
    );
  }

  Widget _buildQuickpartRow(String name, bool isSelected) {
    return Container(
      decoration: BoxDecoration(
        color: isSelected ? Colors.blue.shade50 : Colors.transparent,
        borderRadius: BorderRadius.circular(8),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
      child: ListTile(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        title: Text(name, style: const TextStyle(fontSize: 13, color: Colors.blue)),
        hoverColor: Colors.blue.shade50.withOpacity(0.5),
        onTap: () {},
      ),
    );
  }
}
