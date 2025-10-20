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
String _$leaveNotifierHash() => r'14175d0434b860e62ed6eca0ba254b4da881caef';

/// See also [LeaveNotifier].
@ProviderFor(LeaveNotifier)
final leaveNotifierProvider =
    AutoDisposeAsyncNotifierProvider<LeaveNotifier, void>.internal(
  LeaveNotifier.new,
  name: r'leaveNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$leaveNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$LeaveNotifier = AutoDisposeAsyncNotifier<void>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
