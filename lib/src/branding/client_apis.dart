import 'package:freezed_annotation/freezed_annotation.dart';

part 'client_apis.g.dart';

@JsonSerializable()
class ClientApis {
  const ClientApis({
    required this.clientAppName,
    required this.clientAppTitle,
  });

  factory ClientApis.fromJson(Map<String, dynamic> json) =>
      _$ClientApisFromJson(json);

  Map<String, dynamic> toJson() => _$ClientApisToJson(this);

  final String clientAppName;
  final String clientAppTitle;
}
