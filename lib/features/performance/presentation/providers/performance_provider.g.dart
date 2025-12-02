// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'performance_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$performanceFormFieldsHash() =>
    r'a75bb9bdb60e4c6207fb56c9c3cf2f16e3e243ba';

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

abstract class _$PerformanceFormFields
    extends BuildlessAutoDisposeAsyncNotifier<List<FormFields>> {
  late final int formId;

  FutureOr<List<FormFields>> build({
    required int formId,
  });
}

/// See also [PerformanceFormFields].
@ProviderFor(PerformanceFormFields)
const performanceFormFieldsProvider = PerformanceFormFieldsFamily();

/// See also [PerformanceFormFields].
class PerformanceFormFieldsFamily extends Family<AsyncValue<List<FormFields>>> {
  /// See also [PerformanceFormFields].
  const PerformanceFormFieldsFamily();

  /// See also [PerformanceFormFields].
  PerformanceFormFieldsProvider call({
    required int formId,
  }) {
    return PerformanceFormFieldsProvider(
      formId: formId,
    );
  }

  @override
  PerformanceFormFieldsProvider getProviderOverride(
    covariant PerformanceFormFieldsProvider provider,
  ) {
    return call(
      formId: provider.formId,
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
  String? get name => r'performanceFormFieldsProvider';
}

/// See also [PerformanceFormFields].
class PerformanceFormFieldsProvider
    extends AutoDisposeAsyncNotifierProviderImpl<PerformanceFormFields,
        List<FormFields>> {
  /// See also [PerformanceFormFields].
  PerformanceFormFieldsProvider({
    required int formId,
  }) : this._internal(
          () => PerformanceFormFields()..formId = formId,
          from: performanceFormFieldsProvider,
          name: r'performanceFormFieldsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$performanceFormFieldsHash,
          dependencies: PerformanceFormFieldsFamily._dependencies,
          allTransitiveDependencies:
              PerformanceFormFieldsFamily._allTransitiveDependencies,
          formId: formId,
        );

  PerformanceFormFieldsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.formId,
  }) : super.internal();

  final int formId;

  @override
  FutureOr<List<FormFields>> runNotifierBuild(
    covariant PerformanceFormFields notifier,
  ) {
    return notifier.build(
      formId: formId,
    );
  }

