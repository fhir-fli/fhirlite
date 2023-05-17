// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

part 'client_links.g.dart';

@JsonSerializable()
class ClientLinks {
  const ClientLinks({
    this.CLIENT_EMAIL = '',
    required this.CLIENT_WEBSITE,
    required this.APP_STORE_ANDROID,
    required this.APP_STORE_IOS,
    required this.APP_STORE_UNDEFINED,
    required this.PRIVACY_POLICY,
    required this.EULA,
    required this.CLIENT,
  });

  factory ClientLinks.fromJson(Map<String, dynamic> json) =>
      _$ClientLinksFromJson(json);

  Map<String, dynamic> toJson() => _$ClientLinksToJson(this);

  @JsonKey(name: 'clientEmail')
  final String CLIENT_EMAIL;

  @JsonKey(name: 'clientWebsite')
  final String CLIENT_WEBSITE;

  @JsonKey(name: 'appStoreAndroid')
  final String APP_STORE_ANDROID;

  @JsonKey(name: 'appStoreIos')
  final String APP_STORE_IOS;

  @JsonKey(name: 'appStoreUndefined')
  final String APP_STORE_UNDEFINED;

  @JsonKey(name: 'privacyPolicy')
  final String PRIVACY_POLICY;

  @JsonKey(name: 'eula')
  final String EULA;

  @JsonKey(name: 'client')
  final String CLIENT;
}
