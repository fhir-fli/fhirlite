// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'organization_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$activeOrganizationHash() =>
    r'0afb1013af94f8755f0a65eaeed877709f8de83a';

/// The Provider that contains all patients stored (even temporarily) on the
/// device.
///
/// Copied from [ActiveOrganization].
@ProviderFor(ActiveOrganization)
final activeOrganizationProvider =
    AutoDisposeNotifierProvider<ActiveOrganization, Organization?>.internal(
  ActiveOrganization.new,
  name: r'activeOrganizationProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$activeOrganizationHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$ActiveOrganization = AutoDisposeNotifier<Organization?>;
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
