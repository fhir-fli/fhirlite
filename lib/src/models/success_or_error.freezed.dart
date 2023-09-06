// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'success_or_error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FhirliteSuccess {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() success,
    required TResult Function(String value) successString,
    required TResult Function(bool value) successBool,
    required TResult Function(NotificationResult value)
        successNotificationResult,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? success,
    TResult? Function(String value)? successString,
    TResult? Function(bool value)? successBool,
    TResult? Function(NotificationResult value)? successNotificationResult,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? success,
    TResult Function(String value)? successString,
    TResult Function(bool value)? successBool,
    TResult Function(NotificationResult value)? successNotificationResult,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Successful value) success,
    required TResult Function(SuccessString value) successString,
    required TResult Function(SuccessBool value) successBool,
    required TResult Function(SuccessNotificationResult value)
        successNotificationResult,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Successful value)? success,
    TResult? Function(SuccessString value)? successString,
    TResult? Function(SuccessBool value)? successBool,
    TResult? Function(SuccessNotificationResult value)?
        successNotificationResult,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Successful value)? success,
    TResult Function(SuccessString value)? successString,
    TResult Function(SuccessBool value)? successBool,
    TResult Function(SuccessNotificationResult value)?
        successNotificationResult,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FhirliteSuccessCopyWith<$Res> {
  factory $FhirliteSuccessCopyWith(
          FhirliteSuccess value, $Res Function(FhirliteSuccess) then) =
      _$FhirliteSuccessCopyWithImpl<$Res, FhirliteSuccess>;
}

