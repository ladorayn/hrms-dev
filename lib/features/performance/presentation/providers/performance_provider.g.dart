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
