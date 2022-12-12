import 'package:json_annotation/json_annotation.dart';

part 'client_names.g.dart';

@JsonSerializable()
class ClientNames {
  ClientNames({
    this.title,
  });

  factory ClientNames.fromJson(Map<String, dynamic> json) =>
      _$ClientNamesFromJson(json);

  Map<String, dynamic> toJson() => _$ClientNamesToJson(this);

  String? title;
}
