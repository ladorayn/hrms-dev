// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attendance_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$recentActivityHash() => r'3745130b8959168b98bd28b797f9a73dbefe80ba';

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

/// See also [recentActivity].
@ProviderFor(recentActivity)
const recentActivityProvider = RecentActivityFamily();

/// See also [recentActivity].
class RecentActivityFamily extends Family<AsyncValue<List<ActivityLogModel>>> {
  /// See also [recentActivity].
  const RecentActivityFamily();

  /// See also [recentActivity].
  RecentActivityProvider call({
    int limit = 10,
  }) {
    return RecentActivityProvider(
      limit: limit,
    );
  }

  @override
  RecentActivityProvider getProviderOverride(
    covariant RecentActivityProvider provider,
  ) {
    return call(
      limit: provider.limit,
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
  String? get name => r'recentActivityProvider';
}

/// See also [recentActivity].
class RecentActivityProvider
    extends AutoDisposeFutureProvider<List<ActivityLogModel>> {
  /// See also [recentActivity].
  RecentActivityProvider({
    int limit = 10,
  }) : this._internal(
          (ref) => recentActivity(
            ref as RecentActivityRef,
            limit: limit,
          ),
          from: recentActivityProvider,
          name: r'recentActivityProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$recentActivityHash,
          dependencies: RecentActivityFamily._dependencies,
          allTransitiveDependencies:
              RecentActivityFamily._allTransitiveDependencies,
          limit: limit,
        );

  RecentActivityProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.limit,
  }) : super.internal();

  final int limit;

  @override
  Override overrideWith(
    FutureOr<List<ActivityLogModel>> Function(RecentActivityRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: RecentActivityProvider._internal(
        (ref) => create(ref as RecentActivityRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        limit: limit,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<ActivityLogModel>> createElement() {
    return _RecentActivityProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is RecentActivityProvider && other.limit == limit;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, limit.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin RecentActivityRef
    on AutoDisposeFutureProviderRef<List<ActivityLogModel>> {
  /// The parameter `limit` of this provider.
  int get limit;
}

class _RecentActivityProviderElement
    extends AutoDisposeFutureProviderElement<List<ActivityLogModel>>
    with RecentActivityRef {
  _RecentActivityProviderElement(super.provider);

  @override
  int get limit => (origin as RecentActivityProvider).limit;
}

String _$getDetailAttendanceHash() =>
    r'5516a9fb30c1b84be05fdbd2714f3cd82486c871';

/// See also [getDetailAttendance].
@ProviderFor(getDetailAttendance)
const getDetailAttendanceProvider = GetDetailAttendanceFamily();

/// See also [getDetailAttendance].
class GetDetailAttendanceFamily extends Family<AsyncValue<AttendanceDetail>> {
  /// See also [getDetailAttendance].
  const GetDetailAttendanceFamily();

  /// See also [getDetailAttendance].
  GetDetailAttendanceProvider call({
    required String attendanceId,
  }) {
    return GetDetailAttendanceProvider(
      attendanceId: attendanceId,
    );
  }

  @override
  GetDetailAttendanceProvider getProviderOverride(
    covariant GetDetailAttendanceProvider provider,
  ) {
    return call(
      attendanceId: provider.attendanceId,
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
  String? get name => r'getDetailAttendanceProvider';
}

/// See also [getDetailAttendance].
class GetDetailAttendanceProvider
    extends AutoDisposeFutureProvider<AttendanceDetail> {
  /// See also [getDetailAttendance].
  GetDetailAttendanceProvider({
    required String attendanceId,
  }) : this._internal(
          (ref) => getDetailAttendance(
            ref as GetDetailAttendanceRef,
            attendanceId: attendanceId,
          ),
          from: getDetailAttendanceProvider,
          name: r'getDetailAttendanceProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getDetailAttendanceHash,
          dependencies: GetDetailAttendanceFamily._dependencies,
          allTransitiveDependencies:
              GetDetailAttendanceFamily._allTransitiveDependencies,
          attendanceId: attendanceId,
        );

  GetDetailAttendanceProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.attendanceId,
  }) : super.internal();

  final String attendanceId;

  @override
  Override overrideWith(
    FutureOr<AttendanceDetail> Function(GetDetailAttendanceRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetDetailAttendanceProvider._internal(
        (ref) => create(ref as GetDetailAttendanceRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        attendanceId: attendanceId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<AttendanceDetail> createElement() {
    return _GetDetailAttendanceProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetDetailAttendanceProvider &&
        other.attendanceId == attendanceId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, attendanceId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GetDetailAttendanceRef on AutoDisposeFutureProviderRef<AttendanceDetail> {
  /// The parameter `attendanceId` of this provider.
  String get attendanceId;
}

class _GetDetailAttendanceProviderElement
    extends AutoDisposeFutureProviderElement<AttendanceDetail>
    with GetDetailAttendanceRef {
  _GetDetailAttendanceProviderElement(super.provider);

  @override
  String get attendanceId =>
      (origin as GetDetailAttendanceProvider).attendanceId;
}

String _$attendanceHash() => r'15ec77acf5826e6790e387e08d49262585ffd70f';

/// See also [Attendance].
@ProviderFor(Attendance)
final attendanceProvider =
    NotifierProvider<Attendance, AttendanceState>.internal(
  Attendance.new,
  name: r'attendanceProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$attendanceHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$Attendance = Notifier<AttendanceState>;
String _$todayAttendanceHash() => r'652076a29f0bdcacaa06996d52d0fae93f6e654c';

/// See also [TodayAttendance].
@ProviderFor(TodayAttendance)
final todayAttendanceProvider =
    AsyncNotifierProvider<TodayAttendance, AttendanceData?>.internal(
  TodayAttendance.new,
  name: r'todayAttendanceProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$todayAttendanceHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$TodayAttendance = AsyncNotifier<AttendanceData?>;
String _$paginatedActivityLogsHash() =>
    r'0cee467b121900ff4b351f107120dc66fc08e1fe';

/// See also [PaginatedActivityLogs].
@ProviderFor(PaginatedActivityLogs)
final paginatedActivityLogsProvider = AsyncNotifierProvider<
    PaginatedActivityLogs, List<ActivityLogModel>>.internal(
  PaginatedActivityLogs.new,
  name: r'paginatedActivityLogsProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$paginatedActivityLogsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$PaginatedActivityLogs = AsyncNotifier<List<ActivityLogModel>>;
String _$attendanceHistoryHash() => r'6c49f3b4033ace469ecc849153134f0b4f3e75bc';

/// See also [AttendanceHistory].
@ProviderFor(AttendanceHistory)
final attendanceHistoryProvider = AutoDisposeAsyncNotifierProvider<
    AttendanceHistory, List<AttendanceModel>>.internal(
  AttendanceHistory.new,
  name: r'attendanceHistoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$attendanceHistoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$AttendanceHistory = AutoDisposeAsyncNotifier<List<AttendanceModel>>;
String _$shiftListHash() => r'feddc959bfbf882b52524efad5ed62218c63cd5e';

/// See also [ShiftList].
@ProviderFor(ShiftList)
final shiftListProvider =
    AutoDisposeAsyncNotifierProvider<ShiftList, List<ShiftModel>>.internal(
  ShiftList.new,
  name: r'shiftListProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$shiftListHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$ShiftList = AutoDisposeAsyncNotifier<List<ShiftModel>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
