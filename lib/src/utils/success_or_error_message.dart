import 'package:freezed_annotation/freezed_annotation.dart';

part 'success_or_error_message.freezed.dart';

@freezed
class SuccessOrErrorMessage with _$SuccessOrErrorMessage {
  const factory SuccessOrErrorMessage.success() = _SuccessNotError;
  const factory SuccessOrErrorMessage.failure(String message) =
      _ErrorNotSuccess;
}
