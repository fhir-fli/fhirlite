import 'package:at_client_mobile/at_client_mobile.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'success_or_error.freezed.dart';

abstract mixin class SuccessOrError {}

/// A class that returns either a success object, or a failure object, either way
/// it should include a messagee (I feel like I often need this type of return value)
@freezed
class FhirliteSuccess with SuccessOrError, _$FhirliteSuccess {
  const factory FhirliteSuccess.success() = Successful;
  const factory FhirliteSuccess.successString(String value) = SuccessString;
  const factory FhirliteSuccess.successBool(bool value) = SuccessBool;
  const factory FhirliteSuccess.successNotificationResult(
      NotificationResult value) = SuccessNotificationResult;
}

@freezed
class FhirliteError with SuccessOrError, _$FhirliteError {
  const factory FhirliteError.failureMessage(String message) =
      FailureMessageError;
  const factory FhirliteError.exception(
      Object exception, StackTrace stackTrace) = ExceptionError;
  const factory FhirliteError.atSign(
      AtException exception, StackTrace stackTrace) = AtError;
}
