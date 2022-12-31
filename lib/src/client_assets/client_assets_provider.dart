import 'dart:convert';

import 'package:fhir/yaml/fhir_yaml.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:yaml/yaml.dart';

import 'client_assets.dart';

part 'client_assets_provider.g.dart';

@riverpod
class ClientAssets extends _$ClientAssets {
  @override
  Assets? build() => null;

  Future<void> fromJsonFile(String filePath) async => state =
      Assets.fromJson(jsonDecode(await rootBundle.loadString(filePath)));

  Future<void> fromYamlFile(String filePath) async =>
      state = Assets.fromYaml(await rootBundle.loadString(filePath));

  Future<void> fromFile(String filePath) async => filePath.endsWith('.yaml')
      ? await fromYamlFile(filePath)
      : await fromJsonFile(filePath);
}

@JsonSerializable()
class Assets {
  Assets({
    this.clientImages,
    this.clientNames,
    required this.clientTheme,
    this.demoResources,
    required this.patientFields,
  });

  factory Assets.fromJson(Map<String, dynamic> json) => _$AssetsFromJson(json);

  Map<String, dynamic> toJson() => _$AssetsToJson(this);

  factory Assets.fromYaml(dynamic yaml) => yaml is String
      ? Assets.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Assets.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Element cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  String toYaml() => json2yaml(toJson());

  ClientImages? clientImages;
  ClientNames? clientNames;
  ClientTheme clientTheme;
  DemoResources? demoResources;
  PatientFields patientFields;
  ColorScheme? get colorSchemeDark => clientTheme.colorSchemeDark;
  ColorScheme? get colorSchemeLight => clientTheme.colorSchemeLight;
  TextTheme? get textTheme => clientTheme.textTheme;
}
