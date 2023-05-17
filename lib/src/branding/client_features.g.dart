// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_features.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClientFeatures _$ClientFeaturesFromJson(Map<String, dynamic> json) =>
    ClientFeatures(
      shouldShowAppDownloadInsideSettings:
          json['shouldShowAppDownloadInsideSettings'] as bool,
      shouldShowAppDownloadLinksOnWeb:
          json['shouldShowAppDownloadLinksOnWeb'] as bool,
    );

Map<String, dynamic> _$ClientFeaturesToJson(ClientFeatures instance) =>
    <String, dynamic>{
      'shouldShowAppDownloadInsideSettings':
          instance.shouldShowAppDownloadInsideSettings,
      'shouldShowAppDownloadLinksOnWeb':
          instance.shouldShowAppDownloadLinksOnWeb,
    };
