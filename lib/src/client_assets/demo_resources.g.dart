// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'demo_resources.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DemoResources _$DemoResourcesFromJson(Map<String, dynamic> json) =>
    DemoResources(
      patients: json['patients'] as String?,
    );

Map<String, dynamic> _$DemoResourcesToJson(DemoResources instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('patients', instance.patients);
  return val;
}
