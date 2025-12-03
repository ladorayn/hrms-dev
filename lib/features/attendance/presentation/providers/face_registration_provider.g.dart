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
String _$faceRegistrationHash() => r'4016f88aa59ad645cd785be6876dd2eceb12bc56';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$FaceRegistration
    extends BuildlessAutoDisposeNotifier<FaceRegistrationState> {
  late final int initialFaceCount;

  FaceRegistrationState build(
    int initialFaceCount,
  );
}

/// See also [FaceRegistration].
@ProviderFor(FaceRegistration)
const faceRegistrationProvider = FaceRegistrationFamily();

/// See also [FaceRegistration].
class FaceRegistrationFamily extends Family<FaceRegistrationState> {
  /// See also [FaceRegistration].
  const FaceRegistrationFamily();

  /// See also [FaceRegistration].
  FaceRegistrationProvider call(
    int initialFaceCount,
  ) {
    return FaceRegistrationProvider(
      initialFaceCount,
    );
  }

  @override
  FaceRegistrationProvider getProviderOverride(
    covariant FaceRegistrationProvider provider,
  ) {
    return call(
      provider.initialFaceCount,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'faceRegistrationProvider';
}

/// See also [FaceRegistration].
class FaceRegistrationProvider extends AutoDisposeNotifierProviderImpl<
    FaceRegistration, FaceRegistrationState> {
  /// See also [FaceRegistration].
  FaceRegistrationProvider(
    int initialFaceCount,
  ) : this._internal(
          () => FaceRegistration()..initialFaceCount = initialFaceCount,
          from: faceRegistrationProvider,
          name: r'faceRegistrationProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$faceRegistrationHash,
          dependencies: FaceRegistrationFamily._dependencies,
          allTransitiveDependencies:
              FaceRegistrationFamily._allTransitiveDependencies,
          initialFaceCount: initialFaceCount,
        );

  FaceRegistrationProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.initialFaceCount,
  }) : super.internal();

  final int initialFaceCount;

  @override
  FaceRegistrationState runNotifierBuild(
    covariant FaceRegistration notifier,
  ) {
    return notifier.build(
      initialFaceCount,
    );
  }

  @override
  Override overrideWith(FaceRegistration Function() create) {
    return ProviderOverride(
      origin: this,
      override: FaceRegistrationProvider._internal(
        () => create()..initialFaceCount = initialFaceCount,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        initialFaceCount: initialFaceCount,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<FaceRegistration, FaceRegistrationState>
      createElement() {
    return _FaceRegistrationProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FaceRegistrationProvider &&
        other.initialFaceCount == initialFaceCount;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, initialFaceCount.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin FaceRegistrationRef
    on AutoDisposeNotifierProviderRef<FaceRegistrationState> {
  /// The parameter `initialFaceCount` of this provider.
  int get initialFaceCount;
}

class _FaceRegistrationProviderElement
    extends AutoDisposeNotifierProviderElement<FaceRegistration,
        FaceRegistrationState> with FaceRegistrationRef {
  _FaceRegistrationProviderElement(super.provider);

  @override
  int get initialFaceCount =>
      (origin as FaceRegistrationProvider).initialFaceCount;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
