// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'business_trip_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$businessTripsHash() => r'fcba26ebb69fdd76c440e248731e8fc9e3873a86';

/// See also [BusinessTrips].
@ProviderFor(BusinessTrips)
final businessTripsProvider = AutoDisposeAsyncNotifierProvider<BusinessTrips,
    List<BusinessTripData>>.internal(
  BusinessTrips.new,
  name: r'businessTripsProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$businessTripsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$BusinessTrips = AutoDisposeAsyncNotifier<List<BusinessTripData>>;
String _$businessTripDetailHash() =>
    r'b8adc065e228dd862ccb618aed381a032def48be';

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

abstract class _$BusinessTripDetail
    extends BuildlessAutoDisposeAsyncNotifier<BusinessTripData> {
  late final int id;

  FutureOr<BusinessTripData> build({
    required int id,
  });
}

/// See also [BusinessTripDetail].
@ProviderFor(BusinessTripDetail)
const businessTripDetailProvider = BusinessTripDetailFamily();

/// See also [BusinessTripDetail].
class BusinessTripDetailFamily extends Family<AsyncValue<BusinessTripData>> {
  /// See also [BusinessTripDetail].
  const BusinessTripDetailFamily();

  /// See also [BusinessTripDetail].
  BusinessTripDetailProvider call({
    required int id,
  }) {
    return BusinessTripDetailProvider(
      id: id,
    );
  }

  @override
  BusinessTripDetailProvider getProviderOverride(
    covariant BusinessTripDetailProvider provider,
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
  String? get name => r'businessTripDetailProvider';
}

/// See also [BusinessTripDetail].
class BusinessTripDetailProvider extends AutoDisposeAsyncNotifierProviderImpl<
    BusinessTripDetail, BusinessTripData> {
  /// See also [BusinessTripDetail].
  BusinessTripDetailProvider({
    required int id,
  }) : this._internal(
          () => BusinessTripDetail()..id = id,
          from: businessTripDetailProvider,
          name: r'businessTripDetailProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$businessTripDetailHash,
          dependencies: BusinessTripDetailFamily._dependencies,
          allTransitiveDependencies:
              BusinessTripDetailFamily._allTransitiveDependencies,
          id: id,
        );

  BusinessTripDetailProvider._internal(
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
  FutureOr<BusinessTripData> runNotifierBuild(
    covariant BusinessTripDetail notifier,
  ) {
    return notifier.build(
      id: id,
    );
  }

  @override
  Override overrideWith(BusinessTripDetail Function() create) {
    return ProviderOverride(
      origin: this,
      override: BusinessTripDetailProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<BusinessTripDetail, BusinessTripData>
      createElement() {
    return _BusinessTripDetailProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is BusinessTripDetailProvider && other.id == id;
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
mixin BusinessTripDetailRef
    on AutoDisposeAsyncNotifierProviderRef<BusinessTripData> {
  /// The parameter `id` of this provider.
  int get id;
}

class _BusinessTripDetailProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<BusinessTripDetail,
        BusinessTripData> with BusinessTripDetailRef {
  _BusinessTripDetailProviderElement(super.provider);

  @override
  int get id => (origin as BusinessTripDetailProvider).id;
}

String _$businessTripSubmissionHash() =>
    r'3509911200c2558c9d86d5d937ccc49de8002392';

/// See also [BusinessTripSubmission].
@ProviderFor(BusinessTripSubmission)
final businessTripSubmissionProvider = AutoDisposeNotifierProvider<
    BusinessTripSubmission, AsyncValue<dynamic>>.internal(
  BusinessTripSubmission.new,
  name: r'businessTripSubmissionProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$businessTripSubmissionHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$BusinessTripSubmission = AutoDisposeNotifier<AsyncValue<dynamic>>;
String _$businessTripCancellationHash() =>
    r'8895d1a0957045fb14e6fc77a79010a9c1f37525';

/// See also [BusinessTripCancellation].
@ProviderFor(BusinessTripCancellation)
final businessTripCancellationProvider = AutoDisposeNotifierProvider<
    BusinessTripCancellation, AsyncValue<dynamic>>.internal(
  BusinessTripCancellation.new,
  name: r'businessTripCancellationProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$businessTripCancellationHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$BusinessTripCancellation = AutoDisposeNotifier<AsyncValue<dynamic>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
