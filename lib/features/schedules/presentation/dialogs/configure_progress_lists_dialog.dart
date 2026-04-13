import 'package:flutter/material.dart';

class ConfigureProgressListsDialog extends StatelessWidget {
  const ConfigureProgressListsDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      title: Row(
        children: [
          const Icon(Icons.list, color: Colors.blueAccent),
          const SizedBox(width: 12),
          Text(
            'Configure Progress Lists',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w600),
          ),
        ],
      ),
      content: SizedBox(
        width: 1100,
        height: 700,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
                    // Groups List
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
                                'Progress Groups',
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
                                  _buildGroupRow('Aged Dependent', false),
                                  _buildGroupRow('Agreement', false),
                                  _buildGroupRow('AAT', false),
                                  _buildGroupRow(
                                    'Business Nominations & Visits',
                                    false,
                                  ),
                                  _buildGroupRow('Business Sponsorship', false),
                                  _buildGroupRow('Citizenship', false),
                                  _buildGroupRow('Compliance', false),
                                  _buildGroupRow('Family Sponsorship', false),
                                  _buildGroupRow('Other', false),
                                  _buildGroupRow('Skills Assessment', false),
                                  _buildGroupRow('Visa Application', true),
                                ],
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(4),
                              color: Colors.grey.shade50,
                              child: Row(
                                children: [
                                  OutlinedButton.icon(
                                    onPressed: () {},
                                    icon: const Icon(Icons.menu, size: 12),
                                    label: const Row(
                                      children: [
                                        Text(
                                          'More',
                                          style: TextStyle(fontSize: 10),
                                        ),
                                        Icon(Icons.arrow_drop_down, size: 14),
                                      ],
                                    ),
                                    style: OutlinedButton.styleFrom(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 4,
                                      ),
                                      minimumSize: const Size(40, 24),
                                    ),
                                  ),
                                  const SizedBox(width: 4),
                                  OutlinedButton.icon(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.add,
                                      color: Colors.green,
                                      size: 12,
                                    ),
                                    label: const Text(
                                      'New Group',
                                      style: TextStyle(fontSize: 10),
                                    ),
                                    style: OutlinedButton.styleFrom(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 4,
                                      ),
                                      minimumSize: const Size(40, 24),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    // Matter Types List
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
                                'Progress List',
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
                                  ),
                                  _buildMatterTypeRow(
                                    '020 - Bridging (Class B)',
                                  ),
                                  _buildMatterTypeRow(
                                    '030 - Bridging (Class C)',
                                  ),
                                  _buildMatterTypeRow(
                                    '040 - Bridging (Class D)',
                                  ),
                                  _buildMatterTypeRow(
                                    '041 - Bridging (Non-applicant)',
                                  ),
                                  _buildMatterTypeRow(
                                    '050 - Bridging (Class E)',
                                  ),
                                  _buildMatterTypeRow(
                                    '051 - Bridging (Class E)',
                                  ),
                                  _buildMatterTypeRow(
                                    '060 - Bridging (Class F)',
                                  ),
                                  _buildMatterTypeRow(
                                    '070 - Bridging (Class R)',
                                  ),
                                  _buildMatterTypeRow('100 - Spouse'),
                                  _buildMatterTypeRow('101 - Child'),
                                  _buildMatterTypeRow('102 - Adoption'),
                                  _buildMatterTypeRow('103 - Parent'),
                                  _buildMatterTypeRow(
                                    '114 - Aged Dependent Relative',
                                  ),
                                  _buildMatterTypeRow(
                                    '115 - Remaining Relative',
                                  ),
                                  _buildMatterTypeRow('116 - Carer'),
                                  _buildMatterTypeRow('117 - Orphan Relative'),
                                  _buildMatterTypeRow('120 - Labour Agreement'),
                                  _buildMatterTypeRow(
                                    '121 - Employer Nomination',
                                  ),
                                  _buildMatterTypeRow(
                                    '124 - Distinguished Talent',
                                  ),
                                  _buildMatterTypeRow('132 - Business Talent'),
                                  _buildMatterTypeRow(
                                    '143 - Contributory Parent',
                                  ),
                                  _buildMatterTypeRow(
                                    '155 - Five Year Resident Return (RRV)',
                                  ),
                                  _buildMatterTypeRow(
                                    '157 - Three Month Resident Return',
                                  ),
                                  _buildMatterTypeRow(
                                    '159 - Provisional Resident Return',
                                  ),
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
                                'Progress Item',
                                style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue,
                                ),
                              ),
                            ),
                            const Expanded(child: SizedBox()),
                            Container(
                              padding: const EdgeInsets.all(4),
                              color: Colors.grey.shade50,
                              child: Row(
                                children: [
                                  OutlinedButton.icon(
                                    onPressed: () {},
                                    icon: const Icon(Icons.menu, size: 12),
                                    label: const Row(
                                      children: [
                                        Text(
                                          'More',
                                          style: TextStyle(fontSize: 10),
                                        ),
                                        Icon(Icons.arrow_drop_down, size: 14),
                                      ],
                                    ),
                                    style: OutlinedButton.styleFrom(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 4,
                                      ),
                                      minimumSize: const Size(40, 24),
                                    ),
                                  ),
                                  const SizedBox(width: 4),
                                  OutlinedButton.icon(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.add,
                                      color: Colors.green,
                                      size: 12,
                                    ),
                                    label: const Text(
                                      'Add Item',
                                      style: TextStyle(fontSize: 10),
                                    ),
                                    style: OutlinedButton.styleFrom(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 4,
                                      ),
                                      minimumSize: const Size(40, 24),
                                    ),
                                  ),
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

  Widget _buildGroupRow(String name, bool isSelected) {
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

  Widget _buildMatterTypeRow(String name) {
    return Container(
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
