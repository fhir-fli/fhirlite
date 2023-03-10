// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patient_list.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$patientListHash() => r'97b4b40f9e5d4ca6a2261cfdae2a2c020403835f';

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

abstract class _$PatientList
    extends BuildlessAutoDisposeNotifier<List<Patient>> {
  late final List<String>? parameters;

  List<Patient> build({
    List<String>? parameters,
  });
}

/// See also [PatientList].
@ProviderFor(PatientList)
const patientListProvider = PatientListFamily();

/// See also [PatientList].
class PatientListFamily extends Family<List<Patient>> {
  /// See also [PatientList].
  const PatientListFamily();

  /// See also [PatientList].
  PatientListProvider call({
    List<String>? parameters,
  }) {
    return PatientListProvider(
      parameters: parameters,
    );
  }

  @override
  PatientListProvider getProviderOverride(
    covariant PatientListProvider provider,
  ) {
    return call(
      parameters: provider.parameters,
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
  String? get name => r'patientListProvider';
}

/// See also [PatientList].
class PatientListProvider
    extends AutoDisposeNotifierProviderImpl<PatientList, List<Patient>> {
  /// See also [PatientList].
  PatientListProvider({
    this.parameters,
  }) : super.internal(
          () => PatientList()..parameters = parameters,
          from: patientListProvider,
          name: r'patientListProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$patientListHash,
          dependencies: PatientListFamily._dependencies,
          allTransitiveDependencies:
              PatientListFamily._allTransitiveDependencies,
        );

  final List<String>? parameters;

  @override
  bool operator ==(Object other) {
    return other is PatientListProvider && other.parameters == parameters;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, parameters.hashCode);

    return _SystemHash.finish(hash);
  }

  @override
  List<Patient> runNotifierBuild(
    covariant PatientList notifier,
  ) {
    return notifier.build(
      parameters: parameters,
    );
  }
}

String _$nextUrlHash() => r'cad0f0415f9041d7180a9188dccb06c0006e5340';

/// See also [NextUrl].
@ProviderFor(NextUrl)
final nextUrlProvider = AutoDisposeNotifierProvider<NextUrl, String>.internal(
  NextUrl.new,
  name: r'nextUrlProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$nextUrlHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$NextUrl = AutoDisposeNotifier<String>;
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