/// @nodoc
class _$FhirliteSuccessCopyWithImpl<$Res, $Val extends FhirliteSuccess>
    implements $FhirliteSuccessCopyWith<$Res> {
  _$FhirliteSuccessCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SuccessfulCopyWith<$Res> {
  factory _$$SuccessfulCopyWith(
          _$Successful value, $Res Function(_$Successful) then) =
      __$$SuccessfulCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SuccessfulCopyWithImpl<$Res>
    extends _$FhirliteSuccessCopyWithImpl<$Res, _$Successful>
    implements _$$SuccessfulCopyWith<$Res> {
  __$$SuccessfulCopyWithImpl(
      _$Successful _value, $Res Function(_$Successful) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Successful implements Successful {
  const _$Successful();

  @override
  String toString() {
    return 'FhirliteSuccess.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Successful);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() success,
    required TResult Function(String value) successString,
    required TResult Function(bool value) successBool,
    required TResult Function(NotificationResult value)
        successNotificationResult,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? success,
    TResult? Function(String value)? successString,
    TResult? Function(bool value)? successBool,
    TResult? Function(NotificationResult value)? successNotificationResult,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? success,
    TResult Function(String value)? successString,
    TResult Function(bool value)? successBool,
    TResult Function(NotificationResult value)? successNotificationResult,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Successful value) success,
    required TResult Function(SuccessString value) successString,
    required TResult Function(SuccessBool value) successBool,
    required TResult Function(SuccessNotificationResult value)
        successNotificationResult,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Successful value)? success,
    TResult? Function(SuccessString value)? successString,
    TResult? Function(SuccessBool value)? successBool,
    TResult? Function(SuccessNotificationResult value)?
        successNotificationResult,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Successful value)? success,
    TResult Function(SuccessString value)? successString,
    TResult Function(SuccessBool value)? successBool,
    TResult Function(SuccessNotificationResult value)?
        successNotificationResult,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class Successful implements FhirliteSuccess {
  const factory Successful() = _$Successful;
}

/// @nodoc
abstract class _$$SuccessStringCopyWith<$Res> {
  factory _$$SuccessStringCopyWith(
          _$SuccessString value, $Res Function(_$SuccessString) then) =
      __$$SuccessStringCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$SuccessStringCopyWithImpl<$Res>
    extends _$FhirliteSuccessCopyWithImpl<$Res, _$SuccessString>
    implements _$$SuccessStringCopyWith<$Res> {
  __$$SuccessStringCopyWithImpl(
      _$SuccessString _value, $Res Function(_$SuccessString) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$SuccessString(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SuccessString implements SuccessString {
  const _$SuccessString(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'FhirliteSuccess.successString(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessString &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessStringCopyWith<_$SuccessString> get copyWith =>
      __$$SuccessStringCopyWithImpl<_$SuccessString>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() success,
    required TResult Function(String value) successString,
    required TResult Function(bool value) successBool,
    required TResult Function(NotificationResult value)
        successNotificationResult,
  }) {
    return successString(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? success,
    TResult? Function(String value)? successString,
    TResult? Function(bool value)? successBool,
    TResult? Function(NotificationResult value)? successNotificationResult,
  }) {
    return successString?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? success,
    TResult Function(String value)? successString,
    TResult Function(bool value)? successBool,
    TResult Function(NotificationResult value)? successNotificationResult,
    required TResult orElse(),
  }) {
    if (successString != null) {
      return successString(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Successful value) success,
    required TResult Function(SuccessString value) successString,
    required TResult Function(SuccessBool value) successBool,
    required TResult Function(SuccessNotificationResult value)
        successNotificationResult,
  }) {
    return successString(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Successful value)? success,
    TResult? Function(SuccessString value)? successString,
    TResult? Function(SuccessBool value)? successBool,
    TResult? Function(SuccessNotificationResult value)?
        successNotificationResult,
  }) {
    return successString?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Successful value)? success,
    TResult Function(SuccessString value)? successString,
    TResult Function(SuccessBool value)? successBool,
    TResult Function(SuccessNotificationResult value)?
        successNotificationResult,
    required TResult orElse(),
  }) {
    if (successString != null) {
      return successString(this);
    }
    return orElse();
  }
}

abstract class SuccessString implements FhirliteSuccess {
  const factory SuccessString(final String value) = _$SuccessString;

  String get value;
  @JsonKey(ignore: true)
  _$$SuccessStringCopyWith<_$SuccessString> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessBoolCopyWith<$Res> {
  factory _$$SuccessBoolCopyWith(
          _$SuccessBool value, $Res Function(_$SuccessBool) then) =
      __$$SuccessBoolCopyWithImpl<$Res>;
  @useResult
  $Res call({bool value});
}

/// @nodoc
class __$$SuccessBoolCopyWithImpl<$Res>
    extends _$FhirliteSuccessCopyWithImpl<$Res, _$SuccessBool>
    implements _$$SuccessBoolCopyWith<$Res> {
  __$$SuccessBoolCopyWithImpl(
      _$SuccessBool _value, $Res Function(_$SuccessBool) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$SuccessBool(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SuccessBool implements SuccessBool {
  const _$SuccessBool(this.value);

  @override
  final bool value;

  @override
  String toString() {
    return 'FhirliteSuccess.successBool(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessBool &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessBoolCopyWith<_$SuccessBool> get copyWith =>
      __$$SuccessBoolCopyWithImpl<_$SuccessBool>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() success,
    required TResult Function(String value) successString,
    required TResult Function(bool value) successBool,
    required TResult Function(NotificationResult value)
        successNotificationResult,
  }) {
    return successBool(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? success,
    TResult? Function(String value)? successString,
    TResult? Function(bool value)? successBool,
    TResult? Function(NotificationResult value)? successNotificationResult,
  }) {
    return successBool?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? success,
    TResult Function(String value)? successString,
    TResult Function(bool value)? successBool,
    TResult Function(NotificationResult value)? successNotificationResult,
    required TResult orElse(),
  }) {
    if (successBool != null) {
      return successBool(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Successful value) success,
    required TResult Function(SuccessString value) successString,
    required TResult Function(SuccessBool value) successBool,
    required TResult Function(SuccessNotificationResult value)
        successNotificationResult,
  }) {
    return successBool(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Successful value)? success,
    TResult? Function(SuccessString value)? successString,
    TResult? Function(SuccessBool value)? successBool,
    TResult? Function(SuccessNotificationResult value)?
        successNotificationResult,
  }) {
    return successBool?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Successful value)? success,
    TResult Function(SuccessString value)? successString,
    TResult Function(SuccessBool value)? successBool,
    TResult Function(SuccessNotificationResult value)?
        successNotificationResult,
    required TResult orElse(),
  }) {
    if (successBool != null) {
      return successBool(this);
    }
    return orElse();
  }
}

abstract class SuccessBool implements FhirliteSuccess {
  const factory SuccessBool(final bool value) = _$SuccessBool;

  bool get value;
  @JsonKey(ignore: true)
  _$$SuccessBoolCopyWith<_$SuccessBool> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessNotificationResultCopyWith<$Res> {
  factory _$$SuccessNotificationResultCopyWith(
          _$SuccessNotificationResult value,
          $Res Function(_$SuccessNotificationResult) then) =
      __$$SuccessNotificationResultCopyWithImpl<$Res>;
  @useResult
  $Res call({NotificationResult value});
}

/// @nodoc
class __$$SuccessNotificationResultCopyWithImpl<$Res>
    extends _$FhirliteSuccessCopyWithImpl<$Res, _$SuccessNotificationResult>
    implements _$$SuccessNotificationResultCopyWith<$Res> {
  __$$SuccessNotificationResultCopyWithImpl(_$SuccessNotificationResult _value,
      $Res Function(_$SuccessNotificationResult) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$SuccessNotificationResult(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as NotificationResult,
    ));
  }
}

/// @nodoc

class _$SuccessNotificationResult implements SuccessNotificationResult {
  const _$SuccessNotificationResult(this.value);

  @override
  final NotificationResult value;

  @override
  String toString() {
    return 'FhirliteSuccess.successNotificationResult(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessNotificationResult &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessNotificationResultCopyWith<_$SuccessNotificationResult>
      get copyWith => __$$SuccessNotificationResultCopyWithImpl<
          _$SuccessNotificationResult>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() success,
    required TResult Function(String value) successString,
    required TResult Function(bool value) successBool,
    required TResult Function(NotificationResult value)
        successNotificationResult,
  }) {
    return successNotificationResult(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? success,
    TResult? Function(String value)? successString,
    TResult? Function(bool value)? successBool,
    TResult? Function(NotificationResult value)? successNotificationResult,
  }) {
    return successNotificationResult?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? success,
    TResult Function(String value)? successString,
    TResult Function(bool value)? successBool,
    TResult Function(NotificationResult value)? successNotificationResult,
    required TResult orElse(),
  }) {
    if (successNotificationResult != null) {
      return successNotificationResult(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Successful value) success,
    required TResult Function(SuccessString value) successString,
    required TResult Function(SuccessBool value) successBool,
    required TResult Function(SuccessNotificationResult value)
        successNotificationResult,
  }) {
    return successNotificationResult(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Successful value)? success,
    TResult? Function(SuccessString value)? successString,
    TResult? Function(SuccessBool value)? successBool,
    TResult? Function(SuccessNotificationResult value)?
        successNotificationResult,
  }) {
    return successNotificationResult?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Successful value)? success,
    TResult Function(SuccessString value)? successString,
    TResult Function(SuccessBool value)? successBool,
    TResult Function(SuccessNotificationResult value)?
        successNotificationResult,
    required TResult orElse(),
  }) {
    if (successNotificationResult != null) {
      return successNotificationResult(this);
    }
    return orElse();
  }
}

