// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'client_theme_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ClientThemeState {
  /// Data specifc to the theme
  ThemeData get data => throw _privateConstructorUsedError;

  /// Though it is also possible to find this within [data], having them easily accessible is preferred
  /// These values need to be set manually each time state is refreshed, however
  /// Instead of setting defaults, we are making them required to remind you to set them each time
  ThemeMode get themeMode => throw _privateConstructorUsedError;

  /// Version number, only shown during dev / stage instances of the app
  String get versionNumber => throw _privateConstructorUsedError;

  /// Should trigger only if the app is loaded for the first time
  bool get isFirstLoad => throw _privateConstructorUsedError;

  /// Deprecated variable to decide if the buttons should take more/less horizontal space
  bool get isWideMode => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ClientThemeStateCopyWith<ClientThemeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientThemeStateCopyWith<$Res> {
  factory $ClientThemeStateCopyWith(
          ClientThemeState value, $Res Function(ClientThemeState) then) =
      _$ClientThemeStateCopyWithImpl<$Res, ClientThemeState>;
  @useResult
  $Res call(
      {ThemeData data,
      ThemeMode themeMode,
      String versionNumber,
      bool isFirstLoad,
      bool isWideMode});
}

/// @nodoc
class _$ClientThemeStateCopyWithImpl<$Res, $Val extends ClientThemeState>
    implements $ClientThemeStateCopyWith<$Res> {
  _$ClientThemeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? themeMode = null,
    Object? versionNumber = null,
    Object? isFirstLoad = null,
    Object? isWideMode = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ThemeData,
      themeMode: null == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
      versionNumber: null == versionNumber
          ? _value.versionNumber
          : versionNumber // ignore: cast_nullable_to_non_nullable
              as String,
      isFirstLoad: null == isFirstLoad
          ? _value.isFirstLoad
          : isFirstLoad // ignore: cast_nullable_to_non_nullable
              as bool,
      isWideMode: null == isWideMode
          ? _value.isWideMode
          : isWideMode // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ClientThemeStateCopyWith<$Res>
    implements $ClientThemeStateCopyWith<$Res> {
  factory _$$_ClientThemeStateCopyWith(
          _$_ClientThemeState value, $Res Function(_$_ClientThemeState) then) =
      __$$_ClientThemeStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ThemeData data,
      ThemeMode themeMode,
      String versionNumber,
      bool isFirstLoad,
      bool isWideMode});
}

/// @nodoc
class __$$_ClientThemeStateCopyWithImpl<$Res>
    extends _$ClientThemeStateCopyWithImpl<$Res, _$_ClientThemeState>
    implements _$$_ClientThemeStateCopyWith<$Res> {
  __$$_ClientThemeStateCopyWithImpl(
      _$_ClientThemeState _value, $Res Function(_$_ClientThemeState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? themeMode = null,
    Object? versionNumber = null,
    Object? isFirstLoad = null,
    Object? isWideMode = null,
  }) {
    return _then(_$_ClientThemeState(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ThemeData,
      themeMode: null == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
      versionNumber: null == versionNumber
          ? _value.versionNumber
          : versionNumber // ignore: cast_nullable_to_non_nullable
              as String,
      isFirstLoad: null == isFirstLoad
          ? _value.isFirstLoad
          : isFirstLoad // ignore: cast_nullable_to_non_nullable
              as bool,
      isWideMode: null == isWideMode
          ? _value.isWideMode
          : isWideMode // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ClientThemeState implements _ClientThemeState {
  _$_ClientThemeState(
      {required this.data,
      required this.themeMode,
      this.versionNumber = '',
      this.isFirstLoad = true,
      this.isWideMode = false});

  /// Data specifc to the theme
  @override
  final ThemeData data;

  /// Though it is also possible to find this within [data], having them easily accessible is preferred
  /// These values need to be set manually each time state is refreshed, however
  /// Instead of setting defaults, we are making them required to remind you to set them each time
  @override
  final ThemeMode themeMode;

  /// Version number, only shown during dev / stage instances of the app
  @override
  @JsonKey()
  final String versionNumber;

  /// Should trigger only if the app is loaded for the first time
  @override
  @JsonKey()
  final bool isFirstLoad;

  /// Deprecated variable to decide if the buttons should take more/less horizontal space
  @override
  @JsonKey()
  final bool isWideMode;

  @override
  String toString() {
    return 'ClientThemeState(data: $data, themeMode: $themeMode, versionNumber: $versionNumber, isFirstLoad: $isFirstLoad, isWideMode: $isWideMode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClientThemeState &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.themeMode, themeMode) ||
                other.themeMode == themeMode) &&
            (identical(other.versionNumber, versionNumber) ||
                other.versionNumber == versionNumber) &&
            (identical(other.isFirstLoad, isFirstLoad) ||
                other.isFirstLoad == isFirstLoad) &&
            (identical(other.isWideMode, isWideMode) ||
                other.isWideMode == isWideMode));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, data, themeMode, versionNumber, isFirstLoad, isWideMode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ClientThemeStateCopyWith<_$_ClientThemeState> get copyWith =>
      __$$_ClientThemeStateCopyWithImpl<_$_ClientThemeState>(this, _$identity);
}

abstract class _ClientThemeState implements ClientThemeState {
  factory _ClientThemeState(
      {required final ThemeData data,
      required final ThemeMode themeMode,
      final String versionNumber,
      final bool isFirstLoad,
      final bool isWideMode}) = _$_ClientThemeState;

  @override

  /// Data specifc to the theme
  ThemeData get data;
  @override

  /// Though it is also possible to find this within [data], having them easily accessible is preferred
  /// These values need to be set manually each time state is refreshed, however
  /// Instead of setting defaults, we are making them required to remind you to set them each time
  ThemeMode get themeMode;
  @override

  /// Version number, only shown during dev / stage instances of the app
  String get versionNumber;
  @override

  /// Should trigger only if the app is loaded for the first time
  bool get isFirstLoad;
  @override

  /// Deprecated variable to decide if the buttons should take more/less horizontal space
  bool get isWideMode;
  @override
  @JsonKey(ignore: true)
  _$$_ClientThemeStateCopyWith<_$_ClientThemeState> get copyWith =>
      throw _privateConstructorUsedError;
}
