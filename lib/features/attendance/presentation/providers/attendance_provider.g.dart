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
    r'c1651d1135f7d2a70fd02695a1412eaa8cb1fa24';

/// See also [getDetailAttendance].
@ProviderFor(getDetailAttendance)
const getDetailAttendanceProvider = GetDetailAttendanceFamily();

/// See also [getDetailAttendance].
class GetDetailAttendanceFamily extends Family<AsyncValue<AttendanceDetail?>> {
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
    extends AutoDisposeFutureProvider<AttendanceDetail?> {
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
    FutureOr<AttendanceDetail?> Function(GetDetailAttendanceRef provider)
        create,
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
  AutoDisposeFutureProviderElement<AttendanceDetail?> createElement() {
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
mixin GetDetailAttendanceRef
    on AutoDisposeFutureProviderRef<AttendanceDetail?> {
  /// The parameter `attendanceId` of this provider.
  String get attendanceId;
}

class _GetDetailAttendanceProviderElement
    extends AutoDisposeFutureProviderElement<AttendanceDetail?>
    with GetDetailAttendanceRef {
  _GetDetailAttendanceProviderElement(super.provider);

  @override
  String get attendanceId =>
      (origin as GetDetailAttendanceProvider).attendanceId;
}

String _$attendanceHash() => r'da1ae905bf5dcc60d4b366bdb648654874b5ef9f';

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
String _$paginatedAttendanceHistoryHash() =>
    r'3335fa596fba0da24126f8e3c29c946ff42c24e7';

abstract class _$PaginatedAttendanceHistory
    extends BuildlessAutoDisposeAsyncNotifier<List<AttendanceDetail>> {
  late final String? period;
  late final String? status;

  FutureOr<List<AttendanceDetail>> build({
    String? period,
    String? status,
  });
}

/// See also [PaginatedAttendanceHistory].
@ProviderFor(PaginatedAttendanceHistory)
const paginatedAttendanceHistoryProvider = PaginatedAttendanceHistoryFamily();

/// See also [PaginatedAttendanceHistory].
class PaginatedAttendanceHistoryFamily
    extends Family<AsyncValue<List<AttendanceDetail>>> {
  /// See also [PaginatedAttendanceHistory].
  const PaginatedAttendanceHistoryFamily();

  /// See also [PaginatedAttendanceHistory].
  PaginatedAttendanceHistoryProvider call({
    String? period,
    String? status,
  }) {
    return PaginatedAttendanceHistoryProvider(
      period: period,
      status: status,
    );
  }

  @override
  PaginatedAttendanceHistoryProvider getProviderOverride(
    covariant PaginatedAttendanceHistoryProvider provider,
  ) {
    return call(
      period: provider.period,
      status: provider.status,
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
  String? get name => r'paginatedAttendanceHistoryProvider';
}

/// See also [PaginatedAttendanceHistory].
class PaginatedAttendanceHistoryProvider
    extends AutoDisposeAsyncNotifierProviderImpl<PaginatedAttendanceHistory,
        List<AttendanceDetail>> {
  /// See also [PaginatedAttendanceHistory].
  PaginatedAttendanceHistoryProvider({
    String? period,
    String? status,
  }) : this._internal(
          () => PaginatedAttendanceHistory()
            ..period = period
            ..status = status,
          from: paginatedAttendanceHistoryProvider,
          name: r'paginatedAttendanceHistoryProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$paginatedAttendanceHistoryHash,
          dependencies: PaginatedAttendanceHistoryFamily._dependencies,
          allTransitiveDependencies:
              PaginatedAttendanceHistoryFamily._allTransitiveDependencies,
          period: period,
          status: status,
        );

  PaginatedAttendanceHistoryProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.period,
    required this.status,
  }) : super.internal();

  final String? period;
  final String? status;

  @override
  FutureOr<List<AttendanceDetail>> runNotifierBuild(
    covariant PaginatedAttendanceHistory notifier,
  ) {
    return notifier.build(
      period: period,
      status: status,
    );
  }

  @override
  Override overrideWith(PaginatedAttendanceHistory Function() create) {
    return ProviderOverride(
      origin: this,
      override: PaginatedAttendanceHistoryProvider._internal(
        () => create()
          ..period = period
          ..status = status,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        period: period,
        status: status,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<PaginatedAttendanceHistory,
      List<AttendanceDetail>> createElement() {
    return _PaginatedAttendanceHistoryProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PaginatedAttendanceHistoryProvider &&
        other.period == period &&
        other.status == status;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, period.hashCode);
    hash = _SystemHash.combine(hash, status.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin PaginatedAttendanceHistoryRef
    on AutoDisposeAsyncNotifierProviderRef<List<AttendanceDetail>> {
  /// The parameter `period` of this provider.
  String? get period;

  /// The parameter `status` of this provider.
  String? get status;
}

class _PaginatedAttendanceHistoryProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<PaginatedAttendanceHistory,
        List<AttendanceDetail>> with PaginatedAttendanceHistoryRef {
  _PaginatedAttendanceHistoryProviderElement(super.provider);

  @override
  String? get period => (origin as PaginatedAttendanceHistoryProvider).period;
  @override
  String? get status => (origin as PaginatedAttendanceHistoryProvider).status;
}

String _$attendanceStatsHash() => r'960f4d92eca8e954283aebe020bb53c9136dd846';

abstract class _$AttendanceStats
    extends BuildlessAutoDisposeAsyncNotifier<AttendanceStatistics> {
  late final String? period;

  FutureOr<AttendanceStatistics> build({
    String? period,
  });
}

/// See also [AttendanceStats].
@ProviderFor(AttendanceStats)
const attendanceStatsProvider = AttendanceStatsFamily();

/// See also [AttendanceStats].
class AttendanceStatsFamily extends Family<AsyncValue<AttendanceStatistics>> {
  /// See also [AttendanceStats].
  const AttendanceStatsFamily();

  /// See also [AttendanceStats].
  AttendanceStatsProvider call({
    String? period,
  }) {
    return AttendanceStatsProvider(
      period: period,
    );
  }

  @override
  AttendanceStatsProvider getProviderOverride(
    covariant AttendanceStatsProvider provider,
  ) {
    return call(
      period: provider.period,
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
  String? get name => r'attendanceStatsProvider';
}

/// See also [AttendanceStats].
class AttendanceStatsProvider extends AutoDisposeAsyncNotifierProviderImpl<
    AttendanceStats, AttendanceStatistics> {
  /// See also [AttendanceStats].
  AttendanceStatsProvider({
    String? period,
  }) : this._internal(
          () => AttendanceStats()..period = period,
          from: attendanceStatsProvider,
          name: r'attendanceStatsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$attendanceStatsHash,
          dependencies: AttendanceStatsFamily._dependencies,
          allTransitiveDependencies:
              AttendanceStatsFamily._allTransitiveDependencies,
          period: period,
        );

  AttendanceStatsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.period,
  }) : super.internal();

  final String? period;

  @override
  FutureOr<AttendanceStatistics> runNotifierBuild(
    covariant AttendanceStats notifier,
  ) {
    return notifier.build(
      period: period,
    );
  }

  @override
  Override overrideWith(AttendanceStats Function() create) {
    return ProviderOverride(
      origin: this,
      override: AttendanceStatsProvider._internal(
        () => create()..period = period,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        period: period,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<AttendanceStats, AttendanceStatistics>
      createElement() {
    return _AttendanceStatsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AttendanceStatsProvider && other.period == period;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, period.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin AttendanceStatsRef
    on AutoDisposeAsyncNotifierProviderRef<AttendanceStatistics> {
  /// The parameter `period` of this provider.
  String? get period;
}

class _AttendanceStatsProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<AttendanceStats,
        AttendanceStatistics> with AttendanceStatsRef {
  _AttendanceStatsProviderElement(super.provider);

  @override
  String? get period => (origin as AttendanceStatsProvider).period;
}

String _$paginatedOvertimeHistoryHash() =>
    r'88577562a185aa8cbecf6e295ac101e6eef0ad74';

abstract class _$PaginatedOvertimeHistory
    extends BuildlessAutoDisposeAsyncNotifier<List<OvertimeDetail>> {
  late final String? period;
  late final String? status;

  FutureOr<List<OvertimeDetail>> build({
    String? period,
    String? status,
  });
}

/// See also [PaginatedOvertimeHistory].
@ProviderFor(PaginatedOvertimeHistory)
const paginatedOvertimeHistoryProvider = PaginatedOvertimeHistoryFamily();

/// See also [PaginatedOvertimeHistory].
class PaginatedOvertimeHistoryFamily
    extends Family<AsyncValue<List<OvertimeDetail>>> {
  /// See also [PaginatedOvertimeHistory].
  const PaginatedOvertimeHistoryFamily();

  /// See also [PaginatedOvertimeHistory].
  PaginatedOvertimeHistoryProvider call({
    String? period,
    String? status,
  }) {
    return PaginatedOvertimeHistoryProvider(
      period: period,
      status: status,
    );
  }

  @override
  PaginatedOvertimeHistoryProvider getProviderOverride(
    covariant PaginatedOvertimeHistoryProvider provider,
  ) {
    return call(
      period: provider.period,
      status: provider.status,
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
  String? get name => r'paginatedOvertimeHistoryProvider';
}

/// See also [PaginatedOvertimeHistory].
class PaginatedOvertimeHistoryProvider
    extends AutoDisposeAsyncNotifierProviderImpl<PaginatedOvertimeHistory,
        List<OvertimeDetail>> {
  /// See also [PaginatedOvertimeHistory].
  PaginatedOvertimeHistoryProvider({
    String? period,
    String? status,
  }) : this._internal(
          () => PaginatedOvertimeHistory()
            ..period = period
            ..status = status,
          from: paginatedOvertimeHistoryProvider,
          name: r'paginatedOvertimeHistoryProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$paginatedOvertimeHistoryHash,
          dependencies: PaginatedOvertimeHistoryFamily._dependencies,
          allTransitiveDependencies:
              PaginatedOvertimeHistoryFamily._allTransitiveDependencies,
          period: period,
          status: status,
        );

  PaginatedOvertimeHistoryProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.period,
    required this.status,
  }) : super.internal();

  final String? period;
  final String? status;

  @override
  FutureOr<List<OvertimeDetail>> runNotifierBuild(
    covariant PaginatedOvertimeHistory notifier,
  ) {
    return notifier.build(
      period: period,
      status: status,
    );
  }

  @override
  Override overrideWith(PaginatedOvertimeHistory Function() create) {
    return ProviderOverride(
      origin: this,
      override: PaginatedOvertimeHistoryProvider._internal(
        () => create()
          ..period = period
          ..status = status,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        period: period,
        status: status,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<PaginatedOvertimeHistory,
      List<OvertimeDetail>> createElement() {
    return _PaginatedOvertimeHistoryProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PaginatedOvertimeHistoryProvider &&
        other.period == period &&
        other.status == status;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, period.hashCode);
    hash = _SystemHash.combine(hash, status.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin PaginatedOvertimeHistoryRef
    on AutoDisposeAsyncNotifierProviderRef<List<OvertimeDetail>> {
  /// The parameter `period` of this provider.
  String? get period;

  /// The parameter `status` of this provider.
  String? get status;
}

class _PaginatedOvertimeHistoryProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<PaginatedOvertimeHistory,
        List<OvertimeDetail>> with PaginatedOvertimeHistoryRef {
  _PaginatedOvertimeHistoryProviderElement(super.provider);

  @override
  String? get period => (origin as PaginatedOvertimeHistoryProvider).period;
  @override
  String? get status => (origin as PaginatedOvertimeHistoryProvider).status;
}

String _$overtimeStatsHash() => r'8ebd384fd0abcfad0197b56b2ca9a6fb93d56170';

abstract class _$OvertimeStats
    extends BuildlessAutoDisposeAsyncNotifier<OvertimeStatistics> {
  late final String? period;

  FutureOr<OvertimeStatistics> build({
    String? period,
  });
}

/// See also [OvertimeStats].
@ProviderFor(OvertimeStats)
const overtimeStatsProvider = OvertimeStatsFamily();

/// See also [OvertimeStats].
class OvertimeStatsFamily extends Family<AsyncValue<OvertimeStatistics>> {
  /// See also [OvertimeStats].
  const OvertimeStatsFamily();

  /// See also [OvertimeStats].
  OvertimeStatsProvider call({
    String? period,
  }) {
    return OvertimeStatsProvider(
      period: period,
    );
  }

  @override
  OvertimeStatsProvider getProviderOverride(
    covariant OvertimeStatsProvider provider,
  ) {
    return call(
      period: provider.period,
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
  String? get name => r'overtimeStatsProvider';
}

/// See also [OvertimeStats].
class OvertimeStatsProvider extends AutoDisposeAsyncNotifierProviderImpl<
    OvertimeStats, OvertimeStatistics> {
  /// See also [OvertimeStats].
  OvertimeStatsProvider({
    String? period,
  }) : this._internal(
          () => OvertimeStats()..period = period,
          from: overtimeStatsProvider,
          name: r'overtimeStatsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$overtimeStatsHash,
          dependencies: OvertimeStatsFamily._dependencies,
          allTransitiveDependencies:
              OvertimeStatsFamily._allTransitiveDependencies,
          period: period,
        );

  OvertimeStatsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.period,
  }) : super.internal();

  final String? period;

  @override
  FutureOr<OvertimeStatistics> runNotifierBuild(
    covariant OvertimeStats notifier,
  ) {
    return notifier.build(
      period: period,
    );
  }

  @override
  Override overrideWith(OvertimeStats Function() create) {
    return ProviderOverride(
      origin: this,
      override: OvertimeStatsProvider._internal(
        () => create()..period = period,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        period: period,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<OvertimeStats, OvertimeStatistics>
      createElement() {
    return _OvertimeStatsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is OvertimeStatsProvider && other.period == period;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, period.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin OvertimeStatsRef
    on AutoDisposeAsyncNotifierProviderRef<OvertimeStatistics> {
  /// The parameter `period` of this provider.
  String? get period;
}

class _OvertimeStatsProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<OvertimeStats,
        OvertimeStatistics> with OvertimeStatsRef {
  _OvertimeStatsProviderElement(super.provider);

  @override
  String? get period => (origin as OvertimeStatsProvider).period;
}

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
String _$workingShiftListHash() => r'e861a7cf868b43ef96b31f1d0cf0d6e35f00157c';

/// See also [WorkingShiftList].
@ProviderFor(WorkingShiftList)
final workingShiftListProvider = AutoDisposeAsyncNotifierProvider<
    WorkingShiftList, WorkingShiftResponseModel>.internal(
  WorkingShiftList.new,
  name: r'workingShiftListProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$workingShiftListHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$WorkingShiftList
    = AutoDisposeAsyncNotifier<WorkingShiftResponseModel>;
String _$updateAttendanceHash() => r'717ee030723f776f3ba77877df5b958259afe231';

/// See also [UpdateAttendance].
@ProviderFor(UpdateAttendance)
final updateAttendanceProvider = AutoDisposeNotifierProvider<UpdateAttendance,
    UpdateAttendanceState>.internal(
  UpdateAttendance.new,
  name: r'updateAttendanceProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$updateAttendanceHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$UpdateAttendance = AutoDisposeNotifier<UpdateAttendanceState>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
