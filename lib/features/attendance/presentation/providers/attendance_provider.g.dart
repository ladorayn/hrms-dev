// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attendance_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$clockInHash() => r'4b177b73467da65fe1f69ce47b2044fc5b0315ae';

/// See also [ClockIn].
@ProviderFor(ClockIn)
final clockInProvider =
    AutoDisposeAsyncNotifierProvider<ClockIn, void>.internal(
  ClockIn.new,
  name: r'clockInProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$clockInHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$ClockIn = AutoDisposeAsyncNotifier<void>;
String _$clockOutHash() => r'b95128673bfe7f16adccb6feb010e5875cbe86e0';

/// See also [ClockOut].
@ProviderFor(ClockOut)
final clockOutProvider =
    AutoDisposeAsyncNotifierProvider<ClockOut, void>.internal(
  ClockOut.new,
  name: r'clockOutProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$clockOutHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$ClockOut = AutoDisposeAsyncNotifier<void>;
String _$attendanceHistoryHash() => r'e756c60e1b3405392351562fc7167784449f2574';

/// See also [AttendanceHistory].
@ProviderFor(AttendanceHistory)
final attendanceHistoryProvider = AutoDisposeAsyncNotifierProvider<
    AttendanceHistory, List<Attendance>>.internal(
  AttendanceHistory.new,
  name: r'attendanceHistoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$attendanceHistoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$AttendanceHistory = AutoDisposeAsyncNotifier<List<Attendance>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
