// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'locale_events.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LocaleEvents {
  Locale? get newLocale => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Locale? newLocale) setLocale,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Locale? newLocale)? setLocale,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Locale? newLocale)? setLocale,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SetLocale value) setLocale,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SetLocale value)? setLocale,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SetLocale value)? setLocale,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LocaleEventsCopyWith<LocaleEvents> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocaleEventsCopyWith<$Res> {
  factory $LocaleEventsCopyWith(
          LocaleEvents value, $Res Function(LocaleEvents) then) =
      _$LocaleEventsCopyWithImpl<$Res, LocaleEvents>;
  @useResult
  $Res call({Locale? newLocale});
}

/// @nodoc
class _$LocaleEventsCopyWithImpl<$Res, $Val extends LocaleEvents>
    implements $LocaleEventsCopyWith<$Res> {
  _$LocaleEventsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newLocale = freezed,
  }) {
    return _then(_value.copyWith(
      newLocale: freezed == newLocale
          ? _value.newLocale
          : newLocale // ignore: cast_nullable_to_non_nullable
              as Locale?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SetLocaleImplCopyWith<$Res>
    implements $LocaleEventsCopyWith<$Res> {
  factory _$$SetLocaleImplCopyWith(
          _$SetLocaleImpl value, $Res Function(_$SetLocaleImpl) then) =
      __$$SetLocaleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Locale? newLocale});
}

/// @nodoc
class __$$SetLocaleImplCopyWithImpl<$Res>
    extends _$LocaleEventsCopyWithImpl<$Res, _$SetLocaleImpl>
    implements _$$SetLocaleImplCopyWith<$Res> {
  __$$SetLocaleImplCopyWithImpl(
      _$SetLocaleImpl _value, $Res Function(_$SetLocaleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newLocale = freezed,
  }) {
    return _then(_$SetLocaleImpl(
      newLocale: freezed == newLocale
          ? _value.newLocale
          : newLocale // ignore: cast_nullable_to_non_nullable
              as Locale?,
    ));
  }
}

/// @nodoc

class _$SetLocaleImpl implements SetLocale {
  const _$SetLocaleImpl({required this.newLocale});

  @override
  final Locale? newLocale;

  @override
  String toString() {
    return 'LocaleEvents.setLocale(newLocale: $newLocale)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetLocaleImpl &&
            (identical(other.newLocale, newLocale) ||
                other.newLocale == newLocale));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newLocale);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetLocaleImplCopyWith<_$SetLocaleImpl> get copyWith =>
      __$$SetLocaleImplCopyWithImpl<_$SetLocaleImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Locale? newLocale) setLocale,
  }) {
    return setLocale(newLocale);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Locale? newLocale)? setLocale,
  }) {
    return setLocale?.call(newLocale);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Locale? newLocale)? setLocale,
    required TResult orElse(),
  }) {
    if (setLocale != null) {
      return setLocale(newLocale);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SetLocale value) setLocale,
  }) {
    return setLocale(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SetLocale value)? setLocale,
  }) {
    return setLocale?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SetLocale value)? setLocale,
    required TResult orElse(),
  }) {
    if (setLocale != null) {
      return setLocale(this);
    }
    return orElse();
  }
}

abstract class SetLocale implements LocaleEvents {
  const factory SetLocale({required final Locale? newLocale}) = _$SetLocaleImpl;

  @override
  Locale? get newLocale;
  @override
  @JsonKey(ignore: true)
  _$$SetLocaleImplCopyWith<_$SetLocaleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
