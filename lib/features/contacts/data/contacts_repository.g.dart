// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contacts_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$contactsRepositoryHash() =>
    r'e651f587b09acc702d999d889597812674cce732';

/// See also [contactsRepository].
@ProviderFor(contactsRepository)
final contactsRepositoryProvider =
    AutoDisposeProvider<ContactsRepository>.internal(
  contactsRepository,
  name: r'contactsRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$contactsRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef ContactsRepositoryRef = AutoDisposeProviderRef<ContactsRepository>;
String _$contactsListHash() => r'6e76e3da08381b0dffdfd0bee0e7efcda891db6f';

/// See also [contactsList].
@ProviderFor(contactsList)
final contactsListProvider =
    AutoDisposeFutureProvider<List<ContactModel>>.internal(
  contactsList,
  name: r'contactsListProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$contactsListHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef ContactsListRef = AutoDisposeFutureProviderRef<List<ContactModel>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
