// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'route_failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RouteFailures {
  String get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) pathNotAvailableError,
    required TResult Function(String message) missingRequestNumberOrIdError,
    required TResult Function(String message) missingTaskPathError,
    required TResult Function(String message) unspecifiedError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? pathNotAvailableError,
    TResult? Function(String message)? missingRequestNumberOrIdError,
    TResult? Function(String message)? missingTaskPathError,
    TResult? Function(String message)? unspecifiedError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? pathNotAvailableError,
    TResult Function(String message)? missingRequestNumberOrIdError,
    TResult Function(String message)? missingTaskPathError,
    TResult Function(String message)? unspecifiedError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RouteFailuresPathNotAvailableError value)
        pathNotAvailableError,
    required TResult Function(RouteFailuresMissingRequestNumberOrIdError value)
        missingRequestNumberOrIdError,
    required TResult Function(RouteFailuresMissingTaskPathError value)
        missingTaskPathError,
    required TResult Function(RouteFailuresUnspecifiedError value)
        unspecifiedError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RouteFailuresPathNotAvailableError value)?
        pathNotAvailableError,
    TResult? Function(RouteFailuresMissingRequestNumberOrIdError value)?
        missingRequestNumberOrIdError,
    TResult? Function(RouteFailuresMissingTaskPathError value)?
        missingTaskPathError,
    TResult? Function(RouteFailuresUnspecifiedError value)? unspecifiedError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RouteFailuresPathNotAvailableError value)?
        pathNotAvailableError,
    TResult Function(RouteFailuresMissingRequestNumberOrIdError value)?
        missingRequestNumberOrIdError,
    TResult Function(RouteFailuresMissingTaskPathError value)?
        missingTaskPathError,
    TResult Function(RouteFailuresUnspecifiedError value)? unspecifiedError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RouteFailuresCopyWith<RouteFailures> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RouteFailuresCopyWith<$Res> {
  factory $RouteFailuresCopyWith(
          RouteFailures value, $Res Function(RouteFailures) then) =
      _$RouteFailuresCopyWithImpl<$Res, RouteFailures>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$RouteFailuresCopyWithImpl<$Res, $Val extends RouteFailures>
    implements $RouteFailuresCopyWith<$Res> {
  _$RouteFailuresCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RouteFailuresPathNotAvailableErrorCopyWith<$Res>
    implements $RouteFailuresCopyWith<$Res> {
  factory _$$RouteFailuresPathNotAvailableErrorCopyWith(
          _$RouteFailuresPathNotAvailableError value,
          $Res Function(_$RouteFailuresPathNotAvailableError) then) =
      __$$RouteFailuresPathNotAvailableErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$RouteFailuresPathNotAvailableErrorCopyWithImpl<$Res>
    extends _$RouteFailuresCopyWithImpl<$Res,
        _$RouteFailuresPathNotAvailableError>
    implements _$$RouteFailuresPathNotAvailableErrorCopyWith<$Res> {
  __$$RouteFailuresPathNotAvailableErrorCopyWithImpl(
      _$RouteFailuresPathNotAvailableError _value,
      $Res Function(_$RouteFailuresPathNotAvailableError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$RouteFailuresPathNotAvailableError(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RouteFailuresPathNotAvailableError
    implements RouteFailuresPathNotAvailableError {
  const _$RouteFailuresPathNotAvailableError(
      [this.message = 'Error: This URL/path is not available']);

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'RouteFailures.pathNotAvailableError(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RouteFailuresPathNotAvailableError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RouteFailuresPathNotAvailableErrorCopyWith<
          _$RouteFailuresPathNotAvailableError>
      get copyWith => __$$RouteFailuresPathNotAvailableErrorCopyWithImpl<
          _$RouteFailuresPathNotAvailableError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) pathNotAvailableError,
    required TResult Function(String message) missingRequestNumberOrIdError,
    required TResult Function(String message) missingTaskPathError,
    required TResult Function(String message) unspecifiedError,
  }) {
    return pathNotAvailableError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? pathNotAvailableError,
    TResult? Function(String message)? missingRequestNumberOrIdError,
    TResult? Function(String message)? missingTaskPathError,
    TResult? Function(String message)? unspecifiedError,
  }) {
    return pathNotAvailableError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? pathNotAvailableError,
    TResult Function(String message)? missingRequestNumberOrIdError,
    TResult Function(String message)? missingTaskPathError,
    TResult Function(String message)? unspecifiedError,
    required TResult orElse(),
  }) {
    if (pathNotAvailableError != null) {
      return pathNotAvailableError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RouteFailuresPathNotAvailableError value)
        pathNotAvailableError,
    required TResult Function(RouteFailuresMissingRequestNumberOrIdError value)
        missingRequestNumberOrIdError,
    required TResult Function(RouteFailuresMissingTaskPathError value)
        missingTaskPathError,
    required TResult Function(RouteFailuresUnspecifiedError value)
        unspecifiedError,
  }) {
    return pathNotAvailableError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RouteFailuresPathNotAvailableError value)?
        pathNotAvailableError,
    TResult? Function(RouteFailuresMissingRequestNumberOrIdError value)?
        missingRequestNumberOrIdError,
    TResult? Function(RouteFailuresMissingTaskPathError value)?
        missingTaskPathError,
    TResult? Function(RouteFailuresUnspecifiedError value)? unspecifiedError,
  }) {
    return pathNotAvailableError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RouteFailuresPathNotAvailableError value)?
        pathNotAvailableError,
    TResult Function(RouteFailuresMissingRequestNumberOrIdError value)?
        missingRequestNumberOrIdError,
    TResult Function(RouteFailuresMissingTaskPathError value)?
        missingTaskPathError,
    TResult Function(RouteFailuresUnspecifiedError value)? unspecifiedError,
    required TResult orElse(),
  }) {
    if (pathNotAvailableError != null) {
      return pathNotAvailableError(this);
    }
    return orElse();
  }
}

