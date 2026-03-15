import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:mmdesk/core/models/client_model.dart';
import 'package:mmdesk/core/network/supabase_service.dart';

part 'clients_repository.g.dart';

class ClientsRepository {
  final Ref ref;
  ClientsRepository(this.ref);

  Future<List<ClientModel>> getClients() async {
    // 1. Fetch from Remote
    final supabase = ref.read(supabaseClientProvider);
    final response = await supabase.from('clients').select();
    final clients = response.map((json) => ClientModel.fromJson(json)).toList();
    
    // 2. TODO: Cache to Local Drift DB here (Sync mechanism)
    
    return clients;
  }

  Future<ClientModel> createClient(ClientModel client) async {
    final supabase = ref.read(supabaseClientProvider);
    final response = await supabase.from('clients').insert(client.toJson()).select().single();
    return ClientModel.fromJson(response);
  }
}

@riverpod
ClientsRepository clientsRepository(Ref ref) {
  return ClientsRepository(ref);
}

@riverpod
Future<List<ClientModel>> clientsList(Ref ref) {
  return ref.read(clientsRepositoryProvider).getClients();
}
