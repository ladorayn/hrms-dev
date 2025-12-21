// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'offboarding_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$paginatedEmployeeHash() => r'07f5318d6e974b4bbcedca24dd171bdaa89e6061';

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

abstract class _$PaginatedEmployee
    extends BuildlessAutoDisposeAsyncNotifier<PaginatedResponse<Employee>> {
  late final String? search;
  late final List<String>? departmentIds;
  late final List<String>? jobLevelIds;
  late final List<String>? jobPositionIds;
  late final String? status;
  late final String? startDate;
  late final String? endDate;
  late final String? perPage;

  FutureOr<PaginatedResponse<Employee>> build({
    String? search,
    List<String>? departmentIds,
    List<String>? jobLevelIds,
    List<String>? jobPositionIds,
    String? status,
    String? startDate,
    String? endDate,
    String? perPage,
  });
}

/// See also [PaginatedEmployee].
@ProviderFor(PaginatedEmployee)
const paginatedEmployeeProvider = PaginatedEmployeeFamily();

/// See also [PaginatedEmployee].
class PaginatedEmployeeFamily
    extends Family<AsyncValue<PaginatedResponse<Employee>>> {
  /// See also [PaginatedEmployee].
  const PaginatedEmployeeFamily();

  /// See also [PaginatedEmployee].
  PaginatedEmployeeProvider call({
    String? search,
    List<String>? departmentIds,
    List<String>? jobLevelIds,
    List<String>? jobPositionIds,
    String? status,
    String? startDate,
    String? endDate,
    String? perPage,
  }) {
    return PaginatedEmployeeProvider(
      search: search,
      departmentIds: departmentIds,
      jobLevelIds: jobLevelIds,
      jobPositionIds: jobPositionIds,
      status: status,
      startDate: startDate,
      endDate: endDate,
      perPage: perPage,
    );
  }

  @override
  PaginatedEmployeeProvider getProviderOverride(
    covariant PaginatedEmployeeProvider provider,
  ) {
    return call(
      search: provider.search,
      departmentIds: provider.departmentIds,
      jobLevelIds: provider.jobLevelIds,
      jobPositionIds: provider.jobPositionIds,
      status: provider.status,
      startDate: provider.startDate,
      endDate: provider.endDate,
      perPage: provider.perPage,
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
  String? get name => r'paginatedEmployeeProvider';
}

/// See also [PaginatedEmployee].
class PaginatedEmployeeProvider extends AutoDisposeAsyncNotifierProviderImpl<
    PaginatedEmployee, PaginatedResponse<Employee>> {
  /// See also [PaginatedEmployee].
  PaginatedEmployeeProvider({
    String? search,
    List<String>? departmentIds,
    List<String>? jobLevelIds,
    List<String>? jobPositionIds,
    String? status,
    String? startDate,
    String? endDate,
    String? perPage,
  }) : this._internal(
          () => PaginatedEmployee()
            ..search = search
            ..departmentIds = departmentIds
            ..jobLevelIds = jobLevelIds
            ..jobPositionIds = jobPositionIds
            ..status = status
            ..startDate = startDate
            ..endDate = endDate
            ..perPage = perPage,
          from: paginatedEmployeeProvider,
          name: r'paginatedEmployeeProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$paginatedEmployeeHash,
          dependencies: PaginatedEmployeeFamily._dependencies,
          allTransitiveDependencies:
              PaginatedEmployeeFamily._allTransitiveDependencies,
          search: search,
          departmentIds: departmentIds,
          jobLevelIds: jobLevelIds,
          jobPositionIds: jobPositionIds,
          status: status,
          startDate: startDate,
          endDate: endDate,
          perPage: perPage,
        );

  PaginatedEmployeeProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.search,
    required this.departmentIds,
    required this.jobLevelIds,
    required this.jobPositionIds,
    required this.status,
    required this.startDate,
    required this.endDate,
    required this.perPage,
  }) : super.internal();

  final String? search;
  final List<String>? departmentIds;
  final List<String>? jobLevelIds;
  final List<String>? jobPositionIds;
  final String? status;
  final String? startDate;
  final String? endDate;
  final String? perPage;

  @override
  FutureOr<PaginatedResponse<Employee>> runNotifierBuild(
    covariant PaginatedEmployee notifier,
  ) {
    return notifier.build(
      search: search,
      departmentIds: departmentIds,
      jobLevelIds: jobLevelIds,
      jobPositionIds: jobPositionIds,
      status: status,
      startDate: startDate,
      endDate: endDate,
      perPage: perPage,
    );
  }

  @override
  Override overrideWith(PaginatedEmployee Function() create) {
    return ProviderOverride(
      origin: this,
      override: PaginatedEmployeeProvider._internal(
        () => create()
          ..search = search
          ..departmentIds = departmentIds
          ..jobLevelIds = jobLevelIds
          ..jobPositionIds = jobPositionIds
          ..status = status
          ..startDate = startDate
          ..endDate = endDate
          ..perPage = perPage,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        search: search,
        departmentIds: departmentIds,
        jobLevelIds: jobLevelIds,
        jobPositionIds: jobPositionIds,
        status: status,
        startDate: startDate,
        endDate: endDate,
        perPage: perPage,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<PaginatedEmployee,
      PaginatedResponse<Employee>> createElement() {
    return _PaginatedEmployeeProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PaginatedEmployeeProvider &&
        other.search == search &&
        other.departmentIds == departmentIds &&
        other.jobLevelIds == jobLevelIds &&
        other.jobPositionIds == jobPositionIds &&
        other.status == status &&
        other.startDate == startDate &&
        other.endDate == endDate &&
        other.perPage == perPage;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, search.hashCode);
    hash = _SystemHash.combine(hash, departmentIds.hashCode);
    hash = _SystemHash.combine(hash, jobLevelIds.hashCode);
    hash = _SystemHash.combine(hash, jobPositionIds.hashCode);
    hash = _SystemHash.combine(hash, status.hashCode);
    hash = _SystemHash.combine(hash, startDate.hashCode);
    hash = _SystemHash.combine(hash, endDate.hashCode);
    hash = _SystemHash.combine(hash, perPage.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin PaginatedEmployeeRef
    on AutoDisposeAsyncNotifierProviderRef<PaginatedResponse<Employee>> {
  /// The parameter `search` of this provider.
  String? get search;

  /// The parameter `departmentIds` of this provider.
  List<String>? get departmentIds;

  /// The parameter `jobLevelIds` of this provider.
  List<String>? get jobLevelIds;

  /// The parameter `jobPositionIds` of this provider.
  List<String>? get jobPositionIds;

  /// The parameter `status` of this provider.
  String? get status;

  /// The parameter `startDate` of this provider.
  String? get startDate;

  /// The parameter `endDate` of this provider.
  String? get endDate;

  /// The parameter `perPage` of this provider.
  String? get perPage;
}

class _PaginatedEmployeeProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<PaginatedEmployee,
        PaginatedResponse<Employee>> with PaginatedEmployeeRef {
  _PaginatedEmployeeProviderElement(super.provider);

  @override
  String? get search => (origin as PaginatedEmployeeProvider).search;
  @override
  List<String>? get departmentIds =>
      (origin as PaginatedEmployeeProvider).departmentIds;
  @override
  List<String>? get jobLevelIds =>
      (origin as PaginatedEmployeeProvider).jobLevelIds;
  @override
  List<String>? get jobPositionIds =>
      (origin as PaginatedEmployeeProvider).jobPositionIds;
  @override
  String? get status => (origin as PaginatedEmployeeProvider).status;
  @override
  String? get startDate => (origin as PaginatedEmployeeProvider).startDate;
  @override
  String? get endDate => (origin as PaginatedEmployeeProvider).endDate;
  @override
  String? get perPage => (origin as PaginatedEmployeeProvider).perPage;
}

String _$offboardingStatusHash() => r'b4f5fabeead73e52e7252741d622c0e6a3d3b93a';

/// See also [OffboardingStatus].
@ProviderFor(OffboardingStatus)
final offboardingStatusProvider = AutoDisposeAsyncNotifierProvider<
    OffboardingStatus, OffboardingStatusResponse?>.internal(
  OffboardingStatus.new,
  name: r'offboardingStatusProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$offboardingStatusHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$OffboardingStatus
    = AutoDisposeAsyncNotifier<OffboardingStatusResponse?>;
String _$offboardingFormFieldsHash() =>
    r'11e9818dc321fde28427195f60ded233c0f636d6';

abstract class _$OffboardingFormFields
    extends BuildlessAutoDisposeAsyncNotifier<List<FormFields>> {
  late final int formId;

  FutureOr<List<FormFields>> build({
    required int formId,
  });
}

/// See also [OffboardingFormFields].
@ProviderFor(OffboardingFormFields)
const offboardingFormFieldsProvider = OffboardingFormFieldsFamily();

/// See also [OffboardingFormFields].
class OffboardingFormFieldsFamily extends Family<AsyncValue<List<FormFields>>> {
  /// See also [OffboardingFormFields].
  const OffboardingFormFieldsFamily();

  /// See also [OffboardingFormFields].
  OffboardingFormFieldsProvider call({
    required int formId,
  }) {
    return OffboardingFormFieldsProvider(
      formId: formId,
    );
  }

  @override
  OffboardingFormFieldsProvider getProviderOverride(
    covariant OffboardingFormFieldsProvider provider,
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
  String? get name => r'offboardingFormFieldsProvider';
}

/// See also [OffboardingFormFields].
class OffboardingFormFieldsProvider
    extends AutoDisposeAsyncNotifierProviderImpl<OffboardingFormFields,
        List<FormFields>> {
  /// See also [OffboardingFormFields].
  OffboardingFormFieldsProvider({
    required int formId,
  }) : this._internal(
          () => OffboardingFormFields()..formId = formId,
          from: offboardingFormFieldsProvider,
          name: r'offboardingFormFieldsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$offboardingFormFieldsHash,
          dependencies: OffboardingFormFieldsFamily._dependencies,
          allTransitiveDependencies:
              OffboardingFormFieldsFamily._allTransitiveDependencies,
          formId: formId,
        );

  OffboardingFormFieldsProvider._internal(
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
    covariant OffboardingFormFields notifier,
  ) {
    return notifier.build(
      formId: formId,
    );
  }

  @override
  Override overrideWith(OffboardingFormFields Function() create) {
    return ProviderOverride(
      origin: this,
      override: OffboardingFormFieldsProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<OffboardingFormFields,
      List<FormFields>> createElement() {
    return _OffboardingFormFieldsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is OffboardingFormFieldsProvider && other.formId == formId;
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
mixin OffboardingFormFieldsRef
    on AutoDisposeAsyncNotifierProviderRef<List<FormFields>> {
  /// The parameter `formId` of this provider.
  int get formId;
}

class _OffboardingFormFieldsProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<OffboardingFormFields,
        List<FormFields>> with OffboardingFormFieldsRef {
  _OffboardingFormFieldsProviderElement(super.provider);

  @override
  int get formId => (origin as OffboardingFormFieldsProvider).formId;
}

String _$exitFormSubmissionHash() =>
    r'63062a7e304541b063c91660e16e4b1187129b6a';

/// See also [ExitFormSubmission].
@ProviderFor(ExitFormSubmission)
final exitFormSubmissionProvider = AutoDisposeNotifierProvider<
    ExitFormSubmission, AsyncValue<dynamic>>.internal(
  ExitFormSubmission.new,
  name: r'exitFormSubmissionProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$exitFormSubmissionHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$ExitFormSubmission = AutoDisposeNotifier<AsyncValue<dynamic>>;
String _$handoverSubmissionHash() =>
    r'9c46f3e7df86481f710061cb44c6f15d551cfeb7';

/// See also [HandoverSubmission].
@ProviderFor(HandoverSubmission)
final handoverSubmissionProvider = AutoDisposeNotifierProvider<
    HandoverSubmission, AsyncValue<dynamic>>.internal(
  HandoverSubmission.new,
  name: r'handoverSubmissionProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$handoverSubmissionHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$HandoverSubmission = AutoDisposeNotifier<AsyncValue<dynamic>>;
String _$offboardingGetHandoverHash() =>
    r'faeb9dbaf40c27c005a2e81991b073b023ff27af';

abstract class _$OffboardingGetHandover
    extends BuildlessAutoDisposeAsyncNotifier<List<HandoverItem>> {
  late final String offboardingId;
  late final String category;

  FutureOr<List<HandoverItem>> build({
    required String offboardingId,
    required String category,
  });
}

/// See also [OffboardingGetHandover].
@ProviderFor(OffboardingGetHandover)
const offboardingGetHandoverProvider = OffboardingGetHandoverFamily();

/// See also [OffboardingGetHandover].
class OffboardingGetHandoverFamily
    extends Family<AsyncValue<List<HandoverItem>>> {
  /// See also [OffboardingGetHandover].
  const OffboardingGetHandoverFamily();

  /// See also [OffboardingGetHandover].
  OffboardingGetHandoverProvider call({
    required String offboardingId,
    required String category,
  }) {
    return OffboardingGetHandoverProvider(
      offboardingId: offboardingId,
      category: category,
    );
  }

  @override
  OffboardingGetHandoverProvider getProviderOverride(
    covariant OffboardingGetHandoverProvider provider,
  ) {
    return call(
      offboardingId: provider.offboardingId,
      category: provider.category,
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
  String? get name => r'offboardingGetHandoverProvider';
}

/// See also [OffboardingGetHandover].
class OffboardingGetHandoverProvider
    extends AutoDisposeAsyncNotifierProviderImpl<OffboardingGetHandover,
        List<HandoverItem>> {
  /// See also [OffboardingGetHandover].
  OffboardingGetHandoverProvider({
    required String offboardingId,
    required String category,
  }) : this._internal(
          () => OffboardingGetHandover()
            ..offboardingId = offboardingId
            ..category = category,
          from: offboardingGetHandoverProvider,
          name: r'offboardingGetHandoverProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$offboardingGetHandoverHash,
          dependencies: OffboardingGetHandoverFamily._dependencies,
          allTransitiveDependencies:
              OffboardingGetHandoverFamily._allTransitiveDependencies,
          offboardingId: offboardingId,
          category: category,
        );

  OffboardingGetHandoverProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.offboardingId,
    required this.category,
  }) : super.internal();

  final String offboardingId;
  final String category;

  @override
  FutureOr<List<HandoverItem>> runNotifierBuild(
    covariant OffboardingGetHandover notifier,
  ) {
    return notifier.build(
      offboardingId: offboardingId,
      category: category,
    );
  }

  @override
  Override overrideWith(OffboardingGetHandover Function() create) {
    return ProviderOverride(
      origin: this,
      override: OffboardingGetHandoverProvider._internal(
        () => create()
          ..offboardingId = offboardingId
          ..category = category,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        offboardingId: offboardingId,
        category: category,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<OffboardingGetHandover,
      List<HandoverItem>> createElement() {
    return _OffboardingGetHandoverProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is OffboardingGetHandoverProvider &&
        other.offboardingId == offboardingId &&
        other.category == category;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, offboardingId.hashCode);
    hash = _SystemHash.combine(hash, category.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin OffboardingGetHandoverRef
    on AutoDisposeAsyncNotifierProviderRef<List<HandoverItem>> {
  /// The parameter `offboardingId` of this provider.
  String get offboardingId;

  /// The parameter `category` of this provider.
  String get category;
}

class _OffboardingGetHandoverProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<OffboardingGetHandover,
        List<HandoverItem>> with OffboardingGetHandoverRef {
  _OffboardingGetHandoverProviderElement(super.provider);

  @override
  String get offboardingId =>
      (origin as OffboardingGetHandoverProvider).offboardingId;
  @override
  String get category => (origin as OffboardingGetHandoverProvider).category;
}

String _$validateHandoverSubmissionHash() =>
    r'152aad214c2858f60a74a5d0c26b2cc2ef66971f';

abstract class _$ValidateHandoverSubmission
    extends BuildlessAutoDisposeNotifier<AsyncValue<dynamic>> {
  late final int handoverAssetId;

  AsyncValue<dynamic> build(
    int handoverAssetId,
  );
}

/// See also [ValidateHandoverSubmission].
@ProviderFor(ValidateHandoverSubmission)
const validateHandoverSubmissionProvider = ValidateHandoverSubmissionFamily();

/// See also [ValidateHandoverSubmission].
class ValidateHandoverSubmissionFamily extends Family<AsyncValue<dynamic>> {
  /// See also [ValidateHandoverSubmission].
  const ValidateHandoverSubmissionFamily();

  /// See also [ValidateHandoverSubmission].
  ValidateHandoverSubmissionProvider call(
    int handoverAssetId,
  ) {
    return ValidateHandoverSubmissionProvider(
      handoverAssetId,
    );
  }

  @override
  ValidateHandoverSubmissionProvider getProviderOverride(
    covariant ValidateHandoverSubmissionProvider provider,
  ) {
    return call(
      provider.handoverAssetId,
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
  String? get name => r'validateHandoverSubmissionProvider';
}

/// See also [ValidateHandoverSubmission].
class ValidateHandoverSubmissionProvider
    extends AutoDisposeNotifierProviderImpl<ValidateHandoverSubmission,
        AsyncValue<dynamic>> {
  /// See also [ValidateHandoverSubmission].
  ValidateHandoverSubmissionProvider(
    int handoverAssetId,
  ) : this._internal(
          () => ValidateHandoverSubmission()..handoverAssetId = handoverAssetId,
          from: validateHandoverSubmissionProvider,
          name: r'validateHandoverSubmissionProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$validateHandoverSubmissionHash,
          dependencies: ValidateHandoverSubmissionFamily._dependencies,
          allTransitiveDependencies:
              ValidateHandoverSubmissionFamily._allTransitiveDependencies,
          handoverAssetId: handoverAssetId,
        );

  ValidateHandoverSubmissionProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.handoverAssetId,
  }) : super.internal();

  final int handoverAssetId;

  @override
  AsyncValue<dynamic> runNotifierBuild(
    covariant ValidateHandoverSubmission notifier,
  ) {
    return notifier.build(
      handoverAssetId,
    );
  }

  @override
  Override overrideWith(ValidateHandoverSubmission Function() create) {
    return ProviderOverride(
      origin: this,
      override: ValidateHandoverSubmissionProvider._internal(
        () => create()..handoverAssetId = handoverAssetId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        handoverAssetId: handoverAssetId,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<ValidateHandoverSubmission,
      AsyncValue<dynamic>> createElement() {
    return _ValidateHandoverSubmissionProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ValidateHandoverSubmissionProvider &&
        other.handoverAssetId == handoverAssetId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, handoverAssetId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin ValidateHandoverSubmissionRef
    on AutoDisposeNotifierProviderRef<AsyncValue<dynamic>> {
  /// The parameter `handoverAssetId` of this provider.
  int get handoverAssetId;
}

class _ValidateHandoverSubmissionProviderElement
    extends AutoDisposeNotifierProviderElement<ValidateHandoverSubmission,
        AsyncValue<dynamic>> with ValidateHandoverSubmissionRef {
  _ValidateHandoverSubmissionProviderElement(super.provider);

  @override
  int get handoverAssetId =>
      (origin as ValidateHandoverSubmissionProvider).handoverAssetId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
