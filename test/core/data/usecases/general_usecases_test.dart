import 'dart:typed_data';

import 'package:file_picker/file_picker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hrms_mobile/core/data/models/face_recognition/face_profile_response.dart';
import 'package:hrms_mobile/core/data/models/face_recognition/face_verify_response.dart';
import 'package:hrms_mobile/core/data/models/face_recognition/upload_face_response.dart';
import 'package:hrms_mobile/core/data/models/form_fields_response.dart';
import 'package:hrms_mobile/core/data/models/upload_file_response.dart';
import 'package:hrms_mobile/core/data/repositories/general_repository/general_repository.dart';
import 'package:hrms_mobile/core/data/usecases/general/general_usecases.dart';
import 'package:hrms_mobile/core/errors/exceptions.dart';
import 'package:mocktail/mocktail.dart';

class MockGeneralRepository extends Mock implements GeneralRepository {}

class FakePlatformFile extends Fake implements PlatformFile {}

void main() {
  late MockGeneralRepository mockRepo;
  late GeneralUsecases useCase;

  final platformFile = PlatformFile(
    name: 'face.jpg',
    size: 3,
    bytes: Uint8List.fromList([1, 2, 3]),
  );

  const facesProfile = UserProfileData(
    id: 1,
    name: 'Ada',
    email: 'ada@example.com',
    faces: [],
  );

  const faceVerify = FaceVerify(
    userId: 1,
    isMatch: true,
    similarityScore: 0.95,
  );

  const uploadFace = UploadFace(
    message: 'uploaded',
    photoPath: '/faces/face.jpg',
  );

  const uploadFile = UploadFile(
    path: '/files/doc.pdf',
    disk: 's3',
    filename: 'doc.pdf',
    mimeType: 'application/pdf',
    size: 100,
    url: 'https://cdn.example.com/doc.pdf',
  );

  const formDetail = FormDetailResponse(
    id: 10,
    name: 'Exit Form',
    code: 'EXIT',
    createdAt: '2024-01-01',
    updatedAt: '2024-01-01',
    type: 1,
    groups: [],
  );

  setUpAll(() {
    registerFallbackValue(FakePlatformFile());
  });

  setUp(() {
    mockRepo = MockGeneralRepository();
    useCase = GeneralUsecases(mockRepo);
  });

  group('getFacesProfile', () {
    test('returns profile from repository', () async {
      when(() => mockRepo.getFacesProfile())
          .thenAnswer((_) async => facesProfile);

      final result = await useCase.getFacesProfile();

      expect(result.id, 1);
      expect(result.email, 'ada@example.com');
      verify(() => mockRepo.getFacesProfile()).called(1);
    });

    test('rethrows NetworkException from repository', () async {
      when(() => mockRepo.getFacesProfile())
          .thenThrow(NetworkException('offline'));

      await expectLater(
        () => useCase.getFacesProfile(),
        throwsA(isA<NetworkException>()),
      );
    });
  });

  group('verifyFace', () {
    test('forwards file and returns verify result', () async {
      when(
        () => mockRepo.verifyFace(file: any(named: 'file')),
      ).thenAnswer((_) async => faceVerify);

      final result = await useCase.verifyFace(file: platformFile);

      expect(result.isMatch, isTrue);
      verify(() => mockRepo.verifyFace(file: platformFile)).called(1);
    });

    test('rethrows ServerException from repository', () async {
      when(
        () => mockRepo.verifyFace(file: any(named: 'file')),
      ).thenThrow(ServerException('Face verify failed'));

      await expectLater(
        () => useCase.verifyFace(file: platformFile),
        throwsA(isA<ServerException>()),
      );
    });
  });

  group('getDetailFormFields', () {
    test('forwards formId and returns form detail', () async {
      when(
        () => mockRepo.getDetailFormFields(formId: any(named: 'formId')),
      ).thenAnswer((_) async => formDetail);

      final result = await useCase.getDetailFormFields(formId: 10);

      expect(result.code, 'EXIT');
      verify(() => mockRepo.getDetailFormFields(formId: 10)).called(1);
    });

    test('rethrows DataNotFoundException from repository', () async {
      when(
        () => mockRepo.getDetailFormFields(formId: any(named: 'formId')),
      ).thenThrow(DataNotFoundException('Form not found'));

      await expectLater(
        () => useCase.getDetailFormFields(formId: 99),
        throwsA(isA<DataNotFoundException>()),
      );
    });
  });

  group('uploadFace', () {
    test('forwards file and returns upload result', () async {
      when(
        () => mockRepo.uploadFace(file: any(named: 'file')),
      ).thenAnswer((_) async => uploadFace);

      final result = await useCase.uploadFace(file: platformFile);

      expect(result.photoPath, '/faces/face.jpg');
      verify(() => mockRepo.uploadFace(file: platformFile)).called(1);
    });

    test('rethrows ValidationException from repository', () async {
      when(
        () => mockRepo.uploadFace(file: any(named: 'file')),
      ).thenThrow(
        ValidationException('Invalid', {'file': ['required']}),
      );

      await expectLater(
        () => useCase.uploadFace(file: platformFile),
        throwsA(isA<ValidationException>()),
      );
    });
  });

  group('uploadFile', () {
    test('forwards file and returns upload result', () async {
      when(
        () => mockRepo.uploadFile(file: any(named: 'file')),
      ).thenAnswer((_) async => uploadFile);

      final result = await useCase.uploadFile(file: platformFile);

      expect(result.filename, 'doc.pdf');
      verify(() => mockRepo.uploadFile(file: platformFile)).called(1);
    });

    test('rethrows NetworkException from repository', () async {
      when(
        () => mockRepo.uploadFile(file: any(named: 'file')),
      ).thenThrow(NetworkException('offline'));

      await expectLater(
        () => useCase.uploadFile(file: platformFile),
        throwsA(isA<NetworkException>()),
      );
    });
  });
}
