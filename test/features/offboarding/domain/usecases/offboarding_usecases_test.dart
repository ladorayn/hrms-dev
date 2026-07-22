import 'package:flutter_test/flutter_test.dart';
import 'package:hrms_mobile/core/data/models/form_fields_response.dart';
import 'package:hrms_mobile/core/errors/exceptions.dart';
import 'package:hrms_mobile/features/offboarding/data/models/request/exit_form_request.dart';
import 'package:hrms_mobile/features/offboarding/data/models/request/handover_bulk_update_request.dart';
import 'package:hrms_mobile/features/offboarding/data/models/request/handover_validate_request.dart';
import 'package:hrms_mobile/features/offboarding/data/models/response/offboarding_handover_item_response.dart';
import 'package:hrms_mobile/features/offboarding/data/models/response/offboarding_handover_response.dart';
import 'package:hrms_mobile/features/offboarding/data/models/response/offboarding_status_response.dart';
import 'package:hrms_mobile/features/offboarding/domain/repositories/offboarding_repository.dart';
import 'package:hrms_mobile/features/offboarding/domain/usecases/offboarding_usecases.dart';
import 'package:mocktail/mocktail.dart';

class MockOffboardingRepository extends Mock
    implements OffboardingRepository {}

class FakeExitFormRequest extends Fake implements ExitFormRequest {}

class FakeHandoverRequest extends Fake implements HandoverRequest {}

class FakeHandoverValidateRequest extends Fake
    implements HandoverValidateRequest {}

class FakeHandoverCategoryItemRequest extends Fake
    implements HandoverCategoryItemRequest {}

