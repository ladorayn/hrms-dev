// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'face_registration_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$uploadFaceNotifierHash() =>
    r'561d9c1334b1ffedc468a3827af81e1ac8b22fb8';

/// See also [UploadFaceNotifier].
@ProviderFor(UploadFaceNotifier)
final uploadFaceNotifierProvider = AutoDisposeNotifierProvider<
    UploadFaceNotifier, AsyncValue<UploadFace?>>.internal(
  UploadFaceNotifier.new,
  name: r'uploadFaceNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$uploadFaceNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$UploadFaceNotifier = AutoDisposeNotifier<AsyncValue<UploadFace?>>;
String _$faceRegistrationHash() => r'15b24a9c0c13d497cc54fd428c4384222370038e';

/// See also [FaceRegistration].
@ProviderFor(FaceRegistration)
final faceRegistrationProvider = AutoDisposeNotifierProvider<FaceRegistration,
    FaceRegistrationState>.internal(
  FaceRegistration.new,
  name: r'faceRegistrationProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$faceRegistrationHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$FaceRegistration = AutoDisposeNotifier<FaceRegistrationState>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
