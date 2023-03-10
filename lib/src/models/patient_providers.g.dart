// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patient_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$activePatientHash() => r'd73051495666507243e769c1aa69ea2bd0627d5c';

/// When there is a single patient selected, this provider will hold it
///
/// Copied from [ActivePatient].
@ProviderFor(ActivePatient)
final activePatientProvider =
    AutoDisposeNotifierProvider<ActivePatient, Patient?>.internal(
  ActivePatient.new,
  name: r'activePatientProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$activePatientHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$ActivePatient = AutoDisposeNotifier<Patient?>;
String _$providerPatientsHash() => r'0ff04088faa47f6c7acabe89d5799fe1f4bb0c7c';

/// Practitioners often have a patient panel assigned to them, this provider
/// will contain the those patients assigned to a Provider
///
/// Copied from [ProviderPatients].
@ProviderFor(ProviderPatients)
final providerPatientsProvider = AutoDisposeNotifierProvider<ProviderPatients,
    Map<String, Patient>>.internal(
  ProviderPatients.new,
  name: r'providerPatientsProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$providerPatientsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$ProviderPatients = AutoDisposeNotifier<Map<String, Patient>>;
String _$allPatientsHash() => r'a8e5b369e848350f86684473ed59972769b28a3a';

/// The Provider that contains all patients stored (even temporarily) on the
/// device.
///
/// Copied from [AllPatients].
@ProviderFor(AllPatients)
final allPatientsProvider =
    AutoDisposeNotifierProvider<AllPatients, Map<String, Patient>>.internal(
  AllPatients.new,
  name: r'allPatientsProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$allPatientsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$AllPatients = AutoDisposeNotifier<Map<String, Patient>>;
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