abstract class SuccessNotificationResult implements FhirliteSuccess {
  const factory SuccessNotificationResult(final NotificationResult value) =
      _$SuccessNotificationResult;

  NotificationResult get value;
  @JsonKey(ignore: true)
  _$$SuccessNotificationResultCopyWith<_$SuccessNotificationResult>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FhirliteError {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) failureMessage,
    required TResult Function(Object exception, StackTrace stackTrace)
        exception,
    required TResult Function(AtException exception, StackTrace stackTrace)
        atSign,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? failureMessage,
    TResult? Function(Object exception, StackTrace stackTrace)? exception,
    TResult? Function(AtException exception, StackTrace stackTrace)? atSign,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? failureMessage,
    TResult Function(Object exception, StackTrace stackTrace)? exception,
    TResult Function(AtException exception, StackTrace stackTrace)? atSign,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FailureMessageError value) failureMessage,
    required TResult Function(ExceptionError value) exception,
    required TResult Function(AtError value) atSign,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FailureMessageError value)? failureMessage,
    TResult? Function(ExceptionError value)? exception,
    TResult? Function(AtError value)? atSign,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FailureMessageError value)? failureMessage,
    TResult Function(ExceptionError value)? exception,
    TResult Function(AtError value)? atSign,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FhirliteErrorCopyWith<$Res> {
  factory $FhirliteErrorCopyWith(
          FhirliteError value, $Res Function(FhirliteError) then) =
      _$FhirliteErrorCopyWithImpl<$Res, FhirliteError>;
}

