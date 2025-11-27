import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hrms_mobile/core/network/dio_provider.dart';
import 'package:hrms_mobile/features/inbox/data/data_sources/inbox_remote_source.dart';
import 'package:hrms_mobile/features/inbox/data/models/response/notification_response.dart';
import 'package:hrms_mobile/features/inbox/data/repositories/inbox_repository_impl.dart';
import 'package:hrms_mobile/features/inbox/domain/usecases/inbox_usecases.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'inbox_provider.g.dart';

final inboxRemoteSourceProvider = Provider<InboxRemoteSource>((ref) {
  final dio = ref.watch(dioProvider);
  return InboxRemoteSource(dio);
});

final inboxRepoProvider = Provider<InboxRepositoryImpl>((ref) {
  final remoteSource = ref.watch(inboxRemoteSourceProvider);
  return InboxRepositoryImpl(remoteSource: remoteSource);
});

final inboxUseCaseProvider =
    Provider((ref) => InboxUsecases(ref.watch(inboxRepoProvider)));

@riverpod
class RecentNotifications extends _$RecentNotifications {
  @override
  Future<List<NotificationResponse>> build() async {
    final usecase = ref.watch(inboxUseCaseProvider);
    return await usecase.getNotifications();
  }
}
