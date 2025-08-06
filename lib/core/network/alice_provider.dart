import 'package:alice/alice.dart';
import 'package:alice/model/alice_configuration.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hrms_mobile/core/navigation/global_navigator.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'alice_provider.g.dart';

@riverpod
Alice alice(Ref ref) {
  return Alice(
    configuration: AliceConfiguration(
      showNotification: true,
      showInspectorOnShake: true,
      notificationIcon: '@mipmap/ic_launcher',
      navigatorKey: globalNavigatorKey,
    ),
  );
}