  @override
  Override overrideWith(PerformanceFormFields Function() create) {
    return ProviderOverride(
      origin: this,
      override: PerformanceFormFieldsProvider._internal(
        () => create()..formId = formId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        formId: formId,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<PerformanceFormFields,
      List<FormFields>> createElement() {
    return _PerformanceFormFieldsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PerformanceFormFieldsProvider && other.formId == formId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, formId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin PerformanceFormFieldsRef
    on AutoDisposeAsyncNotifierProviderRef<List<FormFields>> {
  /// The parameter `formId` of this provider.
  int get formId;
}

class _PerformanceFormFieldsProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<PerformanceFormFields,
        List<FormFields>> with PerformanceFormFieldsRef {
  _PerformanceFormFieldsProviderElement(super.provider);

  @override
  int get formId => (origin as PerformanceFormFieldsProvider).formId;
}

String _$performanceFormFieldsByGroupHash() =>
    r'e1ca08738ade76567c09bab69c64ec5edcd597a1';

abstract class _$PerformanceFormFieldsByGroup
    extends BuildlessAutoDisposeAsyncNotifier<List<FormFieldsGroup>> {
  late final int formId;

  FutureOr<List<FormFieldsGroup>> build({
    required int formId,
  });
}

/// See also [PerformanceFormFieldsByGroup].
@ProviderFor(PerformanceFormFieldsByGroup)
const performanceFormFieldsByGroupProvider =
    PerformanceFormFieldsByGroupFamily();

/// See also [PerformanceFormFieldsByGroup].
class PerformanceFormFieldsByGroupFamily
    extends Family<AsyncValue<List<FormFieldsGroup>>> {
  /// See also [PerformanceFormFieldsByGroup].
  const PerformanceFormFieldsByGroupFamily();

  /// See also [PerformanceFormFieldsByGroup].
  PerformanceFormFieldsByGroupProvider call({
    required int formId,
  }) {
    return PerformanceFormFieldsByGroupProvider(
      formId: formId,
    );
  }

  @override
  PerformanceFormFieldsByGroupProvider getProviderOverride(
    covariant PerformanceFormFieldsByGroupProvider provider,
  ) {
    return call(
      formId: provider.formId,
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
  String? get name => r'performanceFormFieldsByGroupProvider';
}

/// See also [PerformanceFormFieldsByGroup].
class PerformanceFormFieldsByGroupProvider
    extends AutoDisposeAsyncNotifierProviderImpl<PerformanceFormFieldsByGroup,
        List<FormFieldsGroup>> {
  /// See also [PerformanceFormFieldsByGroup].
  PerformanceFormFieldsByGroupProvider({
    required int formId,
  }) : this._internal(
          () => PerformanceFormFieldsByGroup()..formId = formId,
          from: performanceFormFieldsByGroupProvider,
          name: r'performanceFormFieldsByGroupProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$performanceFormFieldsByGroupHash,
          dependencies: PerformanceFormFieldsByGroupFamily._dependencies,
          allTransitiveDependencies:
              PerformanceFormFieldsByGroupFamily._allTransitiveDependencies,
          formId: formId,
        );

  PerformanceFormFieldsByGroupProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.formId,
  }) : super.internal();

  final int formId;

  @override
  FutureOr<List<FormFieldsGroup>> runNotifierBuild(
    covariant PerformanceFormFieldsByGroup notifier,
  ) {
    return notifier.build(
      formId: formId,
    );
  }

  @override
  Override overrideWith(PerformanceFormFieldsByGroup Function() create) {
    return ProviderOverride(
      origin: this,
      override: PerformanceFormFieldsByGroupProvider._internal(
        () => create()..formId = formId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        formId: formId,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<PerformanceFormFieldsByGroup,
      List<FormFieldsGroup>> createElement() {
    return _PerformanceFormFieldsByGroupProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PerformanceFormFieldsByGroupProvider &&
        other.formId == formId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, formId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin PerformanceFormFieldsByGroupRef
    on AutoDisposeAsyncNotifierProviderRef<List<FormFieldsGroup>> {
  /// The parameter `formId` of this provider.
  int get formId;
}

class _PerformanceFormFieldsByGroupProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<
        PerformanceFormFieldsByGroup,
        List<FormFieldsGroup>> with PerformanceFormFieldsByGroupRef {
  _PerformanceFormFieldsByGroupProviderElement(super.provider);

  @override
  int get formId => (origin as PerformanceFormFieldsByGroupProvider).formId;
}

String _$performanceAssessmentAnswerHash() =>
    r'90678e38f99da6187cb290e90b597cd84fdbf7c4';

abstract class _$PerformanceAssessmentAnswer
    extends BuildlessAutoDisposeAsyncNotifier<List<AssessmentAnswer>> {
  late final AssessmentAnswerRequest? request;

  FutureOr<List<AssessmentAnswer>> build({
    AssessmentAnswerRequest? request,
  });
}

/// See also [PerformanceAssessmentAnswer].
@ProviderFor(PerformanceAssessmentAnswer)
const performanceAssessmentAnswerProvider = PerformanceAssessmentAnswerFamily();

/// See also [PerformanceAssessmentAnswer].
class PerformanceAssessmentAnswerFamily
    extends Family<AsyncValue<List<AssessmentAnswer>>> {
  /// See also [PerformanceAssessmentAnswer].
  const PerformanceAssessmentAnswerFamily();

  /// See also [PerformanceAssessmentAnswer].
  PerformanceAssessmentAnswerProvider call({
    AssessmentAnswerRequest? request,
  }) {
    return PerformanceAssessmentAnswerProvider(
      request: request,
    );
  }

  @override
  PerformanceAssessmentAnswerProvider getProviderOverride(
    covariant PerformanceAssessmentAnswerProvider provider,
  ) {
    return call(
      request: provider.request,
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
  String? get name => r'performanceAssessmentAnswerProvider';
}

/// See also [PerformanceAssessmentAnswer].
class PerformanceAssessmentAnswerProvider
    extends AutoDisposeAsyncNotifierProviderImpl<PerformanceAssessmentAnswer,
        List<AssessmentAnswer>> {
  /// See also [PerformanceAssessmentAnswer].
  PerformanceAssessmentAnswerProvider({
    AssessmentAnswerRequest? request,
  }) : this._internal(
          () => PerformanceAssessmentAnswer()..request = request,
          from: performanceAssessmentAnswerProvider,
          name: r'performanceAssessmentAnswerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$performanceAssessmentAnswerHash,
          dependencies: PerformanceAssessmentAnswerFamily._dependencies,
          allTransitiveDependencies:
              PerformanceAssessmentAnswerFamily._allTransitiveDependencies,
          request: request,
        );

  PerformanceAssessmentAnswerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.request,
  }) : super.internal();

  final AssessmentAnswerRequest? request;

  @override
  FutureOr<List<AssessmentAnswer>> runNotifierBuild(
    covariant PerformanceAssessmentAnswer notifier,
  ) {
    return notifier.build(
      request: request,
    );
  }

  @override
  Override overrideWith(PerformanceAssessmentAnswer Function() create) {
    return ProviderOverride(
      origin: this,
      override: PerformanceAssessmentAnswerProvider._internal(
        () => create()..request = request,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        request: request,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<PerformanceAssessmentAnswer,
      List<AssessmentAnswer>> createElement() {
    return _PerformanceAssessmentAnswerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PerformanceAssessmentAnswerProvider &&
        other.request == request;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, request.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin PerformanceAssessmentAnswerRef
    on AutoDisposeAsyncNotifierProviderRef<List<AssessmentAnswer>> {
  /// The parameter `request` of this provider.
  AssessmentAnswerRequest? get request;
}

class _PerformanceAssessmentAnswerProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<PerformanceAssessmentAnswer,
        List<AssessmentAnswer>> with PerformanceAssessmentAnswerRef {
  _PerformanceAssessmentAnswerProviderElement(super.provider);

  @override
  AssessmentAnswerRequest? get request =>
      (origin as PerformanceAssessmentAnswerProvider).request;
}

String _$assessmentFormSubmissionHash() =>
    r'473bc092f1631f17047b949adfb1c8fdb15d9955';

/// See also [AssessmentFormSubmission].
@ProviderFor(AssessmentFormSubmission)
final assessmentFormSubmissionProvider = AutoDisposeNotifierProvider<
    AssessmentFormSubmission, AsyncValue<dynamic>>.internal(
  AssessmentFormSubmission.new,
  name: r'assessmentFormSubmissionProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$assessmentFormSubmissionHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$AssessmentFormSubmission = AutoDisposeNotifier<AsyncValue<dynamic>>;
String _$assessmentListRHash() => r'e735a2e0b1247c60258d67144b2d29fcff425e42';

/// See also [AssessmentListR].
@ProviderFor(AssessmentListR)
final assessmentListRProvider = AutoDisposeAsyncNotifierProvider<
    AssessmentListR, List<AssessmentList>>.internal(
  AssessmentListR.new,
  name: r'assessmentListRProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$assessmentListRHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$AssessmentListR = AutoDisposeAsyncNotifier<List<AssessmentList>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