/// @nodoc
class _$FhirliteErrorCopyWithImpl<$Res, $Val extends FhirliteError>
    implements $FhirliteErrorCopyWith<$Res> {
  _$FhirliteErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FailureMessageErrorCopyWith<$Res> {
  factory _$$FailureMessageErrorCopyWith(_$FailureMessageError value,
          $Res Function(_$FailureMessageError) then) =
      __$$FailureMessageErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$FailureMessageErrorCopyWithImpl<$Res>
    extends _$FhirliteErrorCopyWithImpl<$Res, _$FailureMessageError>
    implements _$$FailureMessageErrorCopyWith<$Res> {
  __$$FailureMessageErrorCopyWithImpl(
      _$FailureMessageError _value, $Res Function(_$FailureMessageError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$FailureMessageError(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FailureMessageError implements FailureMessageError {
  const _$FailureMessageError(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'FhirliteError.failureMessage(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureMessageError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureMessageErrorCopyWith<_$FailureMessageError> get copyWith =>
      __$$FailureMessageErrorCopyWithImpl<_$FailureMessageError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) failureMessage,
    required TResult Function(Object exception, StackTrace stackTrace)
        exception,
    required TResult Function(AtException exception, StackTrace stackTrace)
        atSign,
  }) {
    return failureMessage(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? failureMessage,
    TResult? Function(Object exception, StackTrace stackTrace)? exception,
    TResult? Function(AtException exception, StackTrace stackTrace)? atSign,
  }) {
    return failureMessage?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? failureMessage,
    TResult Function(Object exception, StackTrace stackTrace)? exception,
    TResult Function(AtException exception, StackTrace stackTrace)? atSign,
    required TResult orElse(),
  }) {
    if (failureMessage != null) {
      return failureMessage(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FailureMessageError value) failureMessage,
    required TResult Function(ExceptionError value) exception,
    required TResult Function(AtError value) atSign,
  }) {
    return failureMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FailureMessageError value)? failureMessage,
    TResult? Function(ExceptionError value)? exception,
    TResult? Function(AtError value)? atSign,
  }) {
    return failureMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FailureMessageError value)? failureMessage,
    TResult Function(ExceptionError value)? exception,
    TResult Function(AtError value)? atSign,
    required TResult orElse(),
  }) {
    if (failureMessage != null) {
      return failureMessage(this);
    }
    return orElse();
  }
}

abstract class FailureMessageError implements FhirliteError {
  const factory FailureMessageError(final String message) =
      _$FailureMessageError;

