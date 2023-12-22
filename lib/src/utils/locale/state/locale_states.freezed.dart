// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'locale_states.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LocaleStates {
  Locale? get selectedLocale => throw _privateConstructorUsedError;
  Locale? get deviceLocale => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LocaleStatesCopyWith<LocaleStates> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocaleStatesCopyWith<$Res> {
  factory $LocaleStatesCopyWith(
          LocaleStates value, $Res Function(LocaleStates) then) =
      _$LocaleStatesCopyWithImpl<$Res, LocaleStates>;
  @useResult
  $Res call({Locale? selectedLocale, Locale? deviceLocale});
}

/// @nodoc
class _$LocaleStatesCopyWithImpl<$Res, $Val extends LocaleStates>
    implements $LocaleStatesCopyWith<$Res> {
  _$LocaleStatesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedLocale = freezed,
    Object? deviceLocale = freezed,
  }) {
    return _then(_value.copyWith(
      selectedLocale: freezed == selectedLocale
          ? _value.selectedLocale
          : selectedLocale // ignore: cast_nullable_to_non_nullable
              as Locale?,
      deviceLocale: freezed == deviceLocale
          ? _value.deviceLocale
          : deviceLocale // ignore: cast_nullable_to_non_nullable
              as Locale?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocaleStatesImplCopyWith<$Res>
    implements $LocaleStatesCopyWith<$Res> {
  factory _$$LocaleStatesImplCopyWith(
          _$LocaleStatesImpl value, $Res Function(_$LocaleStatesImpl) then) =
      __$$LocaleStatesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Locale? selectedLocale, Locale? deviceLocale});
}

/// @nodoc
class __$$LocaleStatesImplCopyWithImpl<$Res>
    extends _$LocaleStatesCopyWithImpl<$Res, _$LocaleStatesImpl>
    implements _$$LocaleStatesImplCopyWith<$Res> {
  __$$LocaleStatesImplCopyWithImpl(
      _$LocaleStatesImpl _value, $Res Function(_$LocaleStatesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedLocale = freezed,
    Object? deviceLocale = freezed,
  }) {
    return _then(_$LocaleStatesImpl(
      selectedLocale: freezed == selectedLocale
          ? _value.selectedLocale
          : selectedLocale // ignore: cast_nullable_to_non_nullable
              as Locale?,
      deviceLocale: freezed == deviceLocale
          ? _value.deviceLocale
          : deviceLocale // ignore: cast_nullable_to_non_nullable
              as Locale?,
    ));
  }
}

/// @nodoc

class _$LocaleStatesImpl implements _LocaleStates {
  const _$LocaleStatesImpl({this.selectedLocale, required this.deviceLocale});

  @override
  final Locale? selectedLocale;
  @override
  final Locale? deviceLocale;

  @override
  String toString() {
    return 'LocaleStates(selectedLocale: $selectedLocale, deviceLocale: $deviceLocale)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocaleStatesImpl &&
            (identical(other.selectedLocale, selectedLocale) ||
                other.selectedLocale == selectedLocale) &&
            (identical(other.deviceLocale, deviceLocale) ||
                other.deviceLocale == deviceLocale));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedLocale, deviceLocale);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocaleStatesImplCopyWith<_$LocaleStatesImpl> get copyWith =>
      __$$LocaleStatesImplCopyWithImpl<_$LocaleStatesImpl>(this, _$identity);
}

abstract class _LocaleStates implements LocaleStates {
  const factory _LocaleStates(
      {final Locale? selectedLocale,
      required final Locale? deviceLocale}) = _$LocaleStatesImpl;

  @override
  Locale? get selectedLocale;
  @override
  Locale? get deviceLocale;
  @override
  @JsonKey(ignore: true)
  _$$LocaleStatesImplCopyWith<_$LocaleStatesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