abstract class RouteFailuresPathNotAvailableError
    implements RouteFailures, Exception {
  const factory RouteFailuresPathNotAvailableError([final String message]) =
      _$RouteFailuresPathNotAvailableError;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$RouteFailuresPathNotAvailableErrorCopyWith<
          _$RouteFailuresPathNotAvailableError>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RouteFailuresMissingRequestNumberOrIdErrorCopyWith<$Res>
    implements $RouteFailuresCopyWith<$Res> {
  factory _$$RouteFailuresMissingRequestNumberOrIdErrorCopyWith(
          _$RouteFailuresMissingRequestNumberOrIdError value,
          $Res Function(_$RouteFailuresMissingRequestNumberOrIdError) then) =
      __$$RouteFailuresMissingRequestNumberOrIdErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$RouteFailuresMissingRequestNumberOrIdErrorCopyWithImpl<$Res>
    extends _$RouteFailuresCopyWithImpl<$Res,
        _$RouteFailuresMissingRequestNumberOrIdError>
    implements _$$RouteFailuresMissingRequestNumberOrIdErrorCopyWith<$Res> {
  __$$RouteFailuresMissingRequestNumberOrIdErrorCopyWithImpl(
      _$RouteFailuresMissingRequestNumberOrIdError _value,
      $Res Function(_$RouteFailuresMissingRequestNumberOrIdError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$RouteFailuresMissingRequestNumberOrIdError(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RouteFailuresMissingRequestNumberOrIdError
    implements RouteFailuresMissingRequestNumberOrIdError {
  const _$RouteFailuresMissingRequestNumberOrIdError(
      [this.message = 'Error: Request Number or ID are missing']);

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'RouteFailures.missingRequestNumberOrIdError(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RouteFailuresMissingRequestNumberOrIdError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RouteFailuresMissingRequestNumberOrIdErrorCopyWith<
          _$RouteFailuresMissingRequestNumberOrIdError>
      get copyWith =>
          __$$RouteFailuresMissingRequestNumberOrIdErrorCopyWithImpl<
              _$RouteFailuresMissingRequestNumberOrIdError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) pathNotAvailableError,
    required TResult Function(String message) missingRequestNumberOrIdError,
    required TResult Function(String message) missingTaskPathError,
    required TResult Function(String message) unspecifiedError,
  }) {
    return missingRequestNumberOrIdError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? pathNotAvailableError,
    TResult? Function(String message)? missingRequestNumberOrIdError,
    TResult? Function(String message)? missingTaskPathError,
    TResult? Function(String message)? unspecifiedError,
  }) {
    return missingRequestNumberOrIdError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? pathNotAvailableError,
    TResult Function(String message)? missingRequestNumberOrIdError,
    TResult Function(String message)? missingTaskPathError,
    TResult Function(String message)? unspecifiedError,
    required TResult orElse(),
  }) {
    if (missingRequestNumberOrIdError != null) {
      return missingRequestNumberOrIdError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RouteFailuresPathNotAvailableError value)
        pathNotAvailableError,
    required TResult Function(RouteFailuresMissingRequestNumberOrIdError value)
        missingRequestNumberOrIdError,
    required TResult Function(RouteFailuresMissingTaskPathError value)
        missingTaskPathError,
    required TResult Function(RouteFailuresUnspecifiedError value)
        unspecifiedError,
  }) {
    return missingRequestNumberOrIdError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RouteFailuresPathNotAvailableError value)?
        pathNotAvailableError,
    TResult? Function(RouteFailuresMissingRequestNumberOrIdError value)?
        missingRequestNumberOrIdError,
    TResult? Function(RouteFailuresMissingTaskPathError value)?
        missingTaskPathError,
    TResult? Function(RouteFailuresUnspecifiedError value)? unspecifiedError,
  }) {
    return missingRequestNumberOrIdError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RouteFailuresPathNotAvailableError value)?
        pathNotAvailableError,
    TResult Function(RouteFailuresMissingRequestNumberOrIdError value)?
        missingRequestNumberOrIdError,
    TResult Function(RouteFailuresMissingTaskPathError value)?
        missingTaskPathError,
    TResult Function(RouteFailuresUnspecifiedError value)? unspecifiedError,
    required TResult orElse(),
  }) {
    if (missingRequestNumberOrIdError != null) {
      return missingRequestNumberOrIdError(this);
    }
    return orElse();
  }
}

