// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'locale_failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LocaleFailures {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notSupportedError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notSupportedError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notSupportedError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NotSupportedError value) notSupportedError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NotSupportedError value)? notSupportedError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotSupportedError value)? notSupportedError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocaleFailuresCopyWith<$Res> {
  factory $LocaleFailuresCopyWith(
          LocaleFailures value, $Res Function(LocaleFailures) then) =
      _$LocaleFailuresCopyWithImpl<$Res, LocaleFailures>;
}

/// @nodoc
class _$LocaleFailuresCopyWithImpl<$Res, $Val extends LocaleFailures>
    implements $LocaleFailuresCopyWith<$Res> {
  _$LocaleFailuresCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$NotSupportedErrorImplCopyWith<$Res> {
  factory _$$NotSupportedErrorImplCopyWith(_$NotSupportedErrorImpl value,
          $Res Function(_$NotSupportedErrorImpl) then) =
      __$$NotSupportedErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NotSupportedErrorImplCopyWithImpl<$Res>
    extends _$LocaleFailuresCopyWithImpl<$Res, _$NotSupportedErrorImpl>
    implements _$$NotSupportedErrorImplCopyWith<$Res> {
  __$$NotSupportedErrorImplCopyWithImpl(_$NotSupportedErrorImpl _value,
      $Res Function(_$NotSupportedErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NotSupportedErrorImpl implements NotSupportedError {
  const _$NotSupportedErrorImpl();

  @override
  String toString() {
    return 'LocaleFailures.notSupportedError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NotSupportedErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notSupportedError,
  }) {
    return notSupportedError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notSupportedError,
  }) {
    return notSupportedError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notSupportedError,
    required TResult orElse(),
  }) {
    if (notSupportedError != null) {
      return notSupportedError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NotSupportedError value) notSupportedError,
  }) {
    return notSupportedError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NotSupportedError value)? notSupportedError,
  }) {
    return notSupportedError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotSupportedError value)? notSupportedError,
    required TResult orElse(),
  }) {
    if (notSupportedError != null) {
      return notSupportedError(this);
    }
    return orElse();
  }
}

abstract class NotSupportedError implements LocaleFailures {
  const factory NotSupportedError() = _$NotSupportedErrorImpl;
}
