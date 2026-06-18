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
  int _page = 1;
  bool _hasMore = true;
  bool _isFetching = false;

  bool get hasMore => _hasMore;

  @override
  Future<List<NotificationResponse>> build() async {
    _page = 1;
    _hasMore = true;
    _isFetching = false;
    return _fetchPage(1);
  }

  Future<List<NotificationResponse>> _fetchPage(int page) async {
    final usecase = ref.watch(inboxUseCaseProvider);
    final response = await usecase.getNotifications(page: page);
    _hasMore = response.links?.next != null;
    return response.data;
  }

  Future<void> loadMore() async {
    if (_isFetching || state.isLoading || state.isRefreshing || state.isReloading) return;
    if (!_hasMore) return;

    final currentData = state.valueOrNull ?? [];

    _isFetching = true;
    try {
      _page++;
      final newData = await _fetchPage(_page);
      state = AsyncData([...currentData, ...newData]);
    } catch (e, st) {
      _page--;
    } finally {
      _isFetching = false;
    }
  }

  Future<void> refresh() async {
    if (_isFetching) return;
    _page = 1;
    _hasMore = true;
    _isFetching = true;
    state = const AsyncLoading();
    try {
      final newData = await _fetchPage(1);
      state = AsyncData(newData);
    } catch (e, st) {
      state = AsyncError(e, st);
    } finally {
      _isFetching = false;
    }
  }
}