  String get message;
  @JsonKey(ignore: true)
  _$$FailureMessageErrorCopyWith<_$FailureMessageError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ExceptionErrorCopyWith<$Res> {
  factory _$$ExceptionErrorCopyWith(
          _$ExceptionError value, $Res Function(_$ExceptionError) then) =
      __$$ExceptionErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({Object exception, StackTrace stackTrace});
}

/// @nodoc
class __$$ExceptionErrorCopyWithImpl<$Res>
    extends _$FhirliteErrorCopyWithImpl<$Res, _$ExceptionError>
    implements _$$ExceptionErrorCopyWith<$Res> {
  __$$ExceptionErrorCopyWithImpl(
      _$ExceptionError _value, $Res Function(_$ExceptionError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exception = null,
    Object? stackTrace = null,
  }) {
    return _then(_$ExceptionError(
      null == exception ? _value.exception : exception,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$ExceptionError implements ExceptionError {
  const _$ExceptionError(this.exception, this.stackTrace);

  @override
  final Object exception;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'FhirliteError.exception(exception: $exception, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExceptionError &&
            const DeepCollectionEquality().equals(other.exception, exception) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(exception), stackTrace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExceptionErrorCopyWith<_$ExceptionError> get copyWith =>
      __$$ExceptionErrorCopyWithImpl<_$ExceptionError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) failureMessage,
    required TResult Function(Object exception, StackTrace stackTrace)
        exception,
    required TResult Function(AtException exception, StackTrace stackTrace)
        atSign,
  }) {
    return exception(this.exception, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? failureMessage,
    TResult? Function(Object exception, StackTrace stackTrace)? exception,
    TResult? Function(AtException exception, StackTrace stackTrace)? atSign,
  }) {
    return exception?.call(this.exception, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? failureMessage,
    TResult Function(Object exception, StackTrace stackTrace)? exception,
    TResult Function(AtException exception, StackTrace stackTrace)? atSign,
    required TResult orElse(),
  }) {
    if (exception != null) {
      return exception(this.exception, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FailureMessageError value) failureMessage,
    required TResult Function(ExceptionError value) exception,
    required TResult Function(AtError value) atSign,
  }) {
    return exception(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FailureMessageError value)? failureMessage,
    TResult? Function(ExceptionError value)? exception,
    TResult? Function(AtError value)? atSign,
  }) {
    return exception?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FailureMessageError value)? failureMessage,
    TResult Function(ExceptionError value)? exception,
    TResult Function(AtError value)? atSign,
    required TResult orElse(),
  }) {
    if (exception != null) {
      return exception(this);
    }
    return orElse();
  }
}

abstract class ExceptionError implements FhirliteError {
  const factory ExceptionError(
      final Object exception, final StackTrace stackTrace) = _$ExceptionError;

  Object get exception;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$$ExceptionErrorCopyWith<_$ExceptionError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AtErrorCopyWith<$Res> {
  factory _$$AtErrorCopyWith(_$AtError value, $Res Function(_$AtError) then) =
      __$$AtErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({AtException exception, StackTrace stackTrace});
}

/// @nodoc
class __$$AtErrorCopyWithImpl<$Res>
    extends _$FhirliteErrorCopyWithImpl<$Res, _$AtError>
    implements _$$AtErrorCopyWith<$Res> {
  __$$AtErrorCopyWithImpl(_$AtError _value, $Res Function(_$AtError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exception = null,
    Object? stackTrace = null,
  }) {
    return _then(_$AtError(
      null == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as AtException,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$AtError implements AtError {
  const _$AtError(this.exception, this.stackTrace);

  @override
  final AtException exception;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'FhirliteError.atSign(exception: $exception, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AtError &&
            (identical(other.exception, exception) ||
                other.exception == exception) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(runtimeType, exception, stackTrace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AtErrorCopyWith<_$AtError> get copyWith =>
      __$$AtErrorCopyWithImpl<_$AtError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) failureMessage,
    required TResult Function(Object exception, StackTrace stackTrace)
        exception,
    required TResult Function(AtException exception, StackTrace stackTrace)
        atSign,
  }) {
    return atSign(this.exception, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? failureMessage,
    TResult? Function(Object exception, StackTrace stackTrace)? exception,
    TResult? Function(AtException exception, StackTrace stackTrace)? atSign,
  }) {
    return atSign?.call(this.exception, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? failureMessage,
    TResult Function(Object exception, StackTrace stackTrace)? exception,
    TResult Function(AtException exception, StackTrace stackTrace)? atSign,
    required TResult orElse(),
  }) {
    if (atSign != null) {
      return atSign(this.exception, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FailureMessageError value) failureMessage,
    required TResult Function(ExceptionError value) exception,
    required TResult Function(AtError value) atSign,
  }) {
    return atSign(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FailureMessageError value)? failureMessage,
    TResult? Function(ExceptionError value)? exception,
    TResult? Function(AtError value)? atSign,
  }) {
    return atSign?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FailureMessageError value)? failureMessage,
    TResult Function(ExceptionError value)? exception,
    TResult Function(AtError value)? atSign,
    required TResult orElse(),
  }) {
    if (atSign != null) {
      return atSign(this);
    }
    return orElse();
  }
}

abstract class AtError implements FhirliteError {
  const factory AtError(
      final AtException exception, final StackTrace stackTrace) = _$AtError;

  AtException get exception;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$$AtErrorCopyWith<_$AtError> get copyWith =>
      throw _privateConstructorUsedError;
}
