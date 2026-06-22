// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'face_verification_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$verifyFaceNotifierHash() =>
    r'05af9c6ee26852d5641a4067c4cf767d65c18cd9';

/// See also [VerifyFaceNotifier].
@ProviderFor(VerifyFaceNotifier)
final verifyFaceNotifierProvider = AutoDisposeNotifierProvider<
    VerifyFaceNotifier, AsyncValue<FaceVerify?>>.internal(
  VerifyFaceNotifier.new,
  name: r'verifyFaceNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$verifyFaceNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$VerifyFaceNotifier = AutoDisposeNotifier<AsyncValue<FaceVerify?>>;
String _$faceVerificationHash() => r'810c2472dfa7541390ba275cbf7b9c22b0307991';

/// See also [FaceVerification].
@ProviderFor(FaceVerification)
final faceVerificationProvider = AutoDisposeNotifierProvider<FaceVerification,
    FaceVerificationState>.internal(
  FaceVerification.new,
  name: r'faceVerificationProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$faceVerificationHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$FaceVerification = AutoDisposeNotifier<FaceVerificationState>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
