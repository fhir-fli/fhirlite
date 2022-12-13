// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client.dart';

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

String $ClientHash() => r'10518f8f484570d099c4be23ebd56c50f55163c9';

/// See also [Client].
final clientProvider = AutoDisposeNotifierProvider<Client, FhirClient>(
  Client.new,
  name: r'clientProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : $ClientHash,
);
typedef ClientRef = AutoDisposeNotifierProviderRef<FhirClient>;

abstract class _$Client extends AutoDisposeNotifier<FhirClient> {
  @override
  FhirClient build();
}

String $RememberMeHash() => r'9e3e951422ae08a055dce69e01885ea0a8fa06a1';

/// See also [RememberMe].
final rememberMeProvider = AutoDisposeNotifierProvider<RememberMe, bool>(
  RememberMe.new,
  name: r'rememberMeProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : $RememberMeHash,
);
typedef RememberMeRef = AutoDisposeNotifierProviderRef<bool>;

abstract class _$RememberMe extends AutoDisposeNotifier<bool> {
  @override
  bool build();
}
