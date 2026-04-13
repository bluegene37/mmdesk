import 'package:flutter/material.dart';

class ViewContactsDialog extends StatefulWidget {
  const ViewContactsDialog({super.key});

  @override
  State<ViewContactsDialog> createState() => _ViewContactsDialogState();
}

class _ViewContactsDialogState extends State<ViewContactsDialog>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      title: Row(
        children: [
          const Icon(Icons.contacts, color: Colors.blueAccent),
          const SizedBox(width: 12),
          Text(
            'Contacts',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w600),
          ),
        ],
      ),
      content: SizedBox(
        width: 1200,
        height: 700,
        child: Column(
          children: [
            // Toolbar
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              color: Colors.grey.shade50,
              child: Row(
                children: [
                  OutlinedButton.icon(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.person_add,
                      color: Colors.green,
                      size: 16,
                    ),
                    label: const Text(
                      'Add New Contact',
                      style: TextStyle(color: Colors.black87, fontSize: 12),
                    ),
                    style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.white,
                      side: BorderSide(color: Colors.grey.shade300),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 4,
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  OutlinedButton.icon(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.person_remove,
                      color: Colors.red,
                      size: 16,
                    ),
                    label: const Text(
                      'Remove Contact',
                      style: TextStyle(color: Colors.black87, fontSize: 12),
                    ),
                    style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.white,
                      side: BorderSide(color: Colors.grey.shade300),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 4,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Content Body
            Expanded(
              child: Row(
                children: [
                  // Left Panel
                  Expanded(
                    flex: 1,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border(
                          right: BorderSide(color: Colors.grey.shade300),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(4),
                            color: Colors.grey.shade100,
                            child: const Text(
                              'CONTACTS',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue,
                              ),
                            ),
                          ),
                          Container(
                            color: Colors.grey.shade50,
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.all(4),
                                    decoration: BoxDecoration(
                                      border: Border(
                                        right: BorderSide(
                                          color: Colors.grey.shade300,
                                        ),
                                        bottom: BorderSide(
                                          color: Colors.grey.shade300,
                                        ),
                                      ),
                                    ),
                                    child: const Text(
                                      'Name',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.blue,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    padding: const EdgeInsets.all(4),
                                    decoration: BoxDecoration(
                                      border: Border(
                                        bottom: BorderSide(
                                          color: Colors.grey.shade300,
                                        ),
                                      ),
                                    ),
                                    child: const Text(
                                      'Number',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.blue,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: ListView(
                              children: [
                                _buildContactRow(
                                  'Department of Home Affairs',
                                  '',
                                  true,
                                ),
                                _buildContactRow('Mayne, Matthew', '', false),
                                _buildContactRow('No Name', '', false),
                                _buildContactRow('No Name', '', false),
                                _buildContactRow('No Name', '', false),
                                _buildContactRow('No Name', '', false),
                                _buildContactRow('No Name', '', false),
                              ],
                            ),
                          ),
                          // Filter Section
                          Container(
                            padding: const EdgeInsets.all(4),
                            color: Colors.blue.shade50,
                            child: const Text(
                              'Filter Contacts By',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(8),
                            color: Colors.white,
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    const SizedBox(
                                      width: 40,
                                      child: Text(
                                        'Name:',
                                        style: TextStyle(fontSize: 12),
                                      ),
                                    ),
                                    Expanded(
                                      child: SizedBox(
                                        height: 24,
                                        child: TextField(
                                          decoration: const InputDecoration(
                                            border: OutlineInputBorder(),
                                            contentPadding:
                                                EdgeInsets.symmetric(
                                                  horizontal: 8,
                                                ),
                                          ),
                                          style: const TextStyle(fontSize: 12),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 8),
                                Row(
                                  children: [
                                    const SizedBox(
                                      width: 40,
                                      child: Text(
                                        'Type:',
                                        style: TextStyle(fontSize: 12),
                                      ),
                                    ),
                                    Expanded(
                                      child: SizedBox(
                                        height: 24,
                                        child: DropdownButtonFormField<String>(
                                          decoration: const InputDecoration(
                                            border: OutlineInputBorder(),
                                            contentPadding:
                                                EdgeInsets.symmetric(
                                                  horizontal: 8,
                                                ),
                                          ),
                                          items: const [],
                                          onChanged: (val) {},
                                          iconSize: 16,
                                          isDense: true,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  // Right Panel
                  Expanded(
                    flex: 2,
                    child: Container(
                      color: Colors.white,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                              vertical: 8,
                              horizontal: 16,
                            ),
                            color: Colors.blue.shade50,
                            child: const Text(
                              'Department of Home Affairs',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(4),
                            color: Colors.grey.shade100,
                            child: const Text(
                              'Contact Details',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue,
                              ),
                            ),
                          ),
                          Expanded(
                            child: SingleChildScrollView(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      const Expanded(
                                        flex: 1,
                                        child: Text(
                                          'Surname',
                                          textAlign: TextAlign.right,
                                          style: TextStyle(fontSize: 12),
                                        ),
                                      ),
                                      const SizedBox(width: 8),
                                      const Expanded(
                                        flex: 2,
                                        child: SizedBox(
                                          height: 24,
                                          child: TextField(
                                            decoration: InputDecoration(
                                              border: OutlineInputBorder(),
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 16),
                                      const Expanded(
                                        flex: 1,
                                        child: Text(
                                          'Prefix',
                                          textAlign: TextAlign.right,
                                          style: TextStyle(fontSize: 12),
                                        ),
                                      ),
                                      const SizedBox(width: 8),
                                      const Expanded(
                                        flex: 1,
                                        child: SizedBox(
                                          height: 24,
                                          child: TextField(
                                            decoration: InputDecoration(
                                              border: OutlineInputBorder(),
                                            ),
                                          ),
                                        ),
                                      ),
                                      const Spacer(flex: 1),
                                    ],
                                  ),
                                  const SizedBox(height: 8),
                                  Row(
                                    children: [
                                      const Expanded(
                                        flex: 1,
                                        child: Text(
                                          'Given Names',
                                          textAlign: TextAlign.right,
                                          style: TextStyle(fontSize: 12),
                                        ),
                                      ),
                                      const SizedBox(width: 8),
                                      const Expanded(
                                        flex: 3,
                                        child: SizedBox(
                                          height: 24,
                                          child: TextField(
                                            decoration: InputDecoration(
                                              border: OutlineInputBorder(),
                                            ),
                                          ),
                                        ),
                                      ),
                                      const Spacer(flex: 2),
                                    ],
                                  ),
                                  const SizedBox(height: 8),
                                  Row(
                                    children: [
                                      const Expanded(
                                        flex: 1,
                                        child: Text(
                                          'Preferred Name',
                                          textAlign: TextAlign.right,
                                          style: TextStyle(fontSize: 12),
                                        ),
                                      ),
                                      const SizedBox(width: 8),
                                      const Expanded(
                                        flex: 2,
                                        child: SizedBox(
                                          height: 24,
                                          child: TextField(
                                            decoration: InputDecoration(
                                              border: OutlineInputBorder(),
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 16),
                                      const Expanded(
                                        flex: 1,
                                        child: Text(
                                          'Date of Birth',
                                          textAlign: TextAlign.right,
                                          style: TextStyle(fontSize: 12),
                                        ),
                                      ),
                                      const SizedBox(width: 8),
                                      Expanded(
                                        flex: 2,
                                        child: Row(
                                          children: [
                                            Expanded(
                                              child: Container(
                                                height: 24,
                                                decoration: BoxDecoration(
                                                  border: Border.all(
                                                    color: Colors.grey,
                                                  ),
                                                ),
                                                alignment: Alignment.centerLeft,
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                      horizontal: 8,
                                                    ),
                                                child: const Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      'No Date Set',
                                                      style: TextStyle(
                                                        fontSize: 12,
                                                        color: Colors.grey,
                                                      ),
                                                    ),
                                                    Icon(
                                                      Icons.arrow_drop_down,
                                                      size: 16,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            const SizedBox(width: 4),
                                            SizedBox(
                                              height: 24,
                                              child: OutlinedButton(
                                                onPressed: () {},
                                                child: const Text(
                                                  'Reset',
                                                  style: TextStyle(
                                                    fontSize: 10,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 8),
                                  Row(
                                    children: [
                                      const Expanded(
                                        flex: 1,
                                        child: Text(
                                          'Position',
                                          textAlign: TextAlign.right,
                                          style: TextStyle(fontSize: 12),
                                        ),
                                      ),
                                      const SizedBox(width: 8),
                                      const Expanded(
                                        flex: 5,
                                        child: SizedBox(
                                          height: 24,
                                          child: TextField(
                                            decoration: InputDecoration(
                                              border: OutlineInputBorder(),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 8),
                                  Row(
                                    children: [
                                      const Expanded(
                                        flex: 1,
                                        child: Text(
                                          'Contact Type',
                                          textAlign: TextAlign.right,
                                          style: TextStyle(fontSize: 12),
                                        ),
                                      ),
                                      const SizedBox(width: 8),
                                      Expanded(
                                        flex: 5,
                                        child: Row(
                                          children: [
                                            Expanded(
                                              child: SizedBox(
                                                height: 24,
                                                child: DropdownButtonFormField<String>(
                                                  decoration:
                                                      const InputDecoration(
                                                        border:
                                                            OutlineInputBorder(),
                                                        contentPadding:
                                                            EdgeInsets.symmetric(
                                                              horizontal: 8,
                                                            ),
                                                      ),
                                                  value: 'Supplier',
                                                  items: const [
                                                    DropdownMenuItem(
                                                      value: 'Supplier',
                                                      child: Text(
                                                        'Supplier',
                                                        style: TextStyle(
                                                          fontSize: 12,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                  onChanged: (val) {},
                                                  iconSize: 16,
                                                ),
                                              ),
                                            ),
                                            const SizedBox(width: 8),
                                            const Icon(
                                              Icons.add_circle,
                                              color: Colors.green,
                                              size: 20,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 8),
                                  Row(
                                    children: [
                                      const Expanded(
                                        flex: 1,
                                        child: Text(
                                          'Firm Name',
                                          textAlign: TextAlign.right,
                                          style: TextStyle(fontSize: 12),
                                        ),
                                      ),
                                      const SizedBox(width: 8),
                                      Expanded(
                                        flex: 5,
                                        child: SizedBox(
                                          height: 24,
                                          child: TextField(
                                            controller: TextEditingController(
                                              text:
                                                  'Department of Home Affairs',
                                            ),
                                            decoration: const InputDecoration(
                                              border: OutlineInputBorder(),
                                            ),
                                            style: const TextStyle(
                                              fontSize: 12,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),

                          Container(
                            padding: const EdgeInsets.all(4),
                            color: Colors.grey.shade100,
                            child: const Text(
                              'Contact Address Details',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue,
                              ),
                            ),
                          ),
                          Container(
                            color: Colors.grey.shade50,
                            child: TabBar(
                              controller: _tabController,
                              isScrollable: true,
                              labelColor: Colors.blue,
                              unselectedLabelColor: Colors.black54,
                              labelStyle: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                              tabs: const [
                                Tab(text: 'Contact Numbers'),
                                Tab(text: 'Correspondence'),
                                Tab(text: 'Physical'),
                                Tab(text: 'Firm Details'),
                                Tab(text: 'Additional Addresses'),
                              ],
                            ),
                          ),
                          Expanded(
                            child: TabBarView(
                              controller: _tabController,
                              children: [
                                _buildContactNumbersTab(),
                                const Center(child: Text('Correspondence Tab')),
                                const Center(child: Text('Physical Tab')),
                                const Center(child: Text('Firm Details Tab')),
                                const Center(
                                  child: Text('Additional Addresses Tab'),
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

                  ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text('Cancel'),
        ),
        ElevatedButton.icon(
          onPressed: () {},
          icon: const Icon(Icons.person, size: 18),
          label: const Text('Save Contact'),
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          ),
        ),
      ],
      actionsPadding: const EdgeInsets.fromLTRB(24, 0, 24, 24),
    );
  }

  Widget _buildContactRow(String name, String number, bool isSelected) {
    return Container(
      color: isSelected ? Colors.blue.shade50 : Colors.white,
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                border: Border(
                  right: BorderSide(color: Colors.grey.shade300),
                  bottom: BorderSide(color: Colors.grey.shade300),
                ),
              ),
              child: Row(
                children: [
                  if (isSelected)
                    const Icon(Icons.arrow_right, size: 16)
                  else
                    const SizedBox(width: 16),
                  Expanded(
                    child: Text(name, style: const TextStyle(fontSize: 12)),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.grey.shade300)),
              ),
              child: Text(number, style: const TextStyle(fontSize: 12)),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildContactNumbersTab() {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          _buildPhoneRow('Home Telephone'),
          const SizedBox(height: 8),
          _buildPhoneRow('Work Telephone'),
          const SizedBox(height: 8),
          _buildPhoneRow('Fax'),
          const SizedBox(height: 8),
          Row(
            children: [
              const Expanded(
                flex: 1,
                child: Text(
                  'Mobile/Cell',
                  textAlign: TextAlign.right,
                  style: TextStyle(fontSize: 12),
                ),
              ),
              const SizedBox(width: 8),
              const Expanded(
                flex: 2,
                child: SizedBox(
                  height: 24,
                  child: TextField(
                    decoration: InputDecoration(border: OutlineInputBorder()),
                  ),
                ),
              ),
              const Spacer(flex: 3),
            ],
          ),
          const SizedBox(height: 8),
          _buildEmailRow('Preferred E-mail'),
          const SizedBox(height: 8),
          _buildEmailRow('Alternative E-mail'),
        ],
      ),
    );
  }

  Widget _buildPhoneRow(String label) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Text(
            label,
            textAlign: TextAlign.right,
            style: const TextStyle(fontSize: 12),
          ),
        ),
        const SizedBox(width: 8),
        const Expanded(
          flex: 1,
          child: SizedBox(
            height: 24,
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Country...',
                hintStyle: TextStyle(fontSize: 10, color: Colors.grey),
              ),
            ),
          ),
        ),
        const SizedBox(width: 8),
        const Expanded(
          flex: 1,
          child: SizedBox(
            height: 24,
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Area...',
                hintStyle: TextStyle(fontSize: 10, color: Colors.grey),
              ),
            ),
          ),
        ),
        const SizedBox(width: 8),
        const Expanded(
          flex: 2,
          child: SizedBox(
            height: 24,
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Number...',
                hintStyle: TextStyle(fontSize: 10, color: Colors.grey),
              ),
            ),
          ),
        ),
        const Spacer(flex: 1),
      ],
    );
  }

  Widget _buildEmailRow(String label) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Text(
            label,
            textAlign: TextAlign.right,
            style: const TextStyle(fontSize: 12),
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          flex: 4,
          child: Row(
            children: [
              const Expanded(
                child: SizedBox(
                  height: 24,
                  child: TextField(
                    decoration: InputDecoration(border: OutlineInputBorder()),
                  ),
                ),
              ),
              const SizedBox(width: 8),
              Container(
                width: 24,
                height: 24,
                decoration: BoxDecoration(
                  color: Colors.blue.shade50,
                  border: Border.all(color: Colors.orange),
                ),
                child: const Icon(Icons.email, size: 14, color: Colors.black54),
              ),
            ],
          ),
        ),
        const Spacer(flex: 1),
      ],
    );
  }
}