abstract class RouteFailuresMissingRequestNumberOrIdError
    implements RouteFailures, Exception {
  const factory RouteFailuresMissingRequestNumberOrIdError(
      [final String message]) = _$RouteFailuresMissingRequestNumberOrIdError;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$RouteFailuresMissingRequestNumberOrIdErrorCopyWith<
          _$RouteFailuresMissingRequestNumberOrIdError>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RouteFailuresMissingTaskPathErrorCopyWith<$Res>
    implements $RouteFailuresCopyWith<$Res> {
  factory _$$RouteFailuresMissingTaskPathErrorCopyWith(
          _$RouteFailuresMissingTaskPathError value,
          $Res Function(_$RouteFailuresMissingTaskPathError) then) =
      __$$RouteFailuresMissingTaskPathErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$RouteFailuresMissingTaskPathErrorCopyWithImpl<$Res>
    extends _$RouteFailuresCopyWithImpl<$Res,
        _$RouteFailuresMissingTaskPathError>
    implements _$$RouteFailuresMissingTaskPathErrorCopyWith<$Res> {
  __$$RouteFailuresMissingTaskPathErrorCopyWithImpl(
      _$RouteFailuresMissingTaskPathError _value,
      $Res Function(_$RouteFailuresMissingTaskPathError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$RouteFailuresMissingTaskPathError(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RouteFailuresMissingTaskPathError
    implements RouteFailuresMissingTaskPathError {
  const _$RouteFailuresMissingTaskPathError(
      [this.message =
          'Error: Task is no longer available. Please login again']);

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'RouteFailures.missingTaskPathError(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RouteFailuresMissingTaskPathError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RouteFailuresMissingTaskPathErrorCopyWith<
          _$RouteFailuresMissingTaskPathError>
      get copyWith => __$$RouteFailuresMissingTaskPathErrorCopyWithImpl<
          _$RouteFailuresMissingTaskPathError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) pathNotAvailableError,
    required TResult Function(String message) missingRequestNumberOrIdError,
    required TResult Function(String message) missingTaskPathError,
    required TResult Function(String message) unspecifiedError,
  }) {
    return missingTaskPathError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? pathNotAvailableError,
    TResult? Function(String message)? missingRequestNumberOrIdError,
    TResult? Function(String message)? missingTaskPathError,
    TResult? Function(String message)? unspecifiedError,
  }) {
    return missingTaskPathError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? pathNotAvailableError,
    TResult Function(String message)? missingRequestNumberOrIdError,
    TResult Function(String message)? missingTaskPathError,
    TResult Function(String message)? unspecifiedError,
    required TResult orElse(),
  }) {
    if (missingTaskPathError != null) {
      return missingTaskPathError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RouteFailuresPathNotAvailableError value)
        pathNotAvailableError,
    required TResult Function(RouteFailuresMissingRequestNumberOrIdError value)
        missingRequestNumberOrIdError,
    required TResult Function(RouteFailuresMissingTaskPathError value)
        missingTaskPathError,
    required TResult Function(RouteFailuresUnspecifiedError value)
        unspecifiedError,
  }) {
    return missingTaskPathError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RouteFailuresPathNotAvailableError value)?
        pathNotAvailableError,
    TResult? Function(RouteFailuresMissingRequestNumberOrIdError value)?
        missingRequestNumberOrIdError,
    TResult? Function(RouteFailuresMissingTaskPathError value)?
        missingTaskPathError,
    TResult? Function(RouteFailuresUnspecifiedError value)? unspecifiedError,
  }) {
    return missingTaskPathError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RouteFailuresPathNotAvailableError value)?
        pathNotAvailableError,
    TResult Function(RouteFailuresMissingRequestNumberOrIdError value)?
        missingRequestNumberOrIdError,
    TResult Function(RouteFailuresMissingTaskPathError value)?
        missingTaskPathError,
    TResult Function(RouteFailuresUnspecifiedError value)? unspecifiedError,
    required TResult orElse(),
  }) {
    if (missingTaskPathError != null) {
      return missingTaskPathError(this);
    }
    return orElse();
  }
}

