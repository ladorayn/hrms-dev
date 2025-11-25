// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payslip_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$payslipListHash() => r'e2db1cd7c5c57643b17fdd63b400e2b9f4700270';

/// See also [PayslipList].
@ProviderFor(PayslipList)
final payslipListProvider = AutoDisposeAsyncNotifierProvider<PayslipList,
    List<PayslipDataList>>.internal(
  PayslipList.new,
  name: r'payslipListProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$payslipListHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$PayslipList = AutoDisposeAsyncNotifier<List<PayslipDataList>>;
String _$payslipViewRequestHash() =>
    r'c4d8b4328d50c7eba642c7f83143203d8a7bedf2';

/// See also [PayslipViewRequest].
@ProviderFor(PayslipViewRequest)
final payslipViewRequestProvider = AutoDisposeNotifierProvider<
    PayslipViewRequest, AsyncValue<dynamic>>.internal(
  PayslipViewRequest.new,
  name: r'payslipViewRequestProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$payslipViewRequestHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$PayslipViewRequest = AutoDisposeNotifier<AsyncValue<dynamic>>;
String _$printPayslipRequestHash() =>
    r'a544325ef79dd6ec3f8d0f1a16e227c5937ecae6';

/// See also [PrintPayslipRequest].
@ProviderFor(PrintPayslipRequest)
final printPayslipRequestProvider = AutoDisposeNotifierProvider<
    PrintPayslipRequest, AsyncValue<dynamic>>.internal(
  PrintPayslipRequest.new,
  name: r'printPayslipRequestProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$printPayslipRequestHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$PrintPayslipRequest = AutoDisposeNotifier<AsyncValue<dynamic>>;
String _$payslipDetailHash() => r'2d237f79b34148f96dd72f926261e3a1a0ab98da';

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

abstract class _$PayslipDetail
    extends BuildlessAutoDisposeAsyncNotifier<PayslipDetailResponse> {
  late final int id;

  FutureOr<PayslipDetailResponse> build({
    required int id,
  });
}

/// See also [PayslipDetail].
@ProviderFor(PayslipDetail)
const payslipDetailProvider = PayslipDetailFamily();

/// See also [PayslipDetail].
class PayslipDetailFamily extends Family<AsyncValue<PayslipDetailResponse>> {
  /// See also [PayslipDetail].
  const PayslipDetailFamily();

  /// See also [PayslipDetail].
  PayslipDetailProvider call({
    required int id,
  }) {
    return PayslipDetailProvider(
      id: id,
    );
  }

  @override
  PayslipDetailProvider getProviderOverride(
    covariant PayslipDetailProvider provider,
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
  String? get name => r'payslipDetailProvider';
}

/// See also [PayslipDetail].
class PayslipDetailProvider extends AutoDisposeAsyncNotifierProviderImpl<
    PayslipDetail, PayslipDetailResponse> {
  /// See also [PayslipDetail].
  PayslipDetailProvider({
    required int id,
  }) : this._internal(
          () => PayslipDetail()..id = id,
          from: payslipDetailProvider,
          name: r'payslipDetailProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$payslipDetailHash,
          dependencies: PayslipDetailFamily._dependencies,
          allTransitiveDependencies:
              PayslipDetailFamily._allTransitiveDependencies,
          id: id,
        );

  PayslipDetailProvider._internal(
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
  FutureOr<PayslipDetailResponse> runNotifierBuild(
    covariant PayslipDetail notifier,
  ) {
    return notifier.build(
      id: id,
    );
  }

  @override
  Override overrideWith(PayslipDetail Function() create) {
    return ProviderOverride(
      origin: this,
      override: PayslipDetailProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<PayslipDetail, PayslipDetailResponse>
      createElement() {
    return _PayslipDetailProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PayslipDetailProvider && other.id == id;
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
mixin PayslipDetailRef
    on AutoDisposeAsyncNotifierProviderRef<PayslipDetailResponse> {
  /// The parameter `id` of this provider.
  int get id;
}

class _PayslipDetailProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<PayslipDetail,
        PayslipDetailResponse> with PayslipDetailRef {
  _PayslipDetailProviderElement(super.provider);

  @override
  int get id => (origin as PayslipDetailProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
