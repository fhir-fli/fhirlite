// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'practitioner_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$activePractitionerHash() =>
    r'ef72c4ed01108082e29207b5f6838933490da0a9';

/// The Provider that contains all patients stored (even temporarily) on the
/// device.
///
/// Copied from [ActivePractitioner].
@ProviderFor(ActivePractitioner)
final activePractitionerProvider =
    AutoDisposeNotifierProvider<ActivePractitioner, Practitioner?>.internal(
  ActivePractitioner.new,
  name: r'activePractitionerProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$activePractitionerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$ActivePractitioner = AutoDisposeNotifier<Practitioner?>;
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
