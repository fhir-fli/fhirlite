import 'package:freezed_annotation/freezed_annotation.dart';

part 'client_features.g.dart';

@JsonSerializable()
class ClientFeatures {
  const ClientFeatures({
    required this.shouldShowAppDownloadInsideSettings,
    required this.shouldShowAppDownloadLinksOnWeb,
  });

  factory ClientFeatures.fromJson(Map<String, dynamic> json) =>
      _$ClientFeaturesFromJson(json);

  Map<String, dynamic> toJson() => _$ClientFeaturesToJson(this);

  final bool shouldShowAppDownloadInsideSettings;
  final bool shouldShowAppDownloadLinksOnWeb;
}
