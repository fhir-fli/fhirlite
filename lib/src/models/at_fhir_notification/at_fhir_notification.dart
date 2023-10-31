import 'dart:convert';

import 'package:fhir/dstu2.dart' as dstu2;
import 'package:fhir/r4.dart' as r4;
import 'package:fhir/r5.dart' as r5;
import 'package:fhir/stu3.dart' as stu3;
import 'package:fhir_at_rest/dstu2.dart' as dstu2_request;
import 'package:fhir_at_rest/r4.dart' as r4_request;
import 'package:fhir_at_rest/r5.dart' as r5_request;
import 'package:fhir_at_rest/stu3.dart' as stu3_request;
import 'package:freezed_annotation/freezed_annotation.dart';

part 'at_fhir_notification.freezed.dart';
part 'at_fhir_notification.g.dart';

@freezed
class AtFhirNotification with _$AtFhirNotification {
  const AtFhirNotification._();
  const factory AtFhirNotification.dstu2Resource(dstu2.Resource value) =
      AtFhirDstu2ResourceNotification;
  const factory AtFhirNotification.stu3Resource(stu3.Resource value) =
      AtFhirStu3ResourceNotification;
  const factory AtFhirNotification.r4Resource(r4.Resource value) =
      AtFhirR4ResourceNotification;
  const factory AtFhirNotification.r5Resource(r5.Resource value) =
      AtFhirR5ResourceNotification;
  const factory AtFhirNotification.dstu2Request(
      dstu2_request.FhirRequest value) = AtFhirDstu2RequestNotification;
  const factory AtFhirNotification.stu3Request(stu3_request.FhirRequest value) =
      AtFhirStu3RequestNotification;
  const factory AtFhirNotification.r4Request(r4_request.FhirRequest value) =
      AtFhirR4RequestNotification;
  const factory AtFhirNotification.r5Request(r5_request.FhirRequest value) =
      AtFhirR5RequestNotification;

  factory AtFhirNotification.fromJson(Map<String, dynamic> json) =>
      _$AtFhirNotificationFromJson(json);

  /// Acts like a constructor, returns a [Resource], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory AtFhirNotification.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$AtFhirNotificationFromJson(json);
    } else {
      throw FormatException('You passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  /// Another convenience method because more and more I'm transmitting FHIR
  /// data as a String and not a Map
  String toJsonString() => jsonEncode(toJson());
}
