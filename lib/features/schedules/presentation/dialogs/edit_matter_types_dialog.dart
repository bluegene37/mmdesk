import 'package:flutter/material.dart';

class EditMatterTypesDialog extends StatelessWidget {
  const EditMatterTypesDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      title: Row(
        children: [
          const Icon(Icons.folder_open, color: Colors.blueAccent),
          const SizedBox(width: 12),
          Text(
            'Edit Matter Types',
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
                                'Category',
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
                                  _buildCategoryRow('Appeal', false),
                                  _buildCategoryRow(
                                    'Business Sponsorship',
                                    false,
                                  ),
                                  _buildCategoryRow('Citizenship', false),
                                  _buildCategoryRow('Consultation', false),
                                  _buildCategoryRow(
                                    'Family Sponsorship',
                                    false,
                                  ),
                                  _buildCategoryRow('MRT', false),
                                  _buildCategoryRow('Other', false),
                                  _buildCategoryRow('Skills Assessment', false),
                                  _buildCategoryRow('Visa Application', true),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    // Matter Types
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
                              padding: const EdgeInsets.all(4),
                              color: Colors.grey.shade50,
                              child: const Text(
                                'Matter Type',
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
                                  _buildMatterTypeRow(
                                    '010 - Bridging (Class A)',
                                    false,
                                  ),
                                  _buildMatterTypeRow(
                                    '020 - Bridging (Class B)',
                                    false,
                                  ),
                                  _buildMatterTypeRow(
                                    '030 - Bridging (Class C)',
                                    false,
                                  ),
                                  _buildMatterTypeRow(
                                    '040 - Bridging (Class D)',
                                    false,
                                  ),
                                  _buildMatterTypeRow(
                                    '041 - Bridging (Non-applicant)',
                                    false,
                                  ),
                                  _buildMatterTypeRow(
                                    '050 - Bridging (Class E)',
                                    false,
                                  ),
                                  _buildMatterTypeRow(
                                    '051 - Bridging (Class E)',
                                    false,
                                  ),
                                  _buildMatterTypeRow(
                                    '060 - Bridging (Class F)',
                                    false,
                                  ),
                                  _buildMatterTypeRow(
                                    '070 - Bridging (Class R)',
                                    false,
                                  ),
                                  _buildMatterTypeRow('100 - Spouse', false),
                                  _buildMatterTypeRow('101 - Child', false),
                                  _buildMatterTypeRow('102 - Adoption', false),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    // Details Placeholder
                    Expanded(
                      flex: 2,
                      child: Container(
                        color: Colors.white,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(4),
                              color: Colors.grey.shade50,
                              child: const Text(
                                'Details',
                                style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue,
                                ),
                              ),
                            ),
                            const Expanded(child: SizedBox()),
                          ],
                        ),
                      ),
                    ),
                  ],
        ),
      ),
      actions: [
        ElevatedButton.icon(
          onPressed: () {},
          icon: const Icon(Icons.save, size: 18),
          label: const Text('Save'),
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

  Widget _buildCategoryRow(String name, bool isSelected) {
    return Container(
      decoration: BoxDecoration(
        color: isSelected ? Colors.blue.shade50 : Colors.transparent,
        borderRadius: BorderRadius.circular(8),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
      child: ListTile(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        title: Text(name, style: const TextStyle(fontSize: 13)),
        hoverColor: Colors.blue.shade50.withOpacity(0.5),
        onTap: () {},
      ),
    );
  }

  Widget _buildMatterTypeRow(String name, bool isSelected) {
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
