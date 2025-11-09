// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$employeeDetailHash() => r'699fa5f7d25cf4715e75fd37ecbf0e4c84f32393';

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

abstract class _$EmployeeDetail
    extends BuildlessAutoDisposeAsyncNotifier<EmployeeProfile> {
  late final int id;

  FutureOr<EmployeeProfile> build({
    required int id,
  });
}

/// See also [EmployeeDetail].
@ProviderFor(EmployeeDetail)
const employeeDetailProvider = EmployeeDetailFamily();

/// See also [EmployeeDetail].
class EmployeeDetailFamily extends Family<AsyncValue<EmployeeProfile>> {
  /// See also [EmployeeDetail].
  const EmployeeDetailFamily();

  /// See also [EmployeeDetail].
  EmployeeDetailProvider call({
    required int id,
  }) {
    return EmployeeDetailProvider(
      id: id,
    );
  }

  @override
  EmployeeDetailProvider getProviderOverride(
    covariant EmployeeDetailProvider provider,
  ) {
    return call(
      id: provider.id,
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
  String? get name => r'employeeDetailProvider';
}

/// See also [EmployeeDetail].
class EmployeeDetailProvider extends AutoDisposeAsyncNotifierProviderImpl<
    EmployeeDetail, EmployeeProfile> {
  /// See also [EmployeeDetail].
  EmployeeDetailProvider({
    required int id,
  }) : this._internal(
          () => EmployeeDetail()..id = id,
          from: employeeDetailProvider,
          name: r'employeeDetailProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$employeeDetailHash,
          dependencies: EmployeeDetailFamily._dependencies,
          allTransitiveDependencies:
              EmployeeDetailFamily._allTransitiveDependencies,
          id: id,
        );

  EmployeeDetailProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final int id;

  @override
  FutureOr<EmployeeProfile> runNotifierBuild(
    covariant EmployeeDetail notifier,
  ) {
    return notifier.build(
      id: id,
    );
  }

  @override
  Override overrideWith(EmployeeDetail Function() create) {
    return ProviderOverride(
      origin: this,
      override: EmployeeDetailProvider._internal(
        () => create()..id = id,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<EmployeeDetail, EmployeeProfile>
      createElement() {
    return _EmployeeDetailProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is EmployeeDetailProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin EmployeeDetailRef
    on AutoDisposeAsyncNotifierProviderRef<EmployeeProfile> {
  /// The parameter `id` of this provider.
  int get id;
}

class _EmployeeDetailProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<EmployeeDetail,
        EmployeeProfile> with EmployeeDetailRef {
  _EmployeeDetailProviderElement(super.provider);

  @override
  int get id => (origin as EmployeeDetailProvider).id;
}

String _$employeeProfileEditHash() =>
    r'84233fb08157d5e52e308f16441c19dcfc1fb373';

/// See also [EmployeeProfileEdit].
@ProviderFor(EmployeeProfileEdit)
final employeeProfileEditProvider = AutoDisposeAsyncNotifierProvider<
    EmployeeProfileEdit, EmployeeProfile?>.internal(
  EmployeeProfileEdit.new,
  name: r'employeeProfileEditProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$employeeProfileEditHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$EmployeeProfileEdit = AutoDisposeAsyncNotifier<EmployeeProfile?>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
