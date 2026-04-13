with open('lib/features/matters/presentation/dialogs/create_matter_dialog.dart', 'r') as f:
    content = f.read()

# Fix the structural issue with how the Column is built inside the Row
target = """                            Row(
                              children: [
                                const SizedBox(width: 80, child: Text('Matter Type', textAlign: TextAlign.right, style: TextStyle(fontSize: 12))),
                                const SizedBox(width: 8),
                                Expanded(
                                  child: Container(
                                    decoration: BoxDecoration(border: Border.all(color: Colors.grey.shade300)),
                                    padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 4),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Expanded(child: _buildRadioTile('Migrant', _matterDetailType, (v) => setState(() => _matterDetailType = v!))),
                                            Expanded(child: _buildRadioTile('Sponsor', _matterDetailType, (v) => setState(() => _matterDetailType = v!))),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Expanded(child: _buildRadioTile('Business', _sponsorType, (v) => setState(() => _sponsorType = v!), enabled: _matterDetailType == 'Sponsor')),
                                            Expanded(child: _buildRadioTile('Family', _sponsorType, (v) => setState(() => _sponsorType = v!), enabled: _matterDetailType == 'Sponsor')),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),"""

replacement = """                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  width: 80,
                                  child: Padding(
                                    padding: EdgeInsets.only(top: 6),
                                    child: Text('Matter Type', textAlign: TextAlign.right, style: TextStyle(fontSize: 12)),
                                  ),
                                ),
                                const SizedBox(width: 8),
                                Expanded(
                                  child: Container(
                                    decoration: BoxDecoration(border: Border.all(color: Colors.grey.shade300)),
                                    padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 4),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Expanded(child: _buildRadioTile('Migrant', _matterDetailType, (v) => setState(() => _matterDetailType = v!))),
                                            Expanded(child: _buildRadioTile('Sponsor', _matterDetailType, (v) => setState(() => _matterDetailType = v!))),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Expanded(child: _buildRadioTile('Business', _sponsorType, (v) => setState(() => _sponsorType = v!), enabled: _matterDetailType == 'Sponsor')),
                                            Expanded(child: _buildRadioTile('Family', _sponsorType, (v) => setState(() => _sponsorType = v!), enabled: _matterDetailType == 'Sponsor')),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),"""

new_content = content.replace(target, replacement)

with open('lib/features/matters/presentation/dialogs/create_matter_dialog.dart', 'w') as f:
    f.write(new_content)
