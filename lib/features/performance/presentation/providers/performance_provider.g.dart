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

String _$performanceSupervisorAssessmentAnswerHash() =>
    r'b7d7e4df9bbe91658b9203b5e7268d126692f15b';

abstract class _$PerformanceSupervisorAssessmentAnswer
    extends BuildlessAutoDisposeAsyncNotifier<SupervisorAssessmentAnswer> {
  late final AssessmentAnswerRequest? request;

  FutureOr<SupervisorAssessmentAnswer> build({
    AssessmentAnswerRequest? request,
  });
}

/// See also [PerformanceSupervisorAssessmentAnswer].
@ProviderFor(PerformanceSupervisorAssessmentAnswer)
const performanceSupervisorAssessmentAnswerProvider =
    PerformanceSupervisorAssessmentAnswerFamily();

/// See also [PerformanceSupervisorAssessmentAnswer].
class PerformanceSupervisorAssessmentAnswerFamily
    extends Family<AsyncValue<SupervisorAssessmentAnswer>> {
  /// See also [PerformanceSupervisorAssessmentAnswer].
  const PerformanceSupervisorAssessmentAnswerFamily();

  /// See also [PerformanceSupervisorAssessmentAnswer].
  PerformanceSupervisorAssessmentAnswerProvider call({
    AssessmentAnswerRequest? request,
  }) {
    return PerformanceSupervisorAssessmentAnswerProvider(
      request: request,
    );
  }

  @override
  PerformanceSupervisorAssessmentAnswerProvider getProviderOverride(
    covariant PerformanceSupervisorAssessmentAnswerProvider provider,
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
  String? get name => r'performanceSupervisorAssessmentAnswerProvider';
}

/// See also [PerformanceSupervisorAssessmentAnswer].
class PerformanceSupervisorAssessmentAnswerProvider
    extends AutoDisposeAsyncNotifierProviderImpl<
        PerformanceSupervisorAssessmentAnswer, SupervisorAssessmentAnswer> {
  /// See also [PerformanceSupervisorAssessmentAnswer].
  PerformanceSupervisorAssessmentAnswerProvider({
    AssessmentAnswerRequest? request,
  }) : this._internal(
          () => PerformanceSupervisorAssessmentAnswer()..request = request,
          from: performanceSupervisorAssessmentAnswerProvider,
          name: r'performanceSupervisorAssessmentAnswerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$performanceSupervisorAssessmentAnswerHash,
          dependencies:
              PerformanceSupervisorAssessmentAnswerFamily._dependencies,
          allTransitiveDependencies: PerformanceSupervisorAssessmentAnswerFamily
              ._allTransitiveDependencies,
          request: request,
        );

  PerformanceSupervisorAssessmentAnswerProvider._internal(
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
  FutureOr<SupervisorAssessmentAnswer> runNotifierBuild(
    covariant PerformanceSupervisorAssessmentAnswer notifier,
  ) {
    return notifier.build(
      request: request,
    );
  }

  @override
  Override overrideWith(
      PerformanceSupervisorAssessmentAnswer Function() create) {
    return ProviderOverride(
      origin: this,
      override: PerformanceSupervisorAssessmentAnswerProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<PerformanceSupervisorAssessmentAnswer,
      SupervisorAssessmentAnswer> createElement() {
    return _PerformanceSupervisorAssessmentAnswerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PerformanceSupervisorAssessmentAnswerProvider &&
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
mixin PerformanceSupervisorAssessmentAnswerRef
    on AutoDisposeAsyncNotifierProviderRef<SupervisorAssessmentAnswer> {
  /// The parameter `request` of this provider.
  AssessmentAnswerRequest? get request;
}

class _PerformanceSupervisorAssessmentAnswerProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<
        PerformanceSupervisorAssessmentAnswer, SupervisorAssessmentAnswer>
    with PerformanceSupervisorAssessmentAnswerRef {
  _PerformanceSupervisorAssessmentAnswerProviderElement(super.provider);

  @override
  AssessmentAnswerRequest? get request =>
      (origin as PerformanceSupervisorAssessmentAnswerProvider).request;
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
String _$supervisorAssessmentFormSubmissionHash() =>
    r'a61c86440835a473cdd2cc86bd1a72aae0177f15';

/// See also [SupervisorAssessmentFormSubmission].
@ProviderFor(SupervisorAssessmentFormSubmission)
final supervisorAssessmentFormSubmissionProvider = AutoDisposeNotifierProvider<
    SupervisorAssessmentFormSubmission, AsyncValue<dynamic>>.internal(
  SupervisorAssessmentFormSubmission.new,
  name: r'supervisorAssessmentFormSubmissionProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$supervisorAssessmentFormSubmissionHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$SupervisorAssessmentFormSubmission
    = AutoDisposeNotifier<AsyncValue<dynamic>>;
String _$assessmentFormValidateSubmissionHash() =>
    r'b76ed161928cbcdc80d7627572573b8a48160cd4';

/// See also [AssessmentFormValidateSubmission].
@ProviderFor(AssessmentFormValidateSubmission)
final assessmentFormValidateSubmissionProvider = AutoDisposeNotifierProvider<
    AssessmentFormValidateSubmission, AsyncValue<dynamic>>.internal(
  AssessmentFormValidateSubmission.new,
  name: r'assessmentFormValidateSubmissionProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$assessmentFormValidateSubmissionHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$AssessmentFormValidateSubmission
    = AutoDisposeNotifier<AsyncValue<dynamic>>;
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
String _$performanceSupervisorAssessmentsHash() =>
    r'8a3ae3864bbe700bd3476251b89dbf959bb1fb46';

/// See also [PerformanceSupervisorAssessments].
@ProviderFor(PerformanceSupervisorAssessments)
final performanceSupervisorAssessmentsProvider =
    AutoDisposeAsyncNotifierProvider<PerformanceSupervisorAssessments,
        List<SupervisorAssessment>>.internal(
  PerformanceSupervisorAssessments.new,
  name: r'performanceSupervisorAssessmentsProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$performanceSupervisorAssessmentsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$PerformanceSupervisorAssessments
    = AutoDisposeAsyncNotifier<List<SupervisorAssessment>>;
String _$performanceSupervisorAssessmentDetailHash() =>
    r'62803df11001372a757dc9d3f1c3f5d4fd04a144';

abstract class _$PerformanceSupervisorAssessmentDetail
    extends BuildlessAutoDisposeAsyncNotifier<SupervisorAssessmentDetail> {
  late final dynamic supervisorAssessmentId;

  FutureOr<SupervisorAssessmentDetail> build({
    required dynamic supervisorAssessmentId,
  });
}

/// See also [PerformanceSupervisorAssessmentDetail].
@ProviderFor(PerformanceSupervisorAssessmentDetail)
const performanceSupervisorAssessmentDetailProvider =
    PerformanceSupervisorAssessmentDetailFamily();

/// See also [PerformanceSupervisorAssessmentDetail].
class PerformanceSupervisorAssessmentDetailFamily
    extends Family<AsyncValue<SupervisorAssessmentDetail>> {
  /// See also [PerformanceSupervisorAssessmentDetail].
  const PerformanceSupervisorAssessmentDetailFamily();

  /// See also [PerformanceSupervisorAssessmentDetail].
  PerformanceSupervisorAssessmentDetailProvider call({
    required dynamic supervisorAssessmentId,
  }) {
    return PerformanceSupervisorAssessmentDetailProvider(
      supervisorAssessmentId: supervisorAssessmentId,
    );
  }

  @override
  PerformanceSupervisorAssessmentDetailProvider getProviderOverride(
    covariant PerformanceSupervisorAssessmentDetailProvider provider,
  ) {
    return call(
      supervisorAssessmentId: provider.supervisorAssessmentId,
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
  String? get name => r'performanceSupervisorAssessmentDetailProvider';
}

/// See also [PerformanceSupervisorAssessmentDetail].
class PerformanceSupervisorAssessmentDetailProvider
    extends AutoDisposeAsyncNotifierProviderImpl<
        PerformanceSupervisorAssessmentDetail, SupervisorAssessmentDetail> {
  /// See also [PerformanceSupervisorAssessmentDetail].
  PerformanceSupervisorAssessmentDetailProvider({
    required dynamic supervisorAssessmentId,
  }) : this._internal(
          () => PerformanceSupervisorAssessmentDetail()
            ..supervisorAssessmentId = supervisorAssessmentId,
          from: performanceSupervisorAssessmentDetailProvider,
          name: r'performanceSupervisorAssessmentDetailProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$performanceSupervisorAssessmentDetailHash,
          dependencies:
              PerformanceSupervisorAssessmentDetailFamily._dependencies,
          allTransitiveDependencies: PerformanceSupervisorAssessmentDetailFamily
              ._allTransitiveDependencies,
          supervisorAssessmentId: supervisorAssessmentId,
        );

  PerformanceSupervisorAssessmentDetailProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.supervisorAssessmentId,
  }) : super.internal();

  final dynamic supervisorAssessmentId;

  @override
  FutureOr<SupervisorAssessmentDetail> runNotifierBuild(
    covariant PerformanceSupervisorAssessmentDetail notifier,
  ) {
    return notifier.build(
      supervisorAssessmentId: supervisorAssessmentId,
    );
  }

  @override
  Override overrideWith(
      PerformanceSupervisorAssessmentDetail Function() create) {
    return ProviderOverride(
      origin: this,
      override: PerformanceSupervisorAssessmentDetailProvider._internal(
        () => create()..supervisorAssessmentId = supervisorAssessmentId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        supervisorAssessmentId: supervisorAssessmentId,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<PerformanceSupervisorAssessmentDetail,
      SupervisorAssessmentDetail> createElement() {
    return _PerformanceSupervisorAssessmentDetailProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PerformanceSupervisorAssessmentDetailProvider &&
        other.supervisorAssessmentId == supervisorAssessmentId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, supervisorAssessmentId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin PerformanceSupervisorAssessmentDetailRef
    on AutoDisposeAsyncNotifierProviderRef<SupervisorAssessmentDetail> {
  /// The parameter `supervisorAssessmentId` of this provider.
  dynamic get supervisorAssessmentId;
}

class _PerformanceSupervisorAssessmentDetailProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<
        PerformanceSupervisorAssessmentDetail, SupervisorAssessmentDetail>
    with PerformanceSupervisorAssessmentDetailRef {
  _PerformanceSupervisorAssessmentDetailProviderElement(super.provider);

  @override
  dynamic get supervisorAssessmentId =>
      (origin as PerformanceSupervisorAssessmentDetailProvider)
          .supervisorAssessmentId;
}

String _$performanceSupervisorAssessmentGetFormHash() =>
    r'e5f76c11aa5b869452b7a185c55f4b81730edf02';

abstract class _$PerformanceSupervisorAssessmentGetForm
    extends BuildlessAutoDisposeAsyncNotifier<FormDetailResponse> {
  late final dynamic formId;

  FutureOr<FormDetailResponse> build({
    required dynamic formId,
  });
}

/// See also [PerformanceSupervisorAssessmentGetForm].
@ProviderFor(PerformanceSupervisorAssessmentGetForm)
const performanceSupervisorAssessmentGetFormProvider =
    PerformanceSupervisorAssessmentGetFormFamily();

/// See also [PerformanceSupervisorAssessmentGetForm].
class PerformanceSupervisorAssessmentGetFormFamily
    extends Family<AsyncValue<FormDetailResponse>> {
  /// See also [PerformanceSupervisorAssessmentGetForm].
  const PerformanceSupervisorAssessmentGetFormFamily();

  /// See also [PerformanceSupervisorAssessmentGetForm].
  PerformanceSupervisorAssessmentGetFormProvider call({
    required dynamic formId,
  }) {
    return PerformanceSupervisorAssessmentGetFormProvider(
      formId: formId,
    );
  }

  @override
  PerformanceSupervisorAssessmentGetFormProvider getProviderOverride(
    covariant PerformanceSupervisorAssessmentGetFormProvider provider,
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
  String? get name => r'performanceSupervisorAssessmentGetFormProvider';
}

/// See also [PerformanceSupervisorAssessmentGetForm].
class PerformanceSupervisorAssessmentGetFormProvider
    extends AutoDisposeAsyncNotifierProviderImpl<
        PerformanceSupervisorAssessmentGetForm, FormDetailResponse> {
  /// See also [PerformanceSupervisorAssessmentGetForm].
  PerformanceSupervisorAssessmentGetFormProvider({
    required dynamic formId,
  }) : this._internal(
          () => PerformanceSupervisorAssessmentGetForm()..formId = formId,
          from: performanceSupervisorAssessmentGetFormProvider,
          name: r'performanceSupervisorAssessmentGetFormProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$performanceSupervisorAssessmentGetFormHash,
          dependencies:
              PerformanceSupervisorAssessmentGetFormFamily._dependencies,
          allTransitiveDependencies:
              PerformanceSupervisorAssessmentGetFormFamily
                  ._allTransitiveDependencies,
          formId: formId,
        );

  PerformanceSupervisorAssessmentGetFormProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.formId,
  }) : super.internal();

  final dynamic formId;

  @override
  FutureOr<FormDetailResponse> runNotifierBuild(
    covariant PerformanceSupervisorAssessmentGetForm notifier,
  ) {
    return notifier.build(
      formId: formId,
    );
  }

  @override
  Override overrideWith(
      PerformanceSupervisorAssessmentGetForm Function() create) {
    return ProviderOverride(
      origin: this,
      override: PerformanceSupervisorAssessmentGetFormProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<
      PerformanceSupervisorAssessmentGetForm,
      FormDetailResponse> createElement() {
    return _PerformanceSupervisorAssessmentGetFormProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PerformanceSupervisorAssessmentGetFormProvider &&
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
mixin PerformanceSupervisorAssessmentGetFormRef
    on AutoDisposeAsyncNotifierProviderRef<FormDetailResponse> {
  /// The parameter `formId` of this provider.
  dynamic get formId;
}

class _PerformanceSupervisorAssessmentGetFormProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<
        PerformanceSupervisorAssessmentGetForm,
        FormDetailResponse> with PerformanceSupervisorAssessmentGetFormRef {
  _PerformanceSupervisorAssessmentGetFormProviderElement(super.provider);

  @override
  dynamic get formId =>
      (origin as PerformanceSupervisorAssessmentGetFormProvider).formId;
}

String _$oKRListRHash() => r'f942571d75c316f0f39cf4b6ed558962c22014fd';

/// See also [OKRListR].
@ProviderFor(OKRListR)
final oKRListRProvider =
    AutoDisposeAsyncNotifierProvider<OKRListR, List<OKRList>>.internal(
  OKRListR.new,
  name: r'oKRListRProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$oKRListRHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$OKRListR = AutoDisposeAsyncNotifier<List<OKRList>>;
String _$oKRDetailRHash() => r'd03c15adc28adda8eca6a150986071860fdb2f91';

abstract class _$OKRDetailR
    extends BuildlessAutoDisposeAsyncNotifier<OKRDetail> {
  late final dynamic okrId;

  FutureOr<OKRDetail> build({
    required dynamic okrId,
  });
}

/// See also [OKRDetailR].
@ProviderFor(OKRDetailR)
const oKRDetailRProvider = OKRDetailRFamily();

/// See also [OKRDetailR].
class OKRDetailRFamily extends Family<AsyncValue<OKRDetail>> {
  /// See also [OKRDetailR].
  const OKRDetailRFamily();

  /// See also [OKRDetailR].
  OKRDetailRProvider call({
    required dynamic okrId,
  }) {
    return OKRDetailRProvider(
      okrId: okrId,
    );
  }

  @override
  OKRDetailRProvider getProviderOverride(
    covariant OKRDetailRProvider provider,
  ) {
    return call(
      okrId: provider.okrId,
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
  String? get name => r'oKRDetailRProvider';
}

/// See also [OKRDetailR].
class OKRDetailRProvider
    extends AutoDisposeAsyncNotifierProviderImpl<OKRDetailR, OKRDetail> {
  /// See also [OKRDetailR].
  OKRDetailRProvider({
    required dynamic okrId,
  }) : this._internal(
          () => OKRDetailR()..okrId = okrId,
          from: oKRDetailRProvider,
          name: r'oKRDetailRProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$oKRDetailRHash,
          dependencies: OKRDetailRFamily._dependencies,
          allTransitiveDependencies:
              OKRDetailRFamily._allTransitiveDependencies,
          okrId: okrId,
        );

  OKRDetailRProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.okrId,
  }) : super.internal();

  final dynamic okrId;

  @override
  FutureOr<OKRDetail> runNotifierBuild(
    covariant OKRDetailR notifier,
  ) {
    return notifier.build(
      okrId: okrId,
    );
  }

  @override
  Override overrideWith(OKRDetailR Function() create) {
    return ProviderOverride(
      origin: this,
      override: OKRDetailRProvider._internal(
        () => create()..okrId = okrId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        okrId: okrId,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<OKRDetailR, OKRDetail>
      createElement() {
    return _OKRDetailRProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is OKRDetailRProvider && other.okrId == okrId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, okrId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin OKRDetailRRef on AutoDisposeAsyncNotifierProviderRef<OKRDetail> {
  /// The parameter `okrId` of this provider.
  dynamic get okrId;
}

class _OKRDetailRProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<OKRDetailR, OKRDetail>
    with OKRDetailRRef {
  _OKRDetailRProviderElement(super.provider);

  @override
  dynamic get okrId => (origin as OKRDetailRProvider).okrId;
}

String _$oKRTrackingRHash() => r'590eaf49a91cdc1fc457ea2a1603e138112f0ee0';

abstract class _$OKRTrackingR
    extends BuildlessAutoDisposeAsyncNotifier<OKRTracking> {
  late final dynamic okrKeyResult;

  FutureOr<OKRTracking> build({
    required dynamic okrKeyResult,
  });
}

/// See also [OKRTrackingR].
@ProviderFor(OKRTrackingR)
const oKRTrackingRProvider = OKRTrackingRFamily();

/// See also [OKRTrackingR].
class OKRTrackingRFamily extends Family<AsyncValue<OKRTracking>> {
  /// See also [OKRTrackingR].
  const OKRTrackingRFamily();

  /// See also [OKRTrackingR].
  OKRTrackingRProvider call({
    required dynamic okrKeyResult,
  }) {
    return OKRTrackingRProvider(
      okrKeyResult: okrKeyResult,
    );
  }

  @override
  OKRTrackingRProvider getProviderOverride(
    covariant OKRTrackingRProvider provider,
  ) {
    return call(
      okrKeyResult: provider.okrKeyResult,
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
  String? get name => r'oKRTrackingRProvider';
}

/// See also [OKRTrackingR].
class OKRTrackingRProvider
    extends AutoDisposeAsyncNotifierProviderImpl<OKRTrackingR, OKRTracking> {
  /// See also [OKRTrackingR].
  OKRTrackingRProvider({
    required dynamic okrKeyResult,
  }) : this._internal(
          () => OKRTrackingR()..okrKeyResult = okrKeyResult,
          from: oKRTrackingRProvider,
          name: r'oKRTrackingRProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$oKRTrackingRHash,
          dependencies: OKRTrackingRFamily._dependencies,
          allTransitiveDependencies:
              OKRTrackingRFamily._allTransitiveDependencies,
          okrKeyResult: okrKeyResult,
        );

  OKRTrackingRProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.okrKeyResult,
  }) : super.internal();

  final dynamic okrKeyResult;

  @override
  FutureOr<OKRTracking> runNotifierBuild(
    covariant OKRTrackingR notifier,
  ) {
    return notifier.build(
      okrKeyResult: okrKeyResult,
    );
  }

  @override
  Override overrideWith(OKRTrackingR Function() create) {
    return ProviderOverride(
      origin: this,
      override: OKRTrackingRProvider._internal(
        () => create()..okrKeyResult = okrKeyResult,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        okrKeyResult: okrKeyResult,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<OKRTrackingR, OKRTracking>
      createElement() {
    return _OKRTrackingRProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is OKRTrackingRProvider && other.okrKeyResult == okrKeyResult;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, okrKeyResult.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin OKRTrackingRRef on AutoDisposeAsyncNotifierProviderRef<OKRTracking> {
  /// The parameter `okrKeyResult` of this provider.
  dynamic get okrKeyResult;
}

class _OKRTrackingRProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<OKRTrackingR, OKRTracking>
    with OKRTrackingRRef {
  _OKRTrackingRProviderElement(super.provider);

  @override
  dynamic get okrKeyResult => (origin as OKRTrackingRProvider).okrKeyResult;
}

String _$setTrackingValuePHash() => r'7adbc2e62c570de9cd6cf260716208533efdc8ab';

/// See also [SetTrackingValueP].
@ProviderFor(SetTrackingValueP)
final setTrackingValuePProvider = AutoDisposeNotifierProvider<SetTrackingValueP,
    AsyncValue<dynamic>>.internal(
  SetTrackingValueP.new,
  name: r'setTrackingValuePProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$setTrackingValuePHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$SetTrackingValueP = AutoDisposeNotifier<AsyncValue<dynamic>>;
String _$performanceGetGraphsHash() =>
    r'1b17fe8e6a36e5800be54eb6d885e4f3b7f35664';

abstract class _$PerformanceGetGraphs
    extends BuildlessAutoDisposeAsyncNotifier<List<OKRGraphData>> {
  late final int id;

  FutureOr<List<OKRGraphData>> build({
    required int id,
  });
}

/// See also [PerformanceGetGraphs].
@ProviderFor(PerformanceGetGraphs)
const performanceGetGraphsProvider = PerformanceGetGraphsFamily();

/// See also [PerformanceGetGraphs].
class PerformanceGetGraphsFamily
    extends Family<AsyncValue<List<OKRGraphData>>> {
  /// See also [PerformanceGetGraphs].
  const PerformanceGetGraphsFamily();

  /// See also [PerformanceGetGraphs].
  PerformanceGetGraphsProvider call({
    required int id,
  }) {
    return PerformanceGetGraphsProvider(
      id: id,
    );
  }

  @override
  PerformanceGetGraphsProvider getProviderOverride(
    covariant PerformanceGetGraphsProvider provider,
  ) {
    return call(
      id: provider.id,
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
  String? get name => r'performanceGetGraphsProvider';
}

/// See also [PerformanceGetGraphs].
class PerformanceGetGraphsProvider extends AutoDisposeAsyncNotifierProviderImpl<
    PerformanceGetGraphs, List<OKRGraphData>> {
  /// See also [PerformanceGetGraphs].
  PerformanceGetGraphsProvider({
    required int id,
  }) : this._internal(
          () => PerformanceGetGraphs()..id = id,
          from: performanceGetGraphsProvider,
          name: r'performanceGetGraphsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$performanceGetGraphsHash,
          dependencies: PerformanceGetGraphsFamily._dependencies,
          allTransitiveDependencies:
              PerformanceGetGraphsFamily._allTransitiveDependencies,
          id: id,
        );

  PerformanceGetGraphsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final int id;

  @override
  FutureOr<List<OKRGraphData>> runNotifierBuild(
    covariant PerformanceGetGraphs notifier,
  ) {
    return notifier.build(
      id: id,
    );
  }

  @override
  Override overrideWith(PerformanceGetGraphs Function() create) {
    return ProviderOverride(
      origin: this,
      override: PerformanceGetGraphsProvider._internal(
        () => create()..id = id,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<PerformanceGetGraphs,
      List<OKRGraphData>> createElement() {
    return _PerformanceGetGraphsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PerformanceGetGraphsProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin PerformanceGetGraphsRef
    on AutoDisposeAsyncNotifierProviderRef<List<OKRGraphData>> {
  /// The parameter `id` of this provider.
  int get id;
}

class _PerformanceGetGraphsProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<PerformanceGetGraphs,
        List<OKRGraphData>> with PerformanceGetGraphsRef {
  _PerformanceGetGraphsProviderElement(super.provider);

  @override
  int get id => (origin as PerformanceGetGraphsProvider).id;
}

String _$performanceGetCompetencyHash() =>
    r'5106322116be252efe053e92714221d86a8d9b5f';

abstract class _$PerformanceGetCompetency
    extends BuildlessAutoDisposeAsyncNotifier<CompetencyLevel> {
  late final String? competencyId;
  late final String? dimension;
  late final String? level;

  FutureOr<CompetencyLevel> build({
    String? competencyId,
    String? dimension,
    String? level,
  });
}

/// See also [PerformanceGetCompetency].
@ProviderFor(PerformanceGetCompetency)
const performanceGetCompetencyProvider = PerformanceGetCompetencyFamily();

/// See also [PerformanceGetCompetency].
class PerformanceGetCompetencyFamily
    extends Family<AsyncValue<CompetencyLevel>> {
  /// See also [PerformanceGetCompetency].
  const PerformanceGetCompetencyFamily();

  /// See also [PerformanceGetCompetency].
  PerformanceGetCompetencyProvider call({
    String? competencyId,
    String? dimension,
    String? level,
  }) {
    return PerformanceGetCompetencyProvider(
      competencyId: competencyId,
      dimension: dimension,
      level: level,
    );
  }

  @override
  PerformanceGetCompetencyProvider getProviderOverride(
    covariant PerformanceGetCompetencyProvider provider,
  ) {
    return call(
      competencyId: provider.competencyId,
      dimension: provider.dimension,
      level: provider.level,
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
  String? get name => r'performanceGetCompetencyProvider';
}

/// See also [PerformanceGetCompetency].
class PerformanceGetCompetencyProvider
    extends AutoDisposeAsyncNotifierProviderImpl<PerformanceGetCompetency,
        CompetencyLevel> {
  /// See also [PerformanceGetCompetency].
  PerformanceGetCompetencyProvider({
    String? competencyId,
    String? dimension,
    String? level,
  }) : this._internal(
          () => PerformanceGetCompetency()
            ..competencyId = competencyId
            ..dimension = dimension
            ..level = level,
          from: performanceGetCompetencyProvider,
          name: r'performanceGetCompetencyProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$performanceGetCompetencyHash,
          dependencies: PerformanceGetCompetencyFamily._dependencies,
          allTransitiveDependencies:
              PerformanceGetCompetencyFamily._allTransitiveDependencies,
          competencyId: competencyId,
          dimension: dimension,
          level: level,
        );

  PerformanceGetCompetencyProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.competencyId,
    required this.dimension,
    required this.level,
  }) : super.internal();

  final String? competencyId;
  final String? dimension;
  final String? level;

  @override
  FutureOr<CompetencyLevel> runNotifierBuild(
    covariant PerformanceGetCompetency notifier,
  ) {
    return notifier.build(
      competencyId: competencyId,
      dimension: dimension,
      level: level,
    );
  }

  @override
  Override overrideWith(PerformanceGetCompetency Function() create) {
    return ProviderOverride(
      origin: this,
      override: PerformanceGetCompetencyProvider._internal(
        () => create()
          ..competencyId = competencyId
          ..dimension = dimension
          ..level = level,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        competencyId: competencyId,
        dimension: dimension,
        level: level,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<PerformanceGetCompetency,
      CompetencyLevel> createElement() {
    return _PerformanceGetCompetencyProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PerformanceGetCompetencyProvider &&
        other.competencyId == competencyId &&
        other.dimension == dimension &&
        other.level == level;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, competencyId.hashCode);
    hash = _SystemHash.combine(hash, dimension.hashCode);
    hash = _SystemHash.combine(hash, level.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin PerformanceGetCompetencyRef
    on AutoDisposeAsyncNotifierProviderRef<CompetencyLevel> {
  /// The parameter `competencyId` of this provider.
  String? get competencyId;

  /// The parameter `dimension` of this provider.
  String? get dimension;

  /// The parameter `level` of this provider.
  String? get level;
}

class _PerformanceGetCompetencyProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<PerformanceGetCompetency,
        CompetencyLevel> with PerformanceGetCompetencyRef {
  _PerformanceGetCompetencyProviderElement(super.provider);

  @override
  String? get competencyId =>
      (origin as PerformanceGetCompetencyProvider).competencyId;
  @override
  String? get dimension =>
      (origin as PerformanceGetCompetencyProvider).dimension;
  @override
  String? get level => (origin as PerformanceGetCompetencyProvider).level;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
