// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoices_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$invoicesRepositoryHash() =>
    r'f15583c771dc24fae3bd03f3e7d0bfb999f940ea';

/// See also [invoicesRepository].
@ProviderFor(invoicesRepository)
final invoicesRepositoryProvider =
    AutoDisposeProvider<InvoicesRepository>.internal(
  invoicesRepository,
  name: r'invoicesRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$invoicesRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef InvoicesRepositoryRef = AutoDisposeProviderRef<InvoicesRepository>;
String _$invoicesListHash() => r'24a7311bb6155d7cc40d9cc0f99120b87da78d4e';

/// See also [invoicesList].
@ProviderFor(invoicesList)
final invoicesListProvider =
    AutoDisposeFutureProvider<List<InvoiceModel>>.internal(
  invoicesList,
  name: r'invoicesListProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$invoicesListHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef InvoicesListRef = AutoDisposeFutureProviderRef<List<InvoiceModel>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
