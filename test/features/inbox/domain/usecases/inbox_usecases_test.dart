import 'package:flutter_test/flutter_test.dart';
import 'package:hrms_mobile/core/data/models/base_paginated_response.dart';
import 'package:hrms_mobile/core/errors/exceptions.dart';
import 'package:hrms_mobile/features/inbox/data/models/response/notification_response.dart';
import 'package:hrms_mobile/features/inbox/domain/repositories/inbox_repository.dart';
import 'package:hrms_mobile/features/inbox/domain/usecases/inbox_usecases.dart';
import 'package:mocktail/mocktail.dart';

class MockInboxRepository extends Mock implements InboxRepository {}

void main() {
  late MockInboxRepository mockRepo;
  late InboxUsecases useCase;

  const notification = NotificationResponse(
    id: 'n-1',
    notifiableId: 1,
    data: NotificationData(
      title: 'Leave updated',
      message: 'Your leave was approved',
      code: 'LEAVE_UPDATED',
      data: null,
    ),
  );

  const paginated = BasePaginatedResponse<NotificationResponse>(
    data: [notification],
    meta: MetaModel(
      currentPage: 1,
      lastPage: 1,
      perPage: 10,
      total: 1,
      path: '/notifications',
    ),
  );

  setUp(() {
    mockRepo = MockInboxRepository();
    useCase = InboxUsecases(mockRepo);
  });

  group('getNotifications', () {
    test('forwards page and returns paginated response', () async {
      when(
        () => mockRepo.getNotifications(page: any(named: 'page')),
      ).thenAnswer((_) async => paginated);

      final result = await useCase.getNotifications(page: 2);

      expect(result.data, hasLength(1));
      expect(result.data.first.id, 'n-1');
      expect(result.meta?.total, 1);
      verify(() => mockRepo.getNotifications(page: 2)).called(1);
    });

    test('rethrows NetworkException from repository', () async {
      when(
        () => mockRepo.getNotifications(page: any(named: 'page')),
      ).thenThrow(
        NetworkException('Please check your internet connection.'),
      );

      await expectLater(
        () => useCase.getNotifications(page: 1),
        throwsA(isA<NetworkException>()),
      );
    });
  });
}
