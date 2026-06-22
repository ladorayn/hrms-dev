// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'branch_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$paginatedBranchesHash() => r'1d5b7b515a51eab8c02e3b27f5db9d8627aa2ad9';

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

abstract class _$PaginatedBranches
    extends BuildlessAutoDisposeAsyncNotifier<List<BranchData>> {
  late final String? search;

  FutureOr<List<BranchData>> build({
    String? search,
  });
}

/// See also [PaginatedBranches].
@ProviderFor(PaginatedBranches)
const paginatedBranchesProvider = PaginatedBranchesFamily();

/// See also [PaginatedBranches].
class PaginatedBranchesFamily extends Family<AsyncValue<List<BranchData>>> {
  /// See also [PaginatedBranches].
  const PaginatedBranchesFamily();

  /// See also [PaginatedBranches].
  PaginatedBranchesProvider call({
    String? search,
  }) {
    return PaginatedBranchesProvider(
      search: search,
    );
  }

  @override
  PaginatedBranchesProvider getProviderOverride(
    covariant PaginatedBranchesProvider provider,
  ) {
    return call(
      search: provider.search,
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
  String? get name => r'paginatedBranchesProvider';
}

/// See also [PaginatedBranches].
class PaginatedBranchesProvider extends AutoDisposeAsyncNotifierProviderImpl<
    PaginatedBranches, List<BranchData>> {
  /// See also [PaginatedBranches].
  PaginatedBranchesProvider({
    String? search,
  }) : this._internal(
          () => PaginatedBranches()..search = search,
          from: paginatedBranchesProvider,
          name: r'paginatedBranchesProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$paginatedBranchesHash,
          dependencies: PaginatedBranchesFamily._dependencies,
          allTransitiveDependencies:
              PaginatedBranchesFamily._allTransitiveDependencies,
          search: search,
        );

  PaginatedBranchesProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.search,
  }) : super.internal();

  final String? search;

  @override
  FutureOr<List<BranchData>> runNotifierBuild(
    covariant PaginatedBranches notifier,
  ) {
    return notifier.build(
      search: search,
    );
  }

  @override
  Override overrideWith(PaginatedBranches Function() create) {
    return ProviderOverride(
      origin: this,
      override: PaginatedBranchesProvider._internal(
        () => create()..search = search,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        search: search,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<PaginatedBranches, List<BranchData>>
      createElement() {
    return _PaginatedBranchesProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PaginatedBranchesProvider && other.search == search;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, search.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin PaginatedBranchesRef
    on AutoDisposeAsyncNotifierProviderRef<List<BranchData>> {
  /// The parameter `search` of this provider.
  String? get search;
}

class _PaginatedBranchesProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<PaginatedBranches,
        List<BranchData>> with PaginatedBranchesRef {
  _PaginatedBranchesProviderElement(super.provider);

  @override
  String? get search => (origin as PaginatedBranchesProvider).search;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
