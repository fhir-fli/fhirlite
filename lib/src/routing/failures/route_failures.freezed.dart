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
    required TResult Function(String message) unspecifiedError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? pathNotAvailableError,
    TResult? Function(String message)? unspecifiedError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? pathNotAvailableError,
    TResult Function(String message)? unspecifiedError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RouteFailuresPathNotAvailableError value)
        pathNotAvailableError,
    required TResult Function(RouteFailuresUnspecifiedError value)
        unspecifiedError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RouteFailuresPathNotAvailableError value)?
        pathNotAvailableError,
    TResult? Function(RouteFailuresUnspecifiedError value)? unspecifiedError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RouteFailuresPathNotAvailableError value)?
        pathNotAvailableError,
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
    required TResult Function(String message) unspecifiedError,
  }) {
    return pathNotAvailableError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? pathNotAvailableError,
    TResult? Function(String message)? unspecifiedError,
  }) {
    return pathNotAvailableError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? pathNotAvailableError,
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
    TResult? Function(RouteFailuresUnspecifiedError value)? unspecifiedError,
  }) {
    return pathNotAvailableError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RouteFailuresPathNotAvailableError value)?
        pathNotAvailableError,
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
    required TResult Function(String message) unspecifiedError,
  }) {
    return unspecifiedError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? pathNotAvailableError,
    TResult? Function(String message)? unspecifiedError,
  }) {
    return unspecifiedError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? pathNotAvailableError,
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
    TResult? Function(RouteFailuresUnspecifiedError value)? unspecifiedError,
  }) {
    return unspecifiedError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RouteFailuresPathNotAvailableError value)?
        pathNotAvailableError,
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
