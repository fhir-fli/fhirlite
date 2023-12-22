// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'at_fhir_notification.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AtFhirNotification _$AtFhirNotificationFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'dstu2Resource':
      return AtFhirDstu2ResourceNotification.fromJson(json);
    case 'stu3Resource':
      return AtFhirStu3ResourceNotification.fromJson(json);
    case 'r4Resource':
      return AtFhirR4ResourceNotification.fromJson(json);
    case 'r5Resource':
      return AtFhirR5ResourceNotification.fromJson(json);
    case 'dstu2Request':
      return AtFhirDstu2RequestNotification.fromJson(json);
    case 'stu3Request':
      return AtFhirStu3RequestNotification.fromJson(json);
    case 'r4Request':
      return AtFhirR4RequestNotification.fromJson(json);
    case 'r5Request':
      return AtFhirR5RequestNotification.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'AtFhirNotification',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$AtFhirNotification {
  Object get value => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dstu2.Resource value) dstu2Resource,
    required TResult Function(stu3.Resource value) stu3Resource,
    required TResult Function(r4.Resource value) r4Resource,
    required TResult Function(r5.Resource value) r5Resource,
    required TResult Function(dstu2_request.FhirRequest value) dstu2Request,
    required TResult Function(stu3_request.FhirRequest value) stu3Request,
    required TResult Function(r4_request.FhirRequest value) r4Request,
    required TResult Function(r5_request.FhirRequest value) r5Request,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dstu2.Resource value)? dstu2Resource,
    TResult? Function(stu3.Resource value)? stu3Resource,
    TResult? Function(r4.Resource value)? r4Resource,
    TResult? Function(r5.Resource value)? r5Resource,
    TResult? Function(dstu2_request.FhirRequest value)? dstu2Request,
    TResult? Function(stu3_request.FhirRequest value)? stu3Request,
    TResult? Function(r4_request.FhirRequest value)? r4Request,
    TResult? Function(r5_request.FhirRequest value)? r5Request,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dstu2.Resource value)? dstu2Resource,
    TResult Function(stu3.Resource value)? stu3Resource,
    TResult Function(r4.Resource value)? r4Resource,
    TResult Function(r5.Resource value)? r5Resource,
    TResult Function(dstu2_request.FhirRequest value)? dstu2Request,
    TResult Function(stu3_request.FhirRequest value)? stu3Request,
    TResult Function(r4_request.FhirRequest value)? r4Request,
    TResult Function(r5_request.FhirRequest value)? r5Request,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AtFhirDstu2ResourceNotification value)
        dstu2Resource,
    required TResult Function(AtFhirStu3ResourceNotification value)
        stu3Resource,
    required TResult Function(AtFhirR4ResourceNotification value) r4Resource,
    required TResult Function(AtFhirR5ResourceNotification value) r5Resource,
    required TResult Function(AtFhirDstu2RequestNotification value)
        dstu2Request,
    required TResult Function(AtFhirStu3RequestNotification value) stu3Request,
    required TResult Function(AtFhirR4RequestNotification value) r4Request,
    required TResult Function(AtFhirR5RequestNotification value) r5Request,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AtFhirDstu2ResourceNotification value)? dstu2Resource,
    TResult? Function(AtFhirStu3ResourceNotification value)? stu3Resource,
    TResult? Function(AtFhirR4ResourceNotification value)? r4Resource,
    TResult? Function(AtFhirR5ResourceNotification value)? r5Resource,
    TResult? Function(AtFhirDstu2RequestNotification value)? dstu2Request,
    TResult? Function(AtFhirStu3RequestNotification value)? stu3Request,
    TResult? Function(AtFhirR4RequestNotification value)? r4Request,
    TResult? Function(AtFhirR5RequestNotification value)? r5Request,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AtFhirDstu2ResourceNotification value)? dstu2Resource,
    TResult Function(AtFhirStu3ResourceNotification value)? stu3Resource,
    TResult Function(AtFhirR4ResourceNotification value)? r4Resource,
    TResult Function(AtFhirR5ResourceNotification value)? r5Resource,
    TResult Function(AtFhirDstu2RequestNotification value)? dstu2Request,
    TResult Function(AtFhirStu3RequestNotification value)? stu3Request,
    TResult Function(AtFhirR4RequestNotification value)? r4Request,
    TResult Function(AtFhirR5RequestNotification value)? r5Request,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AtFhirNotificationCopyWith<$Res> {
  factory $AtFhirNotificationCopyWith(
          AtFhirNotification value, $Res Function(AtFhirNotification) then) =
      _$AtFhirNotificationCopyWithImpl<$Res, AtFhirNotification>;
}