abstract class RouteFailuresMissingTaskPathError
    implements RouteFailures, Exception {
  const factory RouteFailuresMissingTaskPathError([final String message]) =
      _$RouteFailuresMissingTaskPathError;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$RouteFailuresMissingTaskPathErrorCopyWith<
          _$RouteFailuresMissingTaskPathError>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RouteFailuresUnspecifiedErrorCopyWith<$Res>
    implements $RouteFailuresCopyWith<$Res> {
  factory _$$RouteFailuresUnspecifiedErrorCopyWith(
          _$RouteFailuresUnspecifiedError value,
          $Res Function(_$RouteFailuresUnspecifiedError) then) =
      __$$RouteFailuresUnspecifiedErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$RouteFailuresUnspecifiedErrorCopyWithImpl<$Res>
    extends _$RouteFailuresCopyWithImpl<$Res, _$RouteFailuresUnspecifiedError>
    implements _$$RouteFailuresUnspecifiedErrorCopyWith<$Res> {
  __$$RouteFailuresUnspecifiedErrorCopyWithImpl(
      _$RouteFailuresUnspecifiedError _value,
      $Res Function(_$RouteFailuresUnspecifiedError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$RouteFailuresUnspecifiedError(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RouteFailuresUnspecifiedError implements RouteFailuresUnspecifiedError {
  const _$RouteFailuresUnspecifiedError(
      [this.message = 'Error: Unable to find this route']);

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'RouteFailures.unspecifiedError(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RouteFailuresUnspecifiedError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RouteFailuresUnspecifiedErrorCopyWith<_$RouteFailuresUnspecifiedError>
      get copyWith => __$$RouteFailuresUnspecifiedErrorCopyWithImpl<
          _$RouteFailuresUnspecifiedError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) pathNotAvailableError,
    required TResult Function(String message) missingRequestNumberOrIdError,
    required TResult Function(String message) missingTaskPathError,
    required TResult Function(String message) unspecifiedError,
  }) {
    return unspecifiedError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? pathNotAvailableError,
    TResult? Function(String message)? missingRequestNumberOrIdError,
    TResult? Function(String message)? missingTaskPathError,
    TResult? Function(String message)? unspecifiedError,
  }) {
    return unspecifiedError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? pathNotAvailableError,
    TResult Function(String message)? missingRequestNumberOrIdError,
    TResult Function(String message)? missingTaskPathError,
    TResult Function(String message)? unspecifiedError,
    required TResult orElse(),
  }) {
    if (unspecifiedError != null) {
      return unspecifiedError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RouteFailuresPathNotAvailableError value)
        pathNotAvailableError,
    required TResult Function(RouteFailuresMissingRequestNumberOrIdError value)
        missingRequestNumberOrIdError,
    required TResult Function(RouteFailuresMissingTaskPathError value)
        missingTaskPathError,
    required TResult Function(RouteFailuresUnspecifiedError value)
        unspecifiedError,
  }) {
    return unspecifiedError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RouteFailuresPathNotAvailableError value)?
        pathNotAvailableError,
    TResult? Function(RouteFailuresMissingRequestNumberOrIdError value)?
        missingRequestNumberOrIdError,
    TResult? Function(RouteFailuresMissingTaskPathError value)?
        missingTaskPathError,
    TResult? Function(RouteFailuresUnspecifiedError value)? unspecifiedError,
  }) {
    return unspecifiedError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RouteFailuresPathNotAvailableError value)?
        pathNotAvailableError,
    TResult Function(RouteFailuresMissingRequestNumberOrIdError value)?
        missingRequestNumberOrIdError,
    TResult Function(RouteFailuresMissingTaskPathError value)?
        missingTaskPathError,
    TResult Function(RouteFailuresUnspecifiedError value)? unspecifiedError,
    required TResult orElse(),
  }) {
    if (unspecifiedError != null) {
      return unspecifiedError(this);
    }
    return orElse();
  }
}

abstract class RouteFailuresUnspecifiedError
    implements RouteFailures, Exception {
  const factory RouteFailuresUnspecifiedError([final String message]) =
      _$RouteFailuresUnspecifiedError;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$RouteFailuresUnspecifiedErrorCopyWith<_$RouteFailuresUnspecifiedError>
      get copyWith => throw _privateConstructorUsedError;
}
