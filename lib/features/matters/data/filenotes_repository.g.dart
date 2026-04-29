// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filenotes_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$filenotesRepositoryHash() =>
    r'3e3081b30bebb43b3c2357c23f449e3149fe8647';

/// See also [filenotesRepository].
@ProviderFor(filenotesRepository)
final filenotesRepositoryProvider =
    AutoDisposeProvider<FilenotesRepository>.internal(
  filenotesRepository,
  name: r'filenotesRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$filenotesRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef FilenotesRepositoryRef = AutoDisposeProviderRef<FilenotesRepository>;
String _$filenotesListHash() => r'fd596fea7d857cda81dea16f8501261708748070';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [filenotesList].
@ProviderFor(filenotesList)
const filenotesListProvider = FilenotesListFamily();

/// See also [filenotesList].
class FilenotesListFamily extends Family<AsyncValue<List<FilenoteModel>>> {
  /// See also [filenotesList].
  const FilenotesListFamily();

  /// See also [filenotesList].
  FilenotesListProvider call({
    String? matterId,
  }) {
    return FilenotesListProvider(
      matterId: matterId,
    );
  }

  @override
  FilenotesListProvider getProviderOverride(
    covariant FilenotesListProvider provider,
  ) {
    return call(
      matterId: provider.matterId,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'filenotesListProvider';
}

/// See also [filenotesList].
class FilenotesListProvider
    extends AutoDisposeFutureProvider<List<FilenoteModel>> {
  /// See also [filenotesList].
  FilenotesListProvider({
    String? matterId,
  }) : this._internal(
          (ref) => filenotesList(
            ref as FilenotesListRef,
            matterId: matterId,
          ),
          from: filenotesListProvider,
          name: r'filenotesListProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$filenotesListHash,
          dependencies: FilenotesListFamily._dependencies,
          allTransitiveDependencies:
              FilenotesListFamily._allTransitiveDependencies,
          matterId: matterId,
        );

  FilenotesListProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.matterId,
  }) : super.internal();

  final String? matterId;

  @override
  Override overrideWith(
    FutureOr<List<FilenoteModel>> Function(FilenotesListRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FilenotesListProvider._internal(
        (ref) => create(ref as FilenotesListRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        matterId: matterId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<FilenoteModel>> createElement() {
    return _FilenotesListProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FilenotesListProvider && other.matterId == matterId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, matterId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FilenotesListRef on AutoDisposeFutureProviderRef<List<FilenoteModel>> {
  /// The parameter `matterId` of this provider.
  String? get matterId;
}

class _FilenotesListProviderElement
    extends AutoDisposeFutureProviderElement<List<FilenoteModel>>
    with FilenotesListRef {
  _FilenotesListProviderElement(super.provider);

  @override
  String? get matterId => (origin as FilenotesListProvider).matterId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