/// @nodoc
class _$AtFhirNotificationCopyWithImpl<$Res, $Val extends AtFhirNotification>
    implements $AtFhirNotificationCopyWith<$Res> {
  _$AtFhirNotificationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AtFhirDstu2ResourceNotificationCopyWith<$Res> {
  factory _$$AtFhirDstu2ResourceNotificationCopyWith(
          _$AtFhirDstu2ResourceNotification value,
          $Res Function(_$AtFhirDstu2ResourceNotification) then) =
      __$$AtFhirDstu2ResourceNotificationCopyWithImpl<$Res>;
  @useResult
  $Res call({dstu2.Resource value});
}

/// @nodoc
class __$$AtFhirDstu2ResourceNotificationCopyWithImpl<$Res>
    extends _$AtFhirNotificationCopyWithImpl<$Res,
        _$AtFhirDstu2ResourceNotification>
    implements _$$AtFhirDstu2ResourceNotificationCopyWith<$Res> {
  __$$AtFhirDstu2ResourceNotificationCopyWithImpl(
      _$AtFhirDstu2ResourceNotification _value,
      $Res Function(_$AtFhirDstu2ResourceNotification) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$AtFhirDstu2ResourceNotification(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as dstu2.Resource,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AtFhirDstu2ResourceNotification
    extends AtFhirDstu2ResourceNotification {
  const _$AtFhirDstu2ResourceNotification(this.value, {final String? $type})
      : $type = $type ?? 'dstu2Resource',
        super._();

  factory _$AtFhirDstu2ResourceNotification.fromJson(
          Map<String, dynamic> json) =>
      _$$AtFhirDstu2ResourceNotificationFromJson(json);

  @override
  final dstu2.Resource value;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AtFhirNotification.dstu2Resource(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AtFhirDstu2ResourceNotification &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AtFhirDstu2ResourceNotificationCopyWith<_$AtFhirDstu2ResourceNotification>
      get copyWith => __$$AtFhirDstu2ResourceNotificationCopyWithImpl<
          _$AtFhirDstu2ResourceNotification>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dstu2.Resource value) dstu2Resource,
    required TResult Function(stu3.Resource value) stu3Resource,
    required TResult Function(r4.Resource value) r4Resource,
    required TResult Function(r5.Resource value) r5Resource,
    required TResult Function(dstu2_request.FhirRequest value) dstu2Request,
    required TResult Function(stu3_request.FhirRequest value) stu3Request,
    required TResult Function(r4_request.FhirRequest value) r4Request,
    required TResult Function(r5_request.FhirRequest value) r5Request,
  }) {
    return dstu2Resource(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dstu2.Resource value)? dstu2Resource,
    TResult? Function(stu3.Resource value)? stu3Resource,
    TResult? Function(r4.Resource value)? r4Resource,
    TResult? Function(r5.Resource value)? r5Resource,
    TResult? Function(dstu2_request.FhirRequest value)? dstu2Request,
    TResult? Function(stu3_request.FhirRequest value)? stu3Request,
    TResult? Function(r4_request.FhirRequest value)? r4Request,
    TResult? Function(r5_request.FhirRequest value)? r5Request,
  }) {
    return dstu2Resource?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dstu2.Resource value)? dstu2Resource,
    TResult Function(stu3.Resource value)? stu3Resource,
    TResult Function(r4.Resource value)? r4Resource,
    TResult Function(r5.Resource value)? r5Resource,
    TResult Function(dstu2_request.FhirRequest value)? dstu2Request,
    TResult Function(stu3_request.FhirRequest value)? stu3Request,
    TResult Function(r4_request.FhirRequest value)? r4Request,
    TResult Function(r5_request.FhirRequest value)? r5Request,
    required TResult orElse(),
  }) {
    if (dstu2Resource != null) {
      return dstu2Resource(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AtFhirDstu2ResourceNotification value)
        dstu2Resource,
    required TResult Function(AtFhirStu3ResourceNotification value)
        stu3Resource,
    required TResult Function(AtFhirR4ResourceNotification value) r4Resource,
    required TResult Function(AtFhirR5ResourceNotification value) r5Resource,
    required TResult Function(AtFhirDstu2RequestNotification value)
        dstu2Request,
    required TResult Function(AtFhirStu3RequestNotification value) stu3Request,
    required TResult Function(AtFhirR4RequestNotification value) r4Request,
    required TResult Function(AtFhirR5RequestNotification value) r5Request,
  }) {
    return dstu2Resource(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AtFhirDstu2ResourceNotification value)? dstu2Resource,
    TResult? Function(AtFhirStu3ResourceNotification value)? stu3Resource,
    TResult? Function(AtFhirR4ResourceNotification value)? r4Resource,
    TResult? Function(AtFhirR5ResourceNotification value)? r5Resource,
    TResult? Function(AtFhirDstu2RequestNotification value)? dstu2Request,
    TResult? Function(AtFhirStu3RequestNotification value)? stu3Request,
    TResult? Function(AtFhirR4RequestNotification value)? r4Request,
    TResult? Function(AtFhirR5RequestNotification value)? r5Request,
  }) {
    return dstu2Resource?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AtFhirDstu2ResourceNotification value)? dstu2Resource,
    TResult Function(AtFhirStu3ResourceNotification value)? stu3Resource,
    TResult Function(AtFhirR4ResourceNotification value)? r4Resource,
    TResult Function(AtFhirR5ResourceNotification value)? r5Resource,
    TResult Function(AtFhirDstu2RequestNotification value)? dstu2Request,
    TResult Function(AtFhirStu3RequestNotification value)? stu3Request,
    TResult Function(AtFhirR4RequestNotification value)? r4Request,
    TResult Function(AtFhirR5RequestNotification value)? r5Request,
    required TResult orElse(),
  }) {
    if (dstu2Resource != null) {
      return dstu2Resource(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AtFhirDstu2ResourceNotificationToJson(
      this,
    );
  }
}

abstract class AtFhirDstu2ResourceNotification extends AtFhirNotification {
  const factory AtFhirDstu2ResourceNotification(final dstu2.Resource value) =
      _$AtFhirDstu2ResourceNotification;
  const AtFhirDstu2ResourceNotification._() : super._();

  factory AtFhirDstu2ResourceNotification.fromJson(Map<String, dynamic> json) =
      _$AtFhirDstu2ResourceNotification.fromJson;

  @override
  dstu2.Resource get value;
  @JsonKey(ignore: true)
  _$$AtFhirDstu2ResourceNotificationCopyWith<_$AtFhirDstu2ResourceNotification>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AtFhirStu3ResourceNotificationCopyWith<$Res> {
  factory _$$AtFhirStu3ResourceNotificationCopyWith(
          _$AtFhirStu3ResourceNotification value,
          $Res Function(_$AtFhirStu3ResourceNotification) then) =
      __$$AtFhirStu3ResourceNotificationCopyWithImpl<$Res>;
  @useResult
  $Res call({stu3.Resource value});
}

/// @nodoc
class __$$AtFhirStu3ResourceNotificationCopyWithImpl<$Res>
    extends _$AtFhirNotificationCopyWithImpl<$Res,
        _$AtFhirStu3ResourceNotification>
    implements _$$AtFhirStu3ResourceNotificationCopyWith<$Res> {
  __$$AtFhirStu3ResourceNotificationCopyWithImpl(
      _$AtFhirStu3ResourceNotification _value,
      $Res Function(_$AtFhirStu3ResourceNotification) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$AtFhirStu3ResourceNotification(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as stu3.Resource,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AtFhirStu3ResourceNotification extends AtFhirStu3ResourceNotification {
  const _$AtFhirStu3ResourceNotification(this.value, {final String? $type})
      : $type = $type ?? 'stu3Resource',
        super._();

  factory _$AtFhirStu3ResourceNotification.fromJson(
          Map<String, dynamic> json) =>
      _$$AtFhirStu3ResourceNotificationFromJson(json);

  @override
  final stu3.Resource value;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AtFhirNotification.stu3Resource(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AtFhirStu3ResourceNotification &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AtFhirStu3ResourceNotificationCopyWith<_$AtFhirStu3ResourceNotification>
      get copyWith => __$$AtFhirStu3ResourceNotificationCopyWithImpl<
          _$AtFhirStu3ResourceNotification>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dstu2.Resource value) dstu2Resource,
    required TResult Function(stu3.Resource value) stu3Resource,
    required TResult Function(r4.Resource value) r4Resource,
    required TResult Function(r5.Resource value) r5Resource,
    required TResult Function(dstu2_request.FhirRequest value) dstu2Request,
    required TResult Function(stu3_request.FhirRequest value) stu3Request,
    required TResult Function(r4_request.FhirRequest value) r4Request,
    required TResult Function(r5_request.FhirRequest value) r5Request,
  }) {
    return stu3Resource(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dstu2.Resource value)? dstu2Resource,
    TResult? Function(stu3.Resource value)? stu3Resource,
    TResult? Function(r4.Resource value)? r4Resource,
    TResult? Function(r5.Resource value)? r5Resource,
    TResult? Function(dstu2_request.FhirRequest value)? dstu2Request,
    TResult? Function(stu3_request.FhirRequest value)? stu3Request,
    TResult? Function(r4_request.FhirRequest value)? r4Request,
    TResult? Function(r5_request.FhirRequest value)? r5Request,
  }) {
    return stu3Resource?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dstu2.Resource value)? dstu2Resource,
    TResult Function(stu3.Resource value)? stu3Resource,
    TResult Function(r4.Resource value)? r4Resource,
    TResult Function(r5.Resource value)? r5Resource,
    TResult Function(dstu2_request.FhirRequest value)? dstu2Request,
    TResult Function(stu3_request.FhirRequest value)? stu3Request,
    TResult Function(r4_request.FhirRequest value)? r4Request,
    TResult Function(r5_request.FhirRequest value)? r5Request,
    required TResult orElse(),
  }) {
    if (stu3Resource != null) {
      return stu3Resource(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AtFhirDstu2ResourceNotification value)
        dstu2Resource,
    required TResult Function(AtFhirStu3ResourceNotification value)
        stu3Resource,
    required TResult Function(AtFhirR4ResourceNotification value) r4Resource,
    required TResult Function(AtFhirR5ResourceNotification value) r5Resource,
    required TResult Function(AtFhirDstu2RequestNotification value)
        dstu2Request,
    required TResult Function(AtFhirStu3RequestNotification value) stu3Request,
    required TResult Function(AtFhirR4RequestNotification value) r4Request,
    required TResult Function(AtFhirR5RequestNotification value) r5Request,
  }) {
    return stu3Resource(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AtFhirDstu2ResourceNotification value)? dstu2Resource,
    TResult? Function(AtFhirStu3ResourceNotification value)? stu3Resource,
    TResult? Function(AtFhirR4ResourceNotification value)? r4Resource,
    TResult? Function(AtFhirR5ResourceNotification value)? r5Resource,
    TResult? Function(AtFhirDstu2RequestNotification value)? dstu2Request,
    TResult? Function(AtFhirStu3RequestNotification value)? stu3Request,
    TResult? Function(AtFhirR4RequestNotification value)? r4Request,
    TResult? Function(AtFhirR5RequestNotification value)? r5Request,
  }) {
    return stu3Resource?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AtFhirDstu2ResourceNotification value)? dstu2Resource,
    TResult Function(AtFhirStu3ResourceNotification value)? stu3Resource,
    TResult Function(AtFhirR4ResourceNotification value)? r4Resource,
    TResult Function(AtFhirR5ResourceNotification value)? r5Resource,
    TResult Function(AtFhirDstu2RequestNotification value)? dstu2Request,
    TResult Function(AtFhirStu3RequestNotification value)? stu3Request,
    TResult Function(AtFhirR4RequestNotification value)? r4Request,
    TResult Function(AtFhirR5RequestNotification value)? r5Request,
    required TResult orElse(),
  }) {
    if (stu3Resource != null) {
      return stu3Resource(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AtFhirStu3ResourceNotificationToJson(
      this,
    );
  }
}

abstract class AtFhirStu3ResourceNotification extends AtFhirNotification {
  const factory AtFhirStu3ResourceNotification(final stu3.Resource value) =
      _$AtFhirStu3ResourceNotification;
  const AtFhirStu3ResourceNotification._() : super._();

  factory AtFhirStu3ResourceNotification.fromJson(Map<String, dynamic> json) =
      _$AtFhirStu3ResourceNotification.fromJson;

  @override
  stu3.Resource get value;
  @JsonKey(ignore: true)
  _$$AtFhirStu3ResourceNotificationCopyWith<_$AtFhirStu3ResourceNotification>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AtFhirR4ResourceNotificationCopyWith<$Res> {
  factory _$$AtFhirR4ResourceNotificationCopyWith(
          _$AtFhirR4ResourceNotification value,
          $Res Function(_$AtFhirR4ResourceNotification) then) =
      __$$AtFhirR4ResourceNotificationCopyWithImpl<$Res>;
  @useResult
  $Res call({r4.Resource value});
}

/// @nodoc
class __$$AtFhirR4ResourceNotificationCopyWithImpl<$Res>
    extends _$AtFhirNotificationCopyWithImpl<$Res,
        _$AtFhirR4ResourceNotification>
    implements _$$AtFhirR4ResourceNotificationCopyWith<$Res> {
  __$$AtFhirR4ResourceNotificationCopyWithImpl(
      _$AtFhirR4ResourceNotification _value,
      $Res Function(_$AtFhirR4ResourceNotification) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$AtFhirR4ResourceNotification(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as r4.Resource,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AtFhirR4ResourceNotification extends AtFhirR4ResourceNotification {
  const _$AtFhirR4ResourceNotification(this.value, {final String? $type})
      : $type = $type ?? 'r4Resource',
        super._();

  factory _$AtFhirR4ResourceNotification.fromJson(Map<String, dynamic> json) =>
      _$$AtFhirR4ResourceNotificationFromJson(json);

  @override
  final r4.Resource value;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AtFhirNotification.r4Resource(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AtFhirR4ResourceNotification &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AtFhirR4ResourceNotificationCopyWith<_$AtFhirR4ResourceNotification>
      get copyWith => __$$AtFhirR4ResourceNotificationCopyWithImpl<
          _$AtFhirR4ResourceNotification>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dstu2.Resource value) dstu2Resource,
    required TResult Function(stu3.Resource value) stu3Resource,
    required TResult Function(r4.Resource value) r4Resource,
    required TResult Function(r5.Resource value) r5Resource,
    required TResult Function(dstu2_request.FhirRequest value) dstu2Request,
    required TResult Function(stu3_request.FhirRequest value) stu3Request,
    required TResult Function(r4_request.FhirRequest value) r4Request,
    required TResult Function(r5_request.FhirRequest value) r5Request,
  }) {
    return r4Resource(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dstu2.Resource value)? dstu2Resource,
    TResult? Function(stu3.Resource value)? stu3Resource,
    TResult? Function(r4.Resource value)? r4Resource,
    TResult? Function(r5.Resource value)? r5Resource,
    TResult? Function(dstu2_request.FhirRequest value)? dstu2Request,
    TResult? Function(stu3_request.FhirRequest value)? stu3Request,
    TResult? Function(r4_request.FhirRequest value)? r4Request,
    TResult? Function(r5_request.FhirRequest value)? r5Request,
  }) {
    return r4Resource?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dstu2.Resource value)? dstu2Resource,
    TResult Function(stu3.Resource value)? stu3Resource,
    TResult Function(r4.Resource value)? r4Resource,
    TResult Function(r5.Resource value)? r5Resource,
    TResult Function(dstu2_request.FhirRequest value)? dstu2Request,
    TResult Function(stu3_request.FhirRequest value)? stu3Request,
    TResult Function(r4_request.FhirRequest value)? r4Request,
    TResult Function(r5_request.FhirRequest value)? r5Request,
    required TResult orElse(),
  }) {
    if (r4Resource != null) {
      return r4Resource(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AtFhirDstu2ResourceNotification value)
        dstu2Resource,
    required TResult Function(AtFhirStu3ResourceNotification value)
        stu3Resource,
    required TResult Function(AtFhirR4ResourceNotification value) r4Resource,
    required TResult Function(AtFhirR5ResourceNotification value) r5Resource,
    required TResult Function(AtFhirDstu2RequestNotification value)
        dstu2Request,
    required TResult Function(AtFhirStu3RequestNotification value) stu3Request,
    required TResult Function(AtFhirR4RequestNotification value) r4Request,
    required TResult Function(AtFhirR5RequestNotification value) r5Request,
  }) {
    return r4Resource(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AtFhirDstu2ResourceNotification value)? dstu2Resource,
    TResult? Function(AtFhirStu3ResourceNotification value)? stu3Resource,
    TResult? Function(AtFhirR4ResourceNotification value)? r4Resource,
    TResult? Function(AtFhirR5ResourceNotification value)? r5Resource,
    TResult? Function(AtFhirDstu2RequestNotification value)? dstu2Request,
    TResult? Function(AtFhirStu3RequestNotification value)? stu3Request,
    TResult? Function(AtFhirR4RequestNotification value)? r4Request,
    TResult? Function(AtFhirR5RequestNotification value)? r5Request,
  }) {
    return r4Resource?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AtFhirDstu2ResourceNotification value)? dstu2Resource,
    TResult Function(AtFhirStu3ResourceNotification value)? stu3Resource,
    TResult Function(AtFhirR4ResourceNotification value)? r4Resource,
    TResult Function(AtFhirR5ResourceNotification value)? r5Resource,
    TResult Function(AtFhirDstu2RequestNotification value)? dstu2Request,
    TResult Function(AtFhirStu3RequestNotification value)? stu3Request,
    TResult Function(AtFhirR4RequestNotification value)? r4Request,
    TResult Function(AtFhirR5RequestNotification value)? r5Request,
    required TResult orElse(),
  }) {
    if (r4Resource != null) {
      return r4Resource(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AtFhirR4ResourceNotificationToJson(
      this,
    );
  }
}

abstract class AtFhirR4ResourceNotification extends AtFhirNotification {
  const factory AtFhirR4ResourceNotification(final r4.Resource value) =
      _$AtFhirR4ResourceNotification;
  const AtFhirR4ResourceNotification._() : super._();

  factory AtFhirR4ResourceNotification.fromJson(Map<String, dynamic> json) =
      _$AtFhirR4ResourceNotification.fromJson;

  @override
  r4.Resource get value;
  @JsonKey(ignore: true)
  _$$AtFhirR4ResourceNotificationCopyWith<_$AtFhirR4ResourceNotification>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AtFhirR5ResourceNotificationCopyWith<$Res> {
  factory _$$AtFhirR5ResourceNotificationCopyWith(
          _$AtFhirR5ResourceNotification value,
          $Res Function(_$AtFhirR5ResourceNotification) then) =
      __$$AtFhirR5ResourceNotificationCopyWithImpl<$Res>;
  @useResult
  $Res call({r5.Resource value});
}

/// @nodoc
class __$$AtFhirR5ResourceNotificationCopyWithImpl<$Res>
    extends _$AtFhirNotificationCopyWithImpl<$Res,
        _$AtFhirR5ResourceNotification>
    implements _$$AtFhirR5ResourceNotificationCopyWith<$Res> {
  __$$AtFhirR5ResourceNotificationCopyWithImpl(
      _$AtFhirR5ResourceNotification _value,
      $Res Function(_$AtFhirR5ResourceNotification) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$AtFhirR5ResourceNotification(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as r5.Resource,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AtFhirR5ResourceNotification extends AtFhirR5ResourceNotification {
  const _$AtFhirR5ResourceNotification(this.value, {final String? $type})
      : $type = $type ?? 'r5Resource',
        super._();

  factory _$AtFhirR5ResourceNotification.fromJson(Map<String, dynamic> json) =>
      _$$AtFhirR5ResourceNotificationFromJson(json);

  @override
  final r5.Resource value;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AtFhirNotification.r5Resource(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AtFhirR5ResourceNotification &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AtFhirR5ResourceNotificationCopyWith<_$AtFhirR5ResourceNotification>
      get copyWith => __$$AtFhirR5ResourceNotificationCopyWithImpl<
          _$AtFhirR5ResourceNotification>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dstu2.Resource value) dstu2Resource,
    required TResult Function(stu3.Resource value) stu3Resource,
    required TResult Function(r4.Resource value) r4Resource,
    required TResult Function(r5.Resource value) r5Resource,
    required TResult Function(dstu2_request.FhirRequest value) dstu2Request,
    required TResult Function(stu3_request.FhirRequest value) stu3Request,
    required TResult Function(r4_request.FhirRequest value) r4Request,
    required TResult Function(r5_request.FhirRequest value) r5Request,
  }) {
    return r5Resource(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dstu2.Resource value)? dstu2Resource,
    TResult? Function(stu3.Resource value)? stu3Resource,
    TResult? Function(r4.Resource value)? r4Resource,
    TResult? Function(r5.Resource value)? r5Resource,
    TResult? Function(dstu2_request.FhirRequest value)? dstu2Request,
    TResult? Function(stu3_request.FhirRequest value)? stu3Request,
    TResult? Function(r4_request.FhirRequest value)? r4Request,
    TResult? Function(r5_request.FhirRequest value)? r5Request,
  }) {
    return r5Resource?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dstu2.Resource value)? dstu2Resource,
    TResult Function(stu3.Resource value)? stu3Resource,
    TResult Function(r4.Resource value)? r4Resource,
    TResult Function(r5.Resource value)? r5Resource,
    TResult Function(dstu2_request.FhirRequest value)? dstu2Request,
    TResult Function(stu3_request.FhirRequest value)? stu3Request,
    TResult Function(r4_request.FhirRequest value)? r4Request,
    TResult Function(r5_request.FhirRequest value)? r5Request,
    required TResult orElse(),
  }) {
    if (r5Resource != null) {
      return r5Resource(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AtFhirDstu2ResourceNotification value)
        dstu2Resource,
    required TResult Function(AtFhirStu3ResourceNotification value)
        stu3Resource,
    required TResult Function(AtFhirR4ResourceNotification value) r4Resource,
    required TResult Function(AtFhirR5ResourceNotification value) r5Resource,
    required TResult Function(AtFhirDstu2RequestNotification value)
        dstu2Request,
    required TResult Function(AtFhirStu3RequestNotification value) stu3Request,
    required TResult Function(AtFhirR4RequestNotification value) r4Request,
    required TResult Function(AtFhirR5RequestNotification value) r5Request,
  }) {
    return r5Resource(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AtFhirDstu2ResourceNotification value)? dstu2Resource,
    TResult? Function(AtFhirStu3ResourceNotification value)? stu3Resource,
    TResult? Function(AtFhirR4ResourceNotification value)? r4Resource,
    TResult? Function(AtFhirR5ResourceNotification value)? r5Resource,
    TResult? Function(AtFhirDstu2RequestNotification value)? dstu2Request,
    TResult? Function(AtFhirStu3RequestNotification value)? stu3Request,
    TResult? Function(AtFhirR4RequestNotification value)? r4Request,
    TResult? Function(AtFhirR5RequestNotification value)? r5Request,
  }) {
    return r5Resource?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AtFhirDstu2ResourceNotification value)? dstu2Resource,
    TResult Function(AtFhirStu3ResourceNotification value)? stu3Resource,
    TResult Function(AtFhirR4ResourceNotification value)? r4Resource,
    TResult Function(AtFhirR5ResourceNotification value)? r5Resource,
    TResult Function(AtFhirDstu2RequestNotification value)? dstu2Request,
    TResult Function(AtFhirStu3RequestNotification value)? stu3Request,
    TResult Function(AtFhirR4RequestNotification value)? r4Request,
    TResult Function(AtFhirR5RequestNotification value)? r5Request,
    required TResult orElse(),
  }) {
    if (r5Resource != null) {
      return r5Resource(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AtFhirR5ResourceNotificationToJson(
      this,
    );
  }
}

abstract class AtFhirR5ResourceNotification extends AtFhirNotification {
  const factory AtFhirR5ResourceNotification(final r5.Resource value) =
      _$AtFhirR5ResourceNotification;
  const AtFhirR5ResourceNotification._() : super._();

  factory AtFhirR5ResourceNotification.fromJson(Map<String, dynamic> json) =
      _$AtFhirR5ResourceNotification.fromJson;

  @override
  r5.Resource get value;
  @JsonKey(ignore: true)
  _$$AtFhirR5ResourceNotificationCopyWith<_$AtFhirR5ResourceNotification>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AtFhirDstu2RequestNotificationCopyWith<$Res> {
  factory _$$AtFhirDstu2RequestNotificationCopyWith(
          _$AtFhirDstu2RequestNotification value,
          $Res Function(_$AtFhirDstu2RequestNotification) then) =
      __$$AtFhirDstu2RequestNotificationCopyWithImpl<$Res>;
  @useResult
  $Res call({dstu2_request.FhirRequest value});

  dstu2_request.$FhirRequestCopyWith<$Res> get value;
}

/// @nodoc
class __$$AtFhirDstu2RequestNotificationCopyWithImpl<$Res>
    extends _$AtFhirNotificationCopyWithImpl<$Res,
        _$AtFhirDstu2RequestNotification>
    implements _$$AtFhirDstu2RequestNotificationCopyWith<$Res> {
  __$$AtFhirDstu2RequestNotificationCopyWithImpl(
      _$AtFhirDstu2RequestNotification _value,
      $Res Function(_$AtFhirDstu2RequestNotification) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$AtFhirDstu2RequestNotification(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as dstu2_request.FhirRequest,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  dstu2_request.$FhirRequestCopyWith<$Res> get value {
    return dstu2_request.$FhirRequestCopyWith<$Res>(_value.value, (value) {
      return _then(_value.copyWith(value: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$AtFhirDstu2RequestNotification extends AtFhirDstu2RequestNotification {
  const _$AtFhirDstu2RequestNotification(this.value, {final String? $type})
      : $type = $type ?? 'dstu2Request',
        super._();

  factory _$AtFhirDstu2RequestNotification.fromJson(
          Map<String, dynamic> json) =>
      _$$AtFhirDstu2RequestNotificationFromJson(json);

  @override
  final dstu2_request.FhirRequest value;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AtFhirNotification.dstu2Request(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AtFhirDstu2RequestNotification &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AtFhirDstu2RequestNotificationCopyWith<_$AtFhirDstu2RequestNotification>
      get copyWith => __$$AtFhirDstu2RequestNotificationCopyWithImpl<
          _$AtFhirDstu2RequestNotification>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dstu2.Resource value) dstu2Resource,
    required TResult Function(stu3.Resource value) stu3Resource,
    required TResult Function(r4.Resource value) r4Resource,
    required TResult Function(r5.Resource value) r5Resource,
    required TResult Function(dstu2_request.FhirRequest value) dstu2Request,
    required TResult Function(stu3_request.FhirRequest value) stu3Request,
    required TResult Function(r4_request.FhirRequest value) r4Request,
    required TResult Function(r5_request.FhirRequest value) r5Request,
  }) {
    return dstu2Request(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dstu2.Resource value)? dstu2Resource,
    TResult? Function(stu3.Resource value)? stu3Resource,
    TResult? Function(r4.Resource value)? r4Resource,
    TResult? Function(r5.Resource value)? r5Resource,
    TResult? Function(dstu2_request.FhirRequest value)? dstu2Request,
    TResult? Function(stu3_request.FhirRequest value)? stu3Request,
    TResult? Function(r4_request.FhirRequest value)? r4Request,
    TResult? Function(r5_request.FhirRequest value)? r5Request,
  }) {
    return dstu2Request?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dstu2.Resource value)? dstu2Resource,
    TResult Function(stu3.Resource value)? stu3Resource,
    TResult Function(r4.Resource value)? r4Resource,
    TResult Function(r5.Resource value)? r5Resource,
    TResult Function(dstu2_request.FhirRequest value)? dstu2Request,
    TResult Function(stu3_request.FhirRequest value)? stu3Request,
    TResult Function(r4_request.FhirRequest value)? r4Request,
    TResult Function(r5_request.FhirRequest value)? r5Request,
    required TResult orElse(),
  }) {
    if (dstu2Request != null) {
      return dstu2Request(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AtFhirDstu2ResourceNotification value)
        dstu2Resource,
    required TResult Function(AtFhirStu3ResourceNotification value)
        stu3Resource,
    required TResult Function(AtFhirR4ResourceNotification value) r4Resource,
    required TResult Function(AtFhirR5ResourceNotification value) r5Resource,
    required TResult Function(AtFhirDstu2RequestNotification value)
        dstu2Request,
    required TResult Function(AtFhirStu3RequestNotification value) stu3Request,
    required TResult Function(AtFhirR4RequestNotification value) r4Request,
    required TResult Function(AtFhirR5RequestNotification value) r5Request,
  }) {
    return dstu2Request(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AtFhirDstu2ResourceNotification value)? dstu2Resource,
    TResult? Function(AtFhirStu3ResourceNotification value)? stu3Resource,
    TResult? Function(AtFhirR4ResourceNotification value)? r4Resource,
    TResult? Function(AtFhirR5ResourceNotification value)? r5Resource,
    TResult? Function(AtFhirDstu2RequestNotification value)? dstu2Request,
    TResult? Function(AtFhirStu3RequestNotification value)? stu3Request,
    TResult? Function(AtFhirR4RequestNotification value)? r4Request,
    TResult? Function(AtFhirR5RequestNotification value)? r5Request,
  }) {
    return dstu2Request?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AtFhirDstu2ResourceNotification value)? dstu2Resource,
    TResult Function(AtFhirStu3ResourceNotification value)? stu3Resource,
    TResult Function(AtFhirR4ResourceNotification value)? r4Resource,
    TResult Function(AtFhirR5ResourceNotification value)? r5Resource,
    TResult Function(AtFhirDstu2RequestNotification value)? dstu2Request,
    TResult Function(AtFhirStu3RequestNotification value)? stu3Request,
    TResult Function(AtFhirR4RequestNotification value)? r4Request,
    TResult Function(AtFhirR5RequestNotification value)? r5Request,
    required TResult orElse(),
  }) {
    if (dstu2Request != null) {
      return dstu2Request(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AtFhirDstu2RequestNotificationToJson(
      this,
    );
  }
}

abstract class AtFhirDstu2RequestNotification extends AtFhirNotification {
  const factory AtFhirDstu2RequestNotification(
      final dstu2_request.FhirRequest value) = _$AtFhirDstu2RequestNotification;
  const AtFhirDstu2RequestNotification._() : super._();

  factory AtFhirDstu2RequestNotification.fromJson(Map<String, dynamic> json) =
      _$AtFhirDstu2RequestNotification.fromJson;

  @override
  dstu2_request.FhirRequest get value;
  @JsonKey(ignore: true)
  _$$AtFhirDstu2RequestNotificationCopyWith<_$AtFhirDstu2RequestNotification>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AtFhirStu3RequestNotificationCopyWith<$Res> {
  factory _$$AtFhirStu3RequestNotificationCopyWith(
          _$AtFhirStu3RequestNotification value,
          $Res Function(_$AtFhirStu3RequestNotification) then) =
      __$$AtFhirStu3RequestNotificationCopyWithImpl<$Res>;
  @useResult
  $Res call({stu3_request.FhirRequest value});

  stu3_request.$FhirRequestCopyWith<$Res> get value;
}

/// @nodoc
class __$$AtFhirStu3RequestNotificationCopyWithImpl<$Res>
    extends _$AtFhirNotificationCopyWithImpl<$Res,
        _$AtFhirStu3RequestNotification>
    implements _$$AtFhirStu3RequestNotificationCopyWith<$Res> {
  __$$AtFhirStu3RequestNotificationCopyWithImpl(
      _$AtFhirStu3RequestNotification _value,
      $Res Function(_$AtFhirStu3RequestNotification) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$AtFhirStu3RequestNotification(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as stu3_request.FhirRequest,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  stu3_request.$FhirRequestCopyWith<$Res> get value {
    return stu3_request.$FhirRequestCopyWith<$Res>(_value.value, (value) {
      return _then(_value.copyWith(value: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$AtFhirStu3RequestNotification extends AtFhirStu3RequestNotification {
  const _$AtFhirStu3RequestNotification(this.value, {final String? $type})
      : $type = $type ?? 'stu3Request',
        super._();

  factory _$AtFhirStu3RequestNotification.fromJson(Map<String, dynamic> json) =>
      _$$AtFhirStu3RequestNotificationFromJson(json);

  @override
  final stu3_request.FhirRequest value;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AtFhirNotification.stu3Request(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AtFhirStu3RequestNotification &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AtFhirStu3RequestNotificationCopyWith<_$AtFhirStu3RequestNotification>
      get copyWith => __$$AtFhirStu3RequestNotificationCopyWithImpl<
          _$AtFhirStu3RequestNotification>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dstu2.Resource value) dstu2Resource,
    required TResult Function(stu3.Resource value) stu3Resource,
    required TResult Function(r4.Resource value) r4Resource,
    required TResult Function(r5.Resource value) r5Resource,
    required TResult Function(dstu2_request.FhirRequest value) dstu2Request,
    required TResult Function(stu3_request.FhirRequest value) stu3Request,
    required TResult Function(r4_request.FhirRequest value) r4Request,
    required TResult Function(r5_request.FhirRequest value) r5Request,
  }) {
    return stu3Request(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dstu2.Resource value)? dstu2Resource,
    TResult? Function(stu3.Resource value)? stu3Resource,
    TResult? Function(r4.Resource value)? r4Resource,
    TResult? Function(r5.Resource value)? r5Resource,
    TResult? Function(dstu2_request.FhirRequest value)? dstu2Request,
    TResult? Function(stu3_request.FhirRequest value)? stu3Request,
    TResult? Function(r4_request.FhirRequest value)? r4Request,
    TResult? Function(r5_request.FhirRequest value)? r5Request,
  }) {
    return stu3Request?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dstu2.Resource value)? dstu2Resource,
    TResult Function(stu3.Resource value)? stu3Resource,
    TResult Function(r4.Resource value)? r4Resource,
    TResult Function(r5.Resource value)? r5Resource,
    TResult Function(dstu2_request.FhirRequest value)? dstu2Request,
    TResult Function(stu3_request.FhirRequest value)? stu3Request,
    TResult Function(r4_request.FhirRequest value)? r4Request,
    TResult Function(r5_request.FhirRequest value)? r5Request,
    required TResult orElse(),
  }) {
    if (stu3Request != null) {
      return stu3Request(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AtFhirDstu2ResourceNotification value)
        dstu2Resource,
    required TResult Function(AtFhirStu3ResourceNotification value)
        stu3Resource,
    required TResult Function(AtFhirR4ResourceNotification value) r4Resource,
    required TResult Function(AtFhirR5ResourceNotification value) r5Resource,
    required TResult Function(AtFhirDstu2RequestNotification value)
        dstu2Request,
    required TResult Function(AtFhirStu3RequestNotification value) stu3Request,
    required TResult Function(AtFhirR4RequestNotification value) r4Request,
    required TResult Function(AtFhirR5RequestNotification value) r5Request,
  }) {
    return stu3Request(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AtFhirDstu2ResourceNotification value)? dstu2Resource,
    TResult? Function(AtFhirStu3ResourceNotification value)? stu3Resource,
    TResult? Function(AtFhirR4ResourceNotification value)? r4Resource,
    TResult? Function(AtFhirR5ResourceNotification value)? r5Resource,
    TResult? Function(AtFhirDstu2RequestNotification value)? dstu2Request,
    TResult? Function(AtFhirStu3RequestNotification value)? stu3Request,
    TResult? Function(AtFhirR4RequestNotification value)? r4Request,
    TResult? Function(AtFhirR5RequestNotification value)? r5Request,
  }) {
    return stu3Request?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AtFhirDstu2ResourceNotification value)? dstu2Resource,
    TResult Function(AtFhirStu3ResourceNotification value)? stu3Resource,
    TResult Function(AtFhirR4ResourceNotification value)? r4Resource,
    TResult Function(AtFhirR5ResourceNotification value)? r5Resource,
    TResult Function(AtFhirDstu2RequestNotification value)? dstu2Request,
    TResult Function(AtFhirStu3RequestNotification value)? stu3Request,
    TResult Function(AtFhirR4RequestNotification value)? r4Request,
    TResult Function(AtFhirR5RequestNotification value)? r5Request,
    required TResult orElse(),
  }) {
    if (stu3Request != null) {
      return stu3Request(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AtFhirStu3RequestNotificationToJson(
      this,
    );
  }
}

abstract class AtFhirStu3RequestNotification extends AtFhirNotification {
  const factory AtFhirStu3RequestNotification(
      final stu3_request.FhirRequest value) = _$AtFhirStu3RequestNotification;
  const AtFhirStu3RequestNotification._() : super._();

  factory AtFhirStu3RequestNotification.fromJson(Map<String, dynamic> json) =
      _$AtFhirStu3RequestNotification.fromJson;

  @override
  stu3_request.FhirRequest get value;
  @JsonKey(ignore: true)
  _$$AtFhirStu3RequestNotificationCopyWith<_$AtFhirStu3RequestNotification>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AtFhirR4RequestNotificationCopyWith<$Res> {
  factory _$$AtFhirR4RequestNotificationCopyWith(
          _$AtFhirR4RequestNotification value,
          $Res Function(_$AtFhirR4RequestNotification) then) =
      __$$AtFhirR4RequestNotificationCopyWithImpl<$Res>;
  @useResult
  $Res call({r4_request.FhirRequest value});

  r4_request.$FhirRequestCopyWith<$Res> get value;
}

/// @nodoc
class __$$AtFhirR4RequestNotificationCopyWithImpl<$Res>
    extends _$AtFhirNotificationCopyWithImpl<$Res,
        _$AtFhirR4RequestNotification>
    implements _$$AtFhirR4RequestNotificationCopyWith<$Res> {
  __$$AtFhirR4RequestNotificationCopyWithImpl(
      _$AtFhirR4RequestNotification _value,
      $Res Function(_$AtFhirR4RequestNotification) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$AtFhirR4RequestNotification(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as r4_request.FhirRequest,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  r4_request.$FhirRequestCopyWith<$Res> get value {
    return r4_request.$FhirRequestCopyWith<$Res>(_value.value, (value) {
      return _then(_value.copyWith(value: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$AtFhirR4RequestNotification extends AtFhirR4RequestNotification {
  const _$AtFhirR4RequestNotification(this.value, {final String? $type})
      : $type = $type ?? 'r4Request',
        super._();

  factory _$AtFhirR4RequestNotification.fromJson(Map<String, dynamic> json) =>
      _$$AtFhirR4RequestNotificationFromJson(json);

  @override
  final r4_request.FhirRequest value;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AtFhirNotification.r4Request(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AtFhirR4RequestNotification &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AtFhirR4RequestNotificationCopyWith<_$AtFhirR4RequestNotification>
      get copyWith => __$$AtFhirR4RequestNotificationCopyWithImpl<
          _$AtFhirR4RequestNotification>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dstu2.Resource value) dstu2Resource,
    required TResult Function(stu3.Resource value) stu3Resource,
    required TResult Function(r4.Resource value) r4Resource,
    required TResult Function(r5.Resource value) r5Resource,
    required TResult Function(dstu2_request.FhirRequest value) dstu2Request,
    required TResult Function(stu3_request.FhirRequest value) stu3Request,
    required TResult Function(r4_request.FhirRequest value) r4Request,
    required TResult Function(r5_request.FhirRequest value) r5Request,
  }) {
    return r4Request(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dstu2.Resource value)? dstu2Resource,
    TResult? Function(stu3.Resource value)? stu3Resource,
    TResult? Function(r4.Resource value)? r4Resource,
    TResult? Function(r5.Resource value)? r5Resource,
    TResult? Function(dstu2_request.FhirRequest value)? dstu2Request,
    TResult? Function(stu3_request.FhirRequest value)? stu3Request,
    TResult? Function(r4_request.FhirRequest value)? r4Request,
    TResult? Function(r5_request.FhirRequest value)? r5Request,
  }) {
    return r4Request?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dstu2.Resource value)? dstu2Resource,
    TResult Function(stu3.Resource value)? stu3Resource,
    TResult Function(r4.Resource value)? r4Resource,
    TResult Function(r5.Resource value)? r5Resource,
    TResult Function(dstu2_request.FhirRequest value)? dstu2Request,
    TResult Function(stu3_request.FhirRequest value)? stu3Request,
    TResult Function(r4_request.FhirRequest value)? r4Request,
    TResult Function(r5_request.FhirRequest value)? r5Request,
    required TResult orElse(),
  }) {
    if (r4Request != null) {
      return r4Request(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AtFhirDstu2ResourceNotification value)
        dstu2Resource,
    required TResult Function(AtFhirStu3ResourceNotification value)
        stu3Resource,
    required TResult Function(AtFhirR4ResourceNotification value) r4Resource,
    required TResult Function(AtFhirR5ResourceNotification value) r5Resource,
    required TResult Function(AtFhirDstu2RequestNotification value)
        dstu2Request,
    required TResult Function(AtFhirStu3RequestNotification value) stu3Request,
    required TResult Function(AtFhirR4RequestNotification value) r4Request,
    required TResult Function(AtFhirR5RequestNotification value) r5Request,
  }) {
    return r4Request(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AtFhirDstu2ResourceNotification value)? dstu2Resource,
    TResult? Function(AtFhirStu3ResourceNotification value)? stu3Resource,
    TResult? Function(AtFhirR4ResourceNotification value)? r4Resource,
    TResult? Function(AtFhirR5ResourceNotification value)? r5Resource,
    TResult? Function(AtFhirDstu2RequestNotification value)? dstu2Request,
    TResult? Function(AtFhirStu3RequestNotification value)? stu3Request,
    TResult? Function(AtFhirR4RequestNotification value)? r4Request,
    TResult? Function(AtFhirR5RequestNotification value)? r5Request,
  }) {
    return r4Request?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AtFhirDstu2ResourceNotification value)? dstu2Resource,
    TResult Function(AtFhirStu3ResourceNotification value)? stu3Resource,
    TResult Function(AtFhirR4ResourceNotification value)? r4Resource,
    TResult Function(AtFhirR5ResourceNotification value)? r5Resource,
    TResult Function(AtFhirDstu2RequestNotification value)? dstu2Request,
    TResult Function(AtFhirStu3RequestNotification value)? stu3Request,
    TResult Function(AtFhirR4RequestNotification value)? r4Request,
    TResult Function(AtFhirR5RequestNotification value)? r5Request,
    required TResult orElse(),
  }) {
    if (r4Request != null) {
      return r4Request(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AtFhirR4RequestNotificationToJson(
      this,
    );
  }
}

abstract class AtFhirR4RequestNotification extends AtFhirNotification {
  const factory AtFhirR4RequestNotification(
      final r4_request.FhirRequest value) = _$AtFhirR4RequestNotification;
  const AtFhirR4RequestNotification._() : super._();

  factory AtFhirR4RequestNotification.fromJson(Map<String, dynamic> json) =
      _$AtFhirR4RequestNotification.fromJson;

  @override
  r4_request.FhirRequest get value;
  @JsonKey(ignore: true)
  _$$AtFhirR4RequestNotificationCopyWith<_$AtFhirR4RequestNotification>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AtFhirR5RequestNotificationCopyWith<$Res> {
  factory _$$AtFhirR5RequestNotificationCopyWith(
          _$AtFhirR5RequestNotification value,
          $Res Function(_$AtFhirR5RequestNotification) then) =
      __$$AtFhirR5RequestNotificationCopyWithImpl<$Res>;
  @useResult
  $Res call({r5_request.FhirRequest value});

  r5_request.$FhirRequestCopyWith<$Res> get value;
}

/// @nodoc
class __$$AtFhirR5RequestNotificationCopyWithImpl<$Res>
    extends _$AtFhirNotificationCopyWithImpl<$Res,
        _$AtFhirR5RequestNotification>
    implements _$$AtFhirR5RequestNotificationCopyWith<$Res> {
  __$$AtFhirR5RequestNotificationCopyWithImpl(
      _$AtFhirR5RequestNotification _value,
      $Res Function(_$AtFhirR5RequestNotification) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$AtFhirR5RequestNotification(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as r5_request.FhirRequest,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  r5_request.$FhirRequestCopyWith<$Res> get value {
    return r5_request.$FhirRequestCopyWith<$Res>(_value.value, (value) {
      return _then(_value.copyWith(value: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$AtFhirR5RequestNotification extends AtFhirR5RequestNotification {
  const _$AtFhirR5RequestNotification(this.value, {final String? $type})
      : $type = $type ?? 'r5Request',
        super._();

  factory _$AtFhirR5RequestNotification.fromJson(Map<String, dynamic> json) =>
      _$$AtFhirR5RequestNotificationFromJson(json);

  @override
  final r5_request.FhirRequest value;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AtFhirNotification.r5Request(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AtFhirR5RequestNotification &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AtFhirR5RequestNotificationCopyWith<_$AtFhirR5RequestNotification>
      get copyWith => __$$AtFhirR5RequestNotificationCopyWithImpl<
          _$AtFhirR5RequestNotification>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dstu2.Resource value) dstu2Resource,
    required TResult Function(stu3.Resource value) stu3Resource,
    required TResult Function(r4.Resource value) r4Resource,
    required TResult Function(r5.Resource value) r5Resource,
    required TResult Function(dstu2_request.FhirRequest value) dstu2Request,
    required TResult Function(stu3_request.FhirRequest value) stu3Request,
    required TResult Function(r4_request.FhirRequest value) r4Request,
    required TResult Function(r5_request.FhirRequest value) r5Request,
  }) {
    return r5Request(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dstu2.Resource value)? dstu2Resource,
    TResult? Function(stu3.Resource value)? stu3Resource,
    TResult? Function(r4.Resource value)? r4Resource,
    TResult? Function(r5.Resource value)? r5Resource,
    TResult? Function(dstu2_request.FhirRequest value)? dstu2Request,
    TResult? Function(stu3_request.FhirRequest value)? stu3Request,
    TResult? Function(r4_request.FhirRequest value)? r4Request,
    TResult? Function(r5_request.FhirRequest value)? r5Request,
  }) {
    return r5Request?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dstu2.Resource value)? dstu2Resource,
    TResult Function(stu3.Resource value)? stu3Resource,
    TResult Function(r4.Resource value)? r4Resource,
    TResult Function(r5.Resource value)? r5Resource,
    TResult Function(dstu2_request.FhirRequest value)? dstu2Request,
    TResult Function(stu3_request.FhirRequest value)? stu3Request,
    TResult Function(r4_request.FhirRequest value)? r4Request,
    TResult Function(r5_request.FhirRequest value)? r5Request,
    required TResult orElse(),
  }) {
    if (r5Request != null) {
      return r5Request(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AtFhirDstu2ResourceNotification value)
        dstu2Resource,
    required TResult Function(AtFhirStu3ResourceNotification value)
        stu3Resource,
    required TResult Function(AtFhirR4ResourceNotification value) r4Resource,
    required TResult Function(AtFhirR5ResourceNotification value) r5Resource,
    required TResult Function(AtFhirDstu2RequestNotification value)
        dstu2Request,
    required TResult Function(AtFhirStu3RequestNotification value) stu3Request,
    required TResult Function(AtFhirR4RequestNotification value) r4Request,
    required TResult Function(AtFhirR5RequestNotification value) r5Request,
  }) {
    return r5Request(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AtFhirDstu2ResourceNotification value)? dstu2Resource,
    TResult? Function(AtFhirStu3ResourceNotification value)? stu3Resource,
    TResult? Function(AtFhirR4ResourceNotification value)? r4Resource,
    TResult? Function(AtFhirR5ResourceNotification value)? r5Resource,
    TResult? Function(AtFhirDstu2RequestNotification value)? dstu2Request,
    TResult? Function(AtFhirStu3RequestNotification value)? stu3Request,
    TResult? Function(AtFhirR4RequestNotification value)? r4Request,
    TResult? Function(AtFhirR5RequestNotification value)? r5Request,
  }) {
    return r5Request?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AtFhirDstu2ResourceNotification value)? dstu2Resource,
    TResult Function(AtFhirStu3ResourceNotification value)? stu3Resource,
    TResult Function(AtFhirR4ResourceNotification value)? r4Resource,
    TResult Function(AtFhirR5ResourceNotification value)? r5Resource,
    TResult Function(AtFhirDstu2RequestNotification value)? dstu2Request,
    TResult Function(AtFhirStu3RequestNotification value)? stu3Request,
    TResult Function(AtFhirR4RequestNotification value)? r4Request,
    TResult Function(AtFhirR5RequestNotification value)? r5Request,
    required TResult orElse(),
  }) {
    if (r5Request != null) {
      return r5Request(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AtFhirR5RequestNotificationToJson(
      this,
    );
  }
}

abstract class AtFhirR5RequestNotification extends AtFhirNotification {
  const factory AtFhirR5RequestNotification(
      final r5_request.FhirRequest value) = _$AtFhirR5RequestNotification;
  const AtFhirR5RequestNotification._() : super._();

  factory AtFhirR5RequestNotification.fromJson(Map<String, dynamic> json) =
      _$AtFhirR5RequestNotification.fromJson;

  @override
  r5_request.FhirRequest get value;
  @JsonKey(ignore: true)
  _$$AtFhirR5RequestNotificationCopyWith<_$AtFhirR5RequestNotification>
      get copyWith => throw _privateConstructorUsedError;
}
