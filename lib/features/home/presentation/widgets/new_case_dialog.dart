import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mmdesk/core/models/case_model.dart';
import 'package:mmdesk/core/models/client_model.dart';
import 'package:mmdesk/core/models/profile_model.dart';
import 'package:mmdesk/core/network/supabase_service.dart';
import 'package:mmdesk/features/cases/data/cases_repository.dart';
import 'package:uuid/uuid.dart';

class NewCaseDialog extends ConsumerStatefulWidget {
  const NewCaseDialog({super.key});

  @override
  ConsumerState<NewCaseDialog> createState() => _NewCaseDialogState();
}

class _NewCaseDialogState extends ConsumerState<NewCaseDialog> {
  ClientModel? _selectedClient;
  ProfileModel? _selectedAgent;
  CaseType _selectedType = CaseType.visa;
  PriorityLevel _selectedPriority = PriorityLevel.medium;

  List<ClientModel> _clients = [];
  List<ProfileModel> _agents = [];
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  Future<void> _loadData() async {
    final supabase = ref.read(supabaseClientProvider);
    try {
      final clientsRes = await supabase.from('clients').select().limit(50);
      _clients = clientsRes.map((j) => ClientModel.fromJson(j)).toList();

      final agentsRes = await supabase.from('profiles').select().limit(50);
      _agents = agentsRes.map((j) => ProfileModel.fromJson(j)).toList();
      
      if (_clients.isNotEmpty) _selectedClient = _clients.first;
      if (_agents.isNotEmpty) _selectedAgent = _agents.first;

    } catch (e) {
      if (e.toString().contains('Failed host lookup') || e.toString().contains('placeholder')) {
        _clients = [
          ClientModel(id: 'client-1', primaryAgentId: 'agent-1', firstName: 'Sarah', lastName: 'Chen', createdAt: DateTime.now(), updatedAt: DateTime.now()),
          ClientModel(id: 'client-2', primaryAgentId: 'agent-2', firstName: 'Mohammed', lastName: 'Al-Rashid', createdAt: DateTime.now(), updatedAt: DateTime.now()),
        ];
        _agents = [
          ProfileModel(id: 'agent-1', role: UserRole.agent, firstName: 'John', lastName: 'Smith', email: 'john@example.com', createdAt: DateTime.now(), updatedAt: DateTime.now()),
          ProfileModel(id: 'agent-2', role: UserRole.agent, firstName: 'Maria', lastName: 'Garcia', email: 'maria@example.com', createdAt: DateTime.now(), updatedAt: DateTime.now()),
        ];
        _selectedClient = _clients.first;
        _selectedAgent = _agents.first;
      } else {
        debugPrint('Error loading dependencies: $e');
      }
    } finally {
      if (mounted) setState(() => _isLoading = false);
    }
  }

  Future<void> _saveCase() async {
    if (_selectedClient == null || _selectedAgent == null) {
       ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Please select a client and agent')));
       return;
    }

    final newCase = CaseModel(
      id: const Uuid().v4(),
      clientId: _selectedClient!.id,
      agentId: _selectedAgent!.id,
      type: _selectedType,
      status: CaseStatus.in_progress,
      priority: _selectedPriority,
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    );

    try {
      // Create via repository
      await ref.read(casesRepositoryProvider).createCase(newCase);
      // Invalidate the provider so the table refreshes
      ref.invalidate(casesListProvider);
      if (mounted) Navigator.of(context).pop();
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Error saving case: $e')));
    }
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Create New Case'),
      content: _isLoading 
        ? const SizedBox(width: 400, height: 100, child: Center(child: CircularProgressIndicator()))
        : SizedBox(
            width: 400,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                DropdownButtonFormField<ClientModel>(
                  decoration: const InputDecoration(labelText: 'Client'),
                  value: _selectedClient,
                  items: _clients.map((c) => DropdownMenuItem(
                    value: c,
                    child: Text('${c.firstName} ${c.lastName}'),
                  )).toList(),
                  onChanged: (val) => setState(() => _selectedClient = val),
                ),
                const SizedBox(height: 16),
                DropdownButtonFormField<ProfileModel>(
                  decoration: const InputDecoration(labelText: 'Agent'),
                  value: _selectedAgent,
                  items: _agents.map((a) => DropdownMenuItem(
                    value: a,
                    child: Text('${a.firstName} ${a.lastName}'),
                  )).toList(),
                  onChanged: (val) => setState(() => _selectedAgent = val),
                ),
                const SizedBox(height: 16),
                DropdownButtonFormField<CaseType>(
                  decoration: const InputDecoration(labelText: 'Visa Type'),
                  value: _selectedType,
                  items: CaseType.values.map((t) => DropdownMenuItem(
                    value: t,
                    child: Text(t.name.toUpperCase()),
                  )).toList(),
                  onChanged: (val) {
                    if (val != null) setState(() => _selectedType = val);
                  },
                ),
                const SizedBox(height: 16),
                DropdownButtonFormField<PriorityLevel>(
                  decoration: const InputDecoration(labelText: 'Priority'),
                  value: _selectedPriority,
                  items: PriorityLevel.values.map((p) => DropdownMenuItem(
                    value: p,
                    child: Text(p.name.toUpperCase()),
                  )).toList(),
                  onChanged: (val) {
                    if (val != null) setState(() => _selectedPriority = val);
                  },
                ),
              ],
            ),
          ),
      actions: [
        TextButton(onPressed: () => Navigator.of(context).pop(), child: const Text('Cancel')),
        ElevatedButton(onPressed: _isLoading ? null : _saveCase, child: const Text('Create Case')),
      ],
    );
  }
}
