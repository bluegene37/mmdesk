// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tasks_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$tasksRepositoryHash() => r'd391bc594d64e656f95044826b20310163521ee5';

/// See also [tasksRepository].
@ProviderFor(tasksRepository)
final tasksRepositoryProvider = AutoDisposeProvider<TasksRepository>.internal(
  tasksRepository,
  name: r'tasksRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$tasksRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef TasksRepositoryRef = AutoDisposeProviderRef<TasksRepository>;
String _$tasksListHash() => r'f3719c5b96b0d01ebe408d0eca4d6c69a070a266';

/// See also [tasksList].
@ProviderFor(tasksList)
final tasksListProvider = AutoDisposeFutureProvider<List<TaskModel>>.internal(
  tasksList,
  name: r'tasksListProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$tasksListHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef TasksListRef = AutoDisposeFutureProviderRef<List<TaskModel>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
