import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:mmdesk/core/models/user_model.dart';
import 'package:mmdesk/core/network/supabase_service.dart';

part 'users_repository.g.dart';

class UsersRepository {
  final Ref ref;
  UsersRepository(this.ref);

  static final List<UserModel> _mockUsers = [
    UserModel(
      id: 'user-1',
      firstName: 'John',
      lastName: 'Smith',
      email: 'john@example.com',
      phone: '0412 345 678',
      accessLevel: 'full',
      isActive: true,
      createdAt: DateTime.now().subtract(const Duration(days: 60)),
      updatedAt: DateTime.now().subtract(const Duration(days: 1)),
    ),
    UserModel(
      id: 'user-2',
      firstName: 'Maria',
      lastName: 'Garcia',
      email: 'maria@example.com',
      phone: '0423 456 789',
      accessLevel: 'full',
      isActive: true,
      createdAt: DateTime.now().subtract(const Duration(days: 45)),
      updatedAt: DateTime.now().subtract(const Duration(days: 3)),
    ),
  ];

  Future<List<UserModel>> getUsers() async {
    final supabase = ref.read(supabaseClientProvider);
    try {
      final response = await supabase
          .from('users')
          .select()
          .order('created_at', ascending: false);
      return response.map((json) => UserModel.fromJson(json)).toList();
    } catch (e) {
      return _mockUsers;
    }
  }

  Future<void> createUser(UserModel user) async {
    final supabase = ref.read(supabaseClientProvider);
    try {
      await supabase.from('users').insert(user.toJson());
    } catch (e) {
      _mockUsers.insert(0, user);
    }
  }

  Future<void> updateUser(UserModel user) async {
    final supabase = ref.read(supabaseClientProvider);
    try {
      await supabase.from('users').update(user.toJson()).eq('id', user.id);
    } catch (e) {
      final index = _mockUsers.indexWhere((u) => u.id == user.id);
      if (index != -1) _mockUsers[index] = user;
    }
  }

  Future<void> deleteUser(String id) async {
    final supabase = ref.read(supabaseClientProvider);
    try {
      await supabase.from('users').delete().eq('id', id);
    } catch (e) {
      _mockUsers.removeWhere((u) => u.id == id);
    }
  }
}

@riverpod
UsersRepository usersRepository(Ref ref) {
  return UsersRepository(ref);
}

@riverpod
Future<List<UserModel>> usersList(Ref ref) {
  return ref.read(usersRepositoryProvider).getUsers();
}
