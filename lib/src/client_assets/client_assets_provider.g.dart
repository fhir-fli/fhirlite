// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_assets_provider.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Assets _$AssetsFromJson(Map<String, dynamic> json) => Assets(
      clientImages: json['clientImages'] == null
          ? null
          : ClientImages.fromJson(json['clientImages'] as Map<String, dynamic>),
      clientNames: json['clientNames'] == null
          ? null
          : ClientNames.fromJson(json['clientNames'] as Map<String, dynamic>),
      clientTheme:
          ClientTheme.fromJson(json['clientTheme'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AssetsToJson(Assets instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('clientImages', instance.clientImages?.toJson());
  writeNotNull('clientNames', instance.clientNames?.toJson());
  val['clientTheme'] = instance.clientTheme.toJson();
  return val;
}

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

String $ClientAssetsHash() => r'f4eb2af0c4c03d3e6fcece6dfd3002db2d6a2f88';

/// See also [ClientAssets].
final clientAssetsProvider = AutoDisposeNotifierProvider<ClientAssets, Assets?>(
  ClientAssets.new,
  name: r'clientAssetsProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : $ClientAssetsHash,
);
typedef ClientAssetsRef = AutoDisposeNotifierProviderRef<Assets?>;

abstract class _$ClientAssets extends AutoDisposeNotifier<Assets?> {
  @override
  Assets? build();
}
