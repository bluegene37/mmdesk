import 'package:flutter/material.dart';

class CaseOfficersDialog extends StatelessWidget {
  const CaseOfficersDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      title: Row(
        children: [
          const Icon(Icons.person, color: Colors.blueAccent),
          const SizedBox(width: 12),
          Text(
            'Dept Case Officer',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w600),
          ),
        ],
      ),
      content: SizedBox(
        width: 450,
        height: 600,
        child: Column(
          children: [
            // Content
            Expanded(
              child: Container(
                color: Colors.grey.shade50,
                padding: const EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    // Toolbar
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        OutlinedButton(
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                            backgroundColor: Colors.white,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 0,
                            ),
                            minimumSize: const Size(60, 24),
                          ),
                          child: const Text(
                            'New',
                            style: TextStyle(color: Colors.black, fontSize: 12),
                          ),
                        ),
                        OutlinedButton(
                          onPressed: () => Navigator.of(context).pop(),
                          style: OutlinedButton.styleFrom(
                            backgroundColor: Colors.white,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 0,
                            ),
                            minimumSize: const Size(60, 24),
                          ),
                          child: const Text(
                            'Close',
                            style: TextStyle(color: Colors.black, fontSize: 12),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),

                    // Table Header
                    Container(
                      color: Colors.white,
                      child: Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Container(
                              padding: const EdgeInsets.all(4),
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey.shade300),
                              ),
                              child: const Text(
                                'Initial',
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Container(
                              padding: const EdgeInsets.all(4),
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey.shade300),
                              ),
                              child: const Text(
                                'Surname',
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Container(
                              padding: const EdgeInsets.all(4),
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey.shade300),
                              ),
                              child: const Text(
                                'Given Name',
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    // Table Body (Empty Area)
                    Expanded(
                      flex: 1,
                      child: Container(
                        color: Colors.grey[400],
                        child: const Align(
                          alignment: Alignment.bottomRight,
                          child: Icon(
                            Icons.signal_cellular_4_bar,
                            size: 12,
                            color: Colors.black54,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),

                    // New Checkbox
                    Row(
                      children: [
                        SizedBox(
                          width: 20,
                          height: 20,
                          child: Checkbox(value: false, onChanged: (val) {}),
                        ),
                        const SizedBox(width: 4),
                        const Text('New', style: TextStyle(fontSize: 12)),
                      ],
                    ),

                    // Details Form
                    const Text('Details', style: TextStyle(fontSize: 12)),
                    const SizedBox(height: 4),
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade300),
                        color: Colors.grey.shade50,
                      ),
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
                                  height: 20,
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      contentPadding: EdgeInsets.zero,
                                      fillColor: Colors.white,
                                      filled: true,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 4),
                          Row(
                            children: [
                              const Expanded(
                                flex: 1,
                                child: Text(
                                  'Given Name',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(fontSize: 12),
                                ),
                              ),
                              const SizedBox(width: 8),
                              const Expanded(
                                flex: 2,
                                child: SizedBox(
                                  height: 20,
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      contentPadding: EdgeInsets.zero,
                                      fillColor: Colors.white,
                                      filled: true,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 4),
                          Row(
                            children: [
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
                                  height: 20,
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      contentPadding: EdgeInsets.zero,
                                      fillColor: Colors.white,
                                      filled: true,
                                    ),
                                  ),
                                ),
                              ),
                              const Spacer(flex: 1),
                            ],
                          ),
                          const SizedBox(height: 8),
                          // Phone numbers section
                          Row(
                            children: [
                              const Expanded(flex: 1, child: SizedBox()),
                              const SizedBox(width: 8),
                              Expanded(
                                flex: 2,
                                child: Row(
                                  children: const [
                                    Expanded(
                                      flex: 1,
                                      child: Text(
                                        'Country',
                                        style: TextStyle(fontSize: 10),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Text(
                                        'Area',
                                        style: TextStyle(fontSize: 10),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 2,
                                      child: Text(
                                        'Number',
                                        style: TextStyle(fontSize: 10),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          _buildPhoneRow('Direct Telephone'),
                          const SizedBox(height: 4),
                          _buildPhoneRow('Direct Fax'),
                          const SizedBox(height: 4),
                          _buildPhoneRow('Mobile'),
                          const SizedBox(height: 4),
                          Row(
                            children: [
                              const Expanded(
                                flex: 1,
                                child: Text(
                                  'E-mail Address',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(fontSize: 12),
                                ),
                              ),
                              const SizedBox(width: 8),
                              const Expanded(
                                flex: 2,
                                child: SizedBox(
                                  height: 20,
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      contentPadding: EdgeInsets.zero,
                                      fillColor: Colors.white,
                                      filled: true,
                                    ),
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
                  ],
        ),
      ),
      actionsAlignment: MainAxisAlignment.spaceBetween,
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
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text('Close'),
        ),
      ],
      actionsPadding: const EdgeInsets.fromLTRB(24, 0, 24, 24),
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
        Expanded(
          flex: 2,
          child: Row(
            children: const [
              Expanded(
                flex: 1,
                child: SizedBox(
                  height: 20,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      contentPadding: EdgeInsets.zero,
                      fillColor: Colors.white,
                      filled: true,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 4),
              Expanded(
                flex: 1,
                child: SizedBox(
                  height: 20,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      contentPadding: EdgeInsets.zero,
                      fillColor: Colors.white,
                      filled: true,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 4),
              Expanded(
                flex: 2,
                child: SizedBox(
                  height: 20,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      contentPadding: EdgeInsets.zero,
                      fillColor: Colors.white,
                      filled: true,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
