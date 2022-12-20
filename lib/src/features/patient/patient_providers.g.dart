// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patient_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// ignore_for_file: avoid_private_typedef_functions, non_constant_identifier_names, subtype_of_sealed_class, invalid_use_of_internal_member, unused_element, constant_identifier_names, unnecessary_raw_strings, library_private_types_in_public_api

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

String $ActivePatientHash() => r'93a69f8e3628e13fcd2dfa44b3b0d1011a7c6e86';

/// See also [ActivePatient].
final activePatientProvider =
    AutoDisposeNotifierProvider<ActivePatient, Patient?>(
  ActivePatient.new,
  name: r'activePatientProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : $ActivePatientHash,
);
typedef ActivePatientRef = AutoDisposeNotifierProviderRef<Patient?>;

abstract class _$ActivePatient extends AutoDisposeNotifier<Patient?> {
  @override
  Patient? build();
}

String $ProviderPatientsHash() => r'0ff04088faa47f6c7acabe89d5799fe1f4bb0c7c';

/// See also [ProviderPatients].
final providerPatientsProvider =
    AutoDisposeNotifierProvider<ProviderPatients, Map<String, Patient>>(
  ProviderPatients.new,
  name: r'providerPatientsProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : $ProviderPatientsHash,
);
typedef ProviderPatientsRef
    = AutoDisposeNotifierProviderRef<Map<String, Patient>>;

abstract class _$ProviderPatients
    extends AutoDisposeNotifier<Map<String, Patient>> {
  @override
  Map<String, Patient> build();
}

String $ActivePatientsHash() => r'1262ec56d2fb7bf62bf698e0e18da09fa9fbf0ea';

/// See also [ActivePatients].
final activePatientsProvider =
    AutoDisposeNotifierProvider<ActivePatients, Map<String, Patient>>(
  ActivePatients.new,
  name: r'activePatientsProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : $ActivePatientsHash,
);
typedef ActivePatientsRef
    = AutoDisposeNotifierProviderRef<Map<String, Patient>>;

abstract class _$ActivePatients
    extends AutoDisposeNotifier<Map<String, Patient>> {
  @override
  Map<String, Patient> build();
}

String $AllPatientsHash() => r'5ca32f78ae84a327710e298d3c1fd75642c46c0c';

/// See also [AllPatients].
final allPatientsProvider =
    AutoDisposeNotifierProvider<AllPatients, Map<String, Patient>>(
  AllPatients.new,
  name: r'allPatientsProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : $AllPatientsHash,
);
typedef AllPatientsRef = AutoDisposeNotifierProviderRef<Map<String, Patient>>;

abstract class _$AllPatients extends AutoDisposeNotifier<Map<String, Patient>> {
  @override
  Map<String, Patient> build();
}
