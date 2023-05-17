// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_links.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClientLinks _$ClientLinksFromJson(Map<String, dynamic> json) => ClientLinks(
      CLIENT_EMAIL: json['clientEmail'] as String? ?? '',
      CLIENT_WEBSITE: json['clientWebsite'] as String,
      APP_STORE_ANDROID: json['appStoreAndroid'] as String,
      APP_STORE_IOS: json['appStoreIos'] as String,
      APP_STORE_UNDEFINED: json['appStoreUndefined'] as String,
      PRIVACY_POLICY: json['privacyPolicy'] as String,
      EULA: json['eula'] as String,
      CLIENT: json['client'] as String,
    );

Map<String, dynamic> _$ClientLinksToJson(ClientLinks instance) =>
    <String, dynamic>{
      'clientEmail': instance.CLIENT_EMAIL,
      'clientWebsite': instance.CLIENT_WEBSITE,
      'appStoreAndroid': instance.APP_STORE_ANDROID,
      'appStoreIos': instance.APP_STORE_IOS,
      'appStoreUndefined': instance.APP_STORE_UNDEFINED,
      'privacyPolicy': instance.PRIVACY_POLICY,
      'eula': instance.EULA,
      'client': instance.CLIENT,
    };
