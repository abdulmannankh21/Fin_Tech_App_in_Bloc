// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'verify_email_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VerifyEmailModel _$VerifyEmailModelFromJson(Map<String, dynamic> json) {
  return _VerifyEmailModel.fromJson(json);
}

/// @nodoc
class _$VerifyEmailModelTearOff {
  const _$VerifyEmailModelTearOff();

  _VerifyEmailModel call(String? result, int? code, String? message) {
    return _VerifyEmailModel(
      result,
      code,
      message,
    );
  }

  VerifyEmailModel fromJson(Map<String, Object> json) {
    return VerifyEmailModel.fromJson(json);
  }
}

/// @nodoc
const $VerifyEmailModel = _$VerifyEmailModelTearOff();

/// @nodoc
mixin _$VerifyEmailModel {
  String? get result => throw _privateConstructorUsedError;
  int? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VerifyEmailModelCopyWith<VerifyEmailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyEmailModelCopyWith<$Res> {
  factory $VerifyEmailModelCopyWith(
          VerifyEmailModel value, $Res Function(VerifyEmailModel) then) =
      _$VerifyEmailModelCopyWithImpl<$Res>;
  $Res call({String? result, int? code, String? message});
}

/// @nodoc
class _$VerifyEmailModelCopyWithImpl<$Res>
    implements $VerifyEmailModelCopyWith<$Res> {
  _$VerifyEmailModelCopyWithImpl(this._value, this._then);

  final VerifyEmailModel _value;
  // ignore: unused_field
  final $Res Function(VerifyEmailModel) _then;

  @override
  $Res call({
    Object? result = freezed,
    Object? code = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String?,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$VerifyEmailModelCopyWith<$Res>
    implements $VerifyEmailModelCopyWith<$Res> {
  factory _$VerifyEmailModelCopyWith(
          _VerifyEmailModel value, $Res Function(_VerifyEmailModel) then) =
      __$VerifyEmailModelCopyWithImpl<$Res>;
  @override
  $Res call({String? result, int? code, String? message});
}

/// @nodoc
class __$VerifyEmailModelCopyWithImpl<$Res>
    extends _$VerifyEmailModelCopyWithImpl<$Res>
    implements _$VerifyEmailModelCopyWith<$Res> {
  __$VerifyEmailModelCopyWithImpl(
      _VerifyEmailModel _value, $Res Function(_VerifyEmailModel) _then)
      : super(_value, (v) => _then(v as _VerifyEmailModel));

  @override
  _VerifyEmailModel get _value => super._value as _VerifyEmailModel;

  @override
  $Res call({
    Object? result = freezed,
    Object? code = freezed,
    Object? message = freezed,
  }) {
    return _then(_VerifyEmailModel(
      result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String?,
      code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VerifyEmailModel implements _VerifyEmailModel {
  const _$_VerifyEmailModel(this.result, this.code, this.message);

  factory _$_VerifyEmailModel.fromJson(Map<String, dynamic> json) =>
      _$$_VerifyEmailModelFromJson(json);

  @override
  final String? result;
  @override
  final int? code;
  @override
  final String? message;

  @override
  String toString() {
    return 'VerifyEmailModel(result: $result, code: $code, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _VerifyEmailModel &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(result) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$VerifyEmailModelCopyWith<_VerifyEmailModel> get copyWith =>
      __$VerifyEmailModelCopyWithImpl<_VerifyEmailModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VerifyEmailModelToJson(this);
  }
}

abstract class _VerifyEmailModel implements VerifyEmailModel {
  const factory _VerifyEmailModel(String? result, int? code, String? message) =
      _$_VerifyEmailModel;

  factory _VerifyEmailModel.fromJson(Map<String, dynamic> json) =
      _$_VerifyEmailModel.fromJson;

  @override
  String? get result => throw _privateConstructorUsedError;
  @override
  int? get code => throw _privateConstructorUsedError;
  @override
  String? get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$VerifyEmailModelCopyWith<_VerifyEmailModel> get copyWith =>
      throw _privateConstructorUsedError;
}
