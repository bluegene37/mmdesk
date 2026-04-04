// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$usersRepositoryHash() => r'e637facb0b7af925205e4f35b2576b518d2828a9';

/// See also [usersRepository].
@ProviderFor(usersRepository)
final usersRepositoryProvider = AutoDisposeProvider<UsersRepository>.internal(
  usersRepository,
  name: r'usersRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$usersRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef UsersRepositoryRef = AutoDisposeProviderRef<UsersRepository>;
String _$usersListHash() => r'b4d4ef68b3aa4f759e2f66bfaa20228f11d9364b';

/// See also [usersList].
@ProviderFor(usersList)
final usersListProvider = AutoDisposeFutureProvider<List<UserModel>>.internal(
  usersList,
  name: r'usersListProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$usersListHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef UsersListRef = AutoDisposeFutureProviderRef<List<UserModel>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
