// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_names.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClientNames _$ClientNamesFromJson(Map<String, dynamic> json) => ClientNames(
      title: json['title'] as String?,
    );

Map<String, dynamic> _$ClientNamesToJson(ClientNames instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('title', instance.title);
  return val;
}
