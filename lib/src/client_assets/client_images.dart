import 'package:json_annotation/json_annotation.dart';

part 'client_images.g.dart';

@JsonSerializable()
class ClientImages {
  ClientImages({this.primaryLogo, this.error});

  factory ClientImages.fromJson(Map<String, dynamic> json) =>
      _$ClientImagesFromJson(json);

  Map<String, dynamic> toJson() => _$ClientImagesToJson(this);

  String? primaryLogo;
  String? error;
}
