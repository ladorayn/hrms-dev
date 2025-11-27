// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inbox_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$recentNotificationsHash() =>
    r'122393bca9405e07db28a7e77293142c9f20dfcd';

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
