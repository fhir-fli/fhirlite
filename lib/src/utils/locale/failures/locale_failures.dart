// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'locale_failures.freezed.dart';

@freezed
class LocaleFailures with _$LocaleFailures {
  const factory LocaleFailures.notSupportedError() = NotSupportedError;
}
