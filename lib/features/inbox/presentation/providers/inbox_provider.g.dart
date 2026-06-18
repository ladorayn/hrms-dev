// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inbox_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$recentNotificationsHash() =>
    r'42964befbef8600b498e0749ef298153361c0eb7';

/// See also [RecentNotifications].
@ProviderFor(RecentNotifications)
final recentNotificationsProvider = AutoDisposeAsyncNotifierProvider<
    RecentNotifications, List<NotificationResponse>>.internal(
  RecentNotifications.new,
  name: r'recentNotificationsProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$recentNotificationsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$RecentNotifications
    = AutoDisposeAsyncNotifier<List<NotificationResponse>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
