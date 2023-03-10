// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$clientHash() => r'7d26d336d0d11564622f29d9969ca2295876cb9e';

/// See also [Client].
@ProviderFor(Client)
final clientProvider = AutoDisposeNotifierProvider<Client, FhirClient>.internal(
  Client.new,
  name: r'clientProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$clientHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$Client = AutoDisposeNotifier<FhirClient>;
String _$rememberMeHash() => r'9e3e951422ae08a055dce69e01885ea0a8fa06a1';

/// See also [RememberMe].
@ProviderFor(RememberMe)
final rememberMeProvider =
    AutoDisposeNotifierProvider<RememberMe, bool>.internal(
  RememberMe.new,
  name: r'rememberMeProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$rememberMeHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$RememberMe = AutoDisposeNotifier<bool>;
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