void main() {
  late MockOffboardingRepository mockRepo;
  late OffboardingUsecases useCase;

  const status = OffboardingStatusResponse(id: 5, formId: 2, status: 1);

  const progress = OffboardingProgress(
    id: 1,
    type: 'exit_form',
    label: 'Exit Form',
    isCompleted: false,
  );

  const formField = FormFields(
    id: 1,
    isRequired: true,
    order: 1,
    label: 'Reason',
  );

  const exitRequest = ExitFormRequest(
    submissions: [
      SubmissionForm(fieldId: 1, value: 'Relocation'),
    ],
  );

  const handoverRequest = HandoverRequest(
    category: 'asset',
    data: [],
  );

  const validateRequest = HandoverValidateRequest(handoverAssetId: 9);

  const categoryRequest = HandoverCategoryItemRequest(category: 'asset');

  const handoverItem = HandoverItem(id: 3, category: 'asset', name: 'Laptop');

  const handoverItems = HandoverItems(
    id: 3,
    category: 'asset',
    name: 'Laptop',
    status: 1,
    statusLabel: 'Pending',
    createdAt: '2024-01-01',
    recipients: [],
  );

  setUpAll(() {
    registerFallbackValue(FakeExitFormRequest());
    registerFallbackValue(FakeHandoverRequest());
    registerFallbackValue(FakeHandoverValidateRequest());
    registerFallbackValue(FakeHandoverCategoryItemRequest());
  });

  setUp(() {
    mockRepo = MockOffboardingRepository();
    useCase = OffboardingUsecases(mockRepo);
  });

  group('checkStatus', () {
    test('returns status from repository', () async {
      when(() => mockRepo.offboardingStatus())
          .thenAnswer((_) async => status);

      final result = await useCase.checkStatus();

      expect(result?.id, 5);
      verify(() => mockRepo.offboardingStatus()).called(1);
    });

    test('rethrows NetworkException from repository', () async {
      when(() => mockRepo.offboardingStatus()).thenThrow(
        NetworkException('Please check your internet connection.'),
      );

      await expectLater(
        () => useCase.checkStatus(),
        throwsA(isA<NetworkException>()),
      );
    });
  });

  group('checkProgress', () {
    test('forwards id and returns progress list', () async {
      when(
        () => mockRepo.offboardingProgress(id: any(named: 'id')),
      ).thenAnswer((_) async => [progress]);

      final result = await useCase.checkProgress(id: 5);

      expect(result, hasLength(1));
      expect(result.first.type, 'exit_form');
      verify(() => mockRepo.offboardingProgress(id: 5)).called(1);
    });

    test('rethrows ServerException from repository', () async {
      when(
        () => mockRepo.offboardingProgress(id: any(named: 'id')),
      ).thenThrow(ServerException('Failed'));

      await expectLater(
        () => useCase.checkProgress(id: 5),
        throwsA(isA<ServerException>()),
      );
    });
  });

  group('getHandoverItems', () {
    test('forwards request and returns items', () async {
      when(
        () => mockRepo.getHandoverItems(request: any(named: 'request')),
      ).thenAnswer((_) async => [handoverItems]);

      final result =
          await useCase.getHandoverItems(request: categoryRequest);

      expect(result.first.name, 'Laptop');
      verify(
        () => mockRepo.getHandoverItems(request: categoryRequest),
      ).called(1);
    });

    test('rethrows NetworkException from repository', () async {
      when(
        () => mockRepo.getHandoverItems(request: any(named: 'request')),
      ).thenThrow(NetworkException('offline'));

      await expectLater(
        () => useCase.getHandoverItems(request: categoryRequest),
        throwsA(isA<NetworkException>()),
      );
    });
  });

  group('getFormFields', () {
    test('forwards formId and returns fields', () async {
      when(
        () => mockRepo.offboardingFormFields(formId: any(named: 'formId')),
      ).thenAnswer((_) async => [formField]);

      final result = await useCase.getFormFields(formId: 2);

      expect(result.first.label, 'Reason');
      verify(() => mockRepo.offboardingFormFields(formId: 2)).called(1);
    });

    test('rethrows DataNotFoundException from repository', () async {
      when(
        () => mockRepo.offboardingFormFields(formId: any(named: 'formId')),
      ).thenThrow(DataNotFoundException('Form not found'));

      await expectLater(
        () => useCase.getFormFields(formId: 99),
        throwsA(isA<DataNotFoundException>()),
      );
    });
  });

  group('submitExitForm', () {
    test('forwards request, formId, and offboardingId', () async {
      when(
        () => mockRepo.exitFormSubmission(
          request: any(named: 'request'),
          formId: any(named: 'formId'),
          offboardingId: any(named: 'offboardingId'),
        ),
      ).thenAnswer((_) async => {'ok': true});

      final result = await useCase.submitExitForm(
        request: exitRequest,
        formId: 2,
        offboardingId: 5,
      );

      expect(result, {'ok': true});
      verify(
        () => mockRepo.exitFormSubmission(
          request: exitRequest,
          formId: 2,
          offboardingId: 5,
        ),
      ).called(1);
    });

    test('rethrows ValidationException from repository', () async {
      when(
        () => mockRepo.exitFormSubmission(
          request: any(named: 'request'),
          formId: any(named: 'formId'),
          offboardingId: any(named: 'offboardingId'),
        ),
      ).thenThrow(
        ValidationException('Invalid', {'value': ['required']}),
      );

      await expectLater(
        () => useCase.submitExitForm(
          request: exitRequest,
          formId: 2,
          offboardingId: 5,
        ),
        throwsA(isA<ValidationException>()),
      );
    });
  });

  group('submitHandover', () {
    test('forwards request and offboardingId', () async {
      when(
        () => mockRepo.submitHandover(
          request: any(named: 'request'),
          offboardingId: any(named: 'offboardingId'),
        ),
      ).thenAnswer((_) async => {'ok': true});

      final result = await useCase.submitHandover(
        request: handoverRequest,
        offboardingId: 5,
      );

      expect(result, {'ok': true});
      verify(
        () => mockRepo.submitHandover(
          request: handoverRequest,
          offboardingId: 5,
        ),
      ).called(1);
    });

    test('rethrows ServerException from repository', () async {
      when(
        () => mockRepo.submitHandover(
          request: any(named: 'request'),
          offboardingId: any(named: 'offboardingId'),
        ),
      ).thenThrow(ServerException('Submit failed'));

      await expectLater(
        () => useCase.submitHandover(
          request: handoverRequest,
          offboardingId: 5,
        ),
        throwsA(isA<ServerException>()),
      );
    });
  });

  group('validateHandover', () {
    test('forwards request and offboardingId', () async {
      when(
        () => mockRepo.validateHandover(
          request: any(named: 'request'),
          offboardingId: any(named: 'offboardingId'),
        ),
      ).thenAnswer((_) async => {'validated': true});

      final result = await useCase.validateHandover(
        request: validateRequest,
        offboardingId: '5',
      );

      expect(result, {'validated': true});
      verify(
        () => mockRepo.validateHandover(
          request: validateRequest,
          offboardingId: '5',
        ),
      ).called(1);
    });

    test('rethrows UnauthorizedException from repository', () async {
      when(
        () => mockRepo.validateHandover(
          request: any(named: 'request'),
          offboardingId: any(named: 'offboardingId'),
        ),
      ).thenThrow(UnauthorizedException('Forbidden'));

      await expectLater(
        () => useCase.validateHandover(
          request: validateRequest,
          offboardingId: '5',
        ),
        throwsA(isA<UnauthorizedException>()),
      );
    });
  });

  group('getHandover', () {
    test('forwards offboardingId, category, and userId', () async {
      when(
        () => mockRepo.getHandover(
          offboardingId: any(named: 'offboardingId'),
          category: any(named: 'category'),
          userId: any(named: 'userId'),
        ),
      ).thenAnswer((_) async => [handoverItem]);

      final result = await useCase.getHandover(
        offboardingId: '5',
        category: 'asset',
        userId: '1',
      );

      expect(result.first.id, 3);
      verify(
        () => mockRepo.getHandover(
          offboardingId: '5',
          category: 'asset',
          userId: '1',
        ),
      ).called(1);
    });

    test('rethrows NetworkException from repository', () async {
      when(
        () => mockRepo.getHandover(
          offboardingId: any(named: 'offboardingId'),
          category: any(named: 'category'),
          userId: any(named: 'userId'),
        ),
      ).thenThrow(NetworkException('offline'));

      await expectLater(
        () => useCase.getHandover(
          offboardingId: '5',
          category: 'asset',
          userId: '1',
        ),
        throwsA(isA<NetworkException>()),
      );
    });
  });
}
