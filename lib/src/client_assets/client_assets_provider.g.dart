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
      demoResources: json['demoResources'] == null
          ? null
          : DemoResources.fromJson(
              json['demoResources'] as Map<String, dynamic>),
      patientFields:
          PatientFields.fromJson(json['patientFields'] as Map<String, dynamic>),
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
  writeNotNull('demoResources', instance.demoResources?.toJson());
  val['patientFields'] = instance.patientFields.toJson();
  return val;
}

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$clientAssetsHash() => r'f4eb2af0c4c03d3e6fcece6dfd3002db2d6a2f88';

/// See also [ClientAssets].
@ProviderFor(ClientAssets)
final clientAssetsProvider =
    AutoDisposeNotifierProvider<ClientAssets, Assets?>.internal(
  ClientAssets.new,
  name: r'clientAssetsProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$clientAssetsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$ClientAssets = AutoDisposeNotifier<Assets?>;
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
