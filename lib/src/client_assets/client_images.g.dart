// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_images.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClientImages _$ClientImagesFromJson(Map<String, dynamic> json) => ClientImages(
      primaryLogo: json['primaryLogo'] as String?,
      error: json['error'] as String?,
    );

Map<String, dynamic> _$ClientImagesToJson(ClientImages instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('primaryLogo', instance.primaryLogo);
  writeNotNull('error', instance.error);
  return val;
}
