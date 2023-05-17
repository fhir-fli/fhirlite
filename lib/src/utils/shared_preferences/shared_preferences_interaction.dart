// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'shared_preferences_interaction.freezed.dart';

@freezed
class SPInteraction with _$SPInteraction {
  SPInteraction._();
  factory SPInteraction.setInt({
    required String key,
    required int value,
    bool? success,
  }) = SPInteractionSetInt;
  factory SPInteraction.setBool({
    required String key,
    required bool value,
    bool? success,
  }) = SPInteractionSetBool;
  factory SPInteraction.setDouble({
    required String key,
    required double value,
    bool? success,
  }) = SPInteractionSetDouble;
  factory SPInteraction.setString({
    required String key,
    required String value,
    bool? success,
  }) = SPInteractionSetString;
  factory SPInteraction.setStringList({
    required String key,
    required List<String> value,
    bool? success,
  }) = SPInteractionSetStringList;
  factory SPInteraction.getInt({
    required String key,
    int? value,
    bool? success,
  }) = SPInteractionGetInt;
  factory SPInteraction.getBool({
    required String key,
    bool? value,
    bool? success,
  }) = SPInteractionGetBool;
  factory SPInteraction.getDouble({
    required String key,
    double? value,
    bool? success,
  }) = SPInteractionGetDouble;
  factory SPInteraction.getString({
    required String key,
    String? value,
    bool? success,
  }) = SPInteractionGetString;
  factory SPInteraction.getStringList({
    required String key,
    List<String>? value,
    bool? success,
  }) = SPInteractionGetStringList;
  factory SPInteraction.remove({
    required String key,
    dynamic value,
    bool? success,
  }) = SPInteractionRemove;
}
