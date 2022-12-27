import 'package:json_annotation/json_annotation.dart';

part 'demo_resources.g.dart';

@JsonSerializable()
class DemoResources {
  DemoResources({
    this.patients,
  });

  factory DemoResources.fromJson(Map<String, dynamic> json) =>
      _$DemoResourcesFromJson(json);

  Map<String, dynamic> toJson() => _$DemoResourcesToJson(this);

  String? patients;
}
