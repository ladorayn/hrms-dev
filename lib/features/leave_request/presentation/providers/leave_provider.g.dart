// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'leave_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$leaveBalanceHash() => r'ce1c55a9d5c544fbf8a3caef5c65d3e9f5aaf42a';

/// See also [leaveBalance].
@ProviderFor(leaveBalance)
final leaveBalanceProvider =
    AutoDisposeFutureProvider<LeaveBalanceResponse>.internal(
  leaveBalance,
  name: r'leaveBalanceProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$leaveBalanceHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef LeaveBalanceRef = AutoDisposeFutureProviderRef<LeaveBalanceResponse>;
String _$fileUploadNotifierHash() =>
    r'cbd2642fcba937b9925649f801a08599f6cfca25';

/// See also [FileUploadNotifier].
@ProviderFor(FileUploadNotifier)
final fileUploadNotifierProvider = AutoDisposeNotifierProvider<
    FileUploadNotifier, AsyncValue<UploadFile?>>.internal(
  FileUploadNotifier.new,
  name: r'fileUploadNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$fileUploadNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$FileUploadNotifier = AutoDisposeNotifier<AsyncValue<UploadFile?>>;
String _$leaveRequestSubmissionHash() =>
    r'86787fe9f610a025e44f3bdb429e0ccb8990129d';

/// See also [LeaveRequestSubmission].
@ProviderFor(LeaveRequestSubmission)
final leaveRequestSubmissionProvider = AutoDisposeNotifierProvider<
    LeaveRequestSubmission, AsyncValue<dynamic>>.internal(
  LeaveRequestSubmission.new,
  name: r'leaveRequestSubmissionProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$leaveRequestSubmissionHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$LeaveRequestSubmission = AutoDisposeNotifier<AsyncValue<dynamic>>;
String _$leaveTypesHash() => r'22b14ca47a5c6200de1e20ea0340a51b8fe94d6e';

/// See also [LeaveTypes].
@ProviderFor(LeaveTypes)
final leaveTypesProvider =
    AutoDisposeAsyncNotifierProvider<LeaveTypes, List<LeaveType>>.internal(
  LeaveTypes.new,
  name: r'leaveTypesProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$leaveTypesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$LeaveTypes = AutoDisposeAsyncNotifier<List<LeaveType>>;
String _$leaveHistoriesHash() => r'1ee0f541167cbadbf9f515f2f3c6995f89d93db7';

/// See also [LeaveHistories].
@ProviderFor(LeaveHistories)
final leaveHistoriesProvider =
    AutoDisposeAsyncNotifierProvider<LeaveHistories, List<LeaveGroup>>.internal(
  LeaveHistories.new,
  name: r'leaveHistoriesProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$leaveHistoriesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$LeaveHistories = AutoDisposeAsyncNotifier<List<LeaveGroup>>;
String _$leaveDataHash() => r'99925559892849b1bb5540fcf5ad52af5d62607d';

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

abstract class _$LeaveData
    extends BuildlessAutoDisposeAsyncNotifier<LeaveDetail> {
  late final int id;

  FutureOr<LeaveDetail> build({
    required int id,
  });
}

/// See also [LeaveData].
@ProviderFor(LeaveData)
const leaveDataProvider = LeaveDataFamily();

/// See also [LeaveData].
class LeaveDataFamily extends Family<AsyncValue<LeaveDetail>> {
  /// See also [LeaveData].
  const LeaveDataFamily();

  /// See also [LeaveData].
  LeaveDataProvider call({
    required int id,
  }) {
    return LeaveDataProvider(
      id: id,
    );
  }

  @override
  LeaveDataProvider getProviderOverride(
    covariant LeaveDataProvider provider,
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
  String? get name => r'leaveDataProvider';
}

/// See also [LeaveData].
class LeaveDataProvider
    extends AutoDisposeAsyncNotifierProviderImpl<LeaveData, LeaveDetail> {
  /// See also [LeaveData].
  LeaveDataProvider({
    required int id,
  }) : this._internal(
          () => LeaveData()..id = id,
          from: leaveDataProvider,
          name: r'leaveDataProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$leaveDataHash,
          dependencies: LeaveDataFamily._dependencies,
          allTransitiveDependencies: LeaveDataFamily._allTransitiveDependencies,
          id: id,
        );

  LeaveDataProvider._internal(
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
  FutureOr<LeaveDetail> runNotifierBuild(
    covariant LeaveData notifier,
  ) {
    return notifier.build(
      id: id,
    );
  }

  @override
  Override overrideWith(LeaveData Function() create) {
    return ProviderOverride(
      origin: this,
      override: LeaveDataProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<LeaveData, LeaveDetail>
      createElement() {
    return _LeaveDataProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is LeaveDataProvider && other.id == id;
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
mixin LeaveDataRef on AutoDisposeAsyncNotifierProviderRef<LeaveDetail> {
  /// The parameter `id` of this provider.
  int get id;
}

class _LeaveDataProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<LeaveData, LeaveDetail>
    with LeaveDataRef {
  _LeaveDataProviderElement(super.provider);

  @override
  int get id => (origin as LeaveDataProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
