import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'client_assets.dart';

part 'client_assets_provider.g.dart';

@riverpod
class ClientAssets extends _$ClientAssets {
  @override
  Assets? build() => null;

  Future<void> fromFile(String filePath) async {
    state = Assets.fromJson(jsonDecode(await rootBundle.loadString(filePath)));
  }
}

@JsonSerializable()
class Assets {
  Assets({this.clientImages});

  factory Assets.fromJson(Map<String, dynamic> json) => _$AssetsFromJson(json);

  Map<String, dynamic> toJson() => _$AssetsToJson(this);

  ClientImages? clientImages;
}
