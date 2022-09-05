// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'verify_mobile_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VerifyMobileModel _$VerifyMobileModelFromJson(Map<String, dynamic> json) {
  return _VerifyMobileModel.fromJson(json);
}

/// @nodoc
class _$VerifyMobileModelTearOff {
  const _$VerifyMobileModelTearOff();

  _VerifyMobileModel call(
      String? result, int? code, String? message, String? kycreference) {
    return _VerifyMobileModel(
      result,
      code,
      message,
      kycreference,
    );
  }

  VerifyMobileModel fromJson(Map<String, Object> json) {
    return VerifyMobileModel.fromJson(json);
  }
}

/// @nodoc
const $VerifyMobileModel = _$VerifyMobileModelTearOff();

/// @nodoc
mixin _$VerifyMobileModel {
  String? get result => throw _privateConstructorUsedError;
  int? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  String? get kycreference => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VerifyMobileModelCopyWith<VerifyMobileModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyMobileModelCopyWith<$Res> {
  factory $VerifyMobileModelCopyWith(
          VerifyMobileModel value, $Res Function(VerifyMobileModel) then) =
      _$VerifyMobileModelCopyWithImpl<$Res>;
  $Res call({String? result, int? code, String? message, String? kycreference});
}

/// @nodoc
class _$VerifyMobileModelCopyWithImpl<$Res>
    implements $VerifyMobileModelCopyWith<$Res> {
  _$VerifyMobileModelCopyWithImpl(this._value, this._then);

  final VerifyMobileModel _value;
  // ignore: unused_field
  final $Res Function(VerifyMobileModel) _then;

  @override
  $Res call({
    Object? result = freezed,
    Object? code = freezed,
    Object? message = freezed,
    Object? kycreference = freezed,
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
      kycreference: kycreference == freezed
          ? _value.kycreference
          : kycreference // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$VerifyMobileModelCopyWith<$Res>
    implements $VerifyMobileModelCopyWith<$Res> {
  factory _$VerifyMobileModelCopyWith(
          _VerifyMobileModel value, $Res Function(_VerifyMobileModel) then) =
      __$VerifyMobileModelCopyWithImpl<$Res>;
  @override
  $Res call({String? result, int? code, String? message, String? kycreference});
}

/// @nodoc
class __$VerifyMobileModelCopyWithImpl<$Res>
    extends _$VerifyMobileModelCopyWithImpl<$Res>
    implements _$VerifyMobileModelCopyWith<$Res> {
  __$VerifyMobileModelCopyWithImpl(
      _VerifyMobileModel _value, $Res Function(_VerifyMobileModel) _then)
      : super(_value, (v) => _then(v as _VerifyMobileModel));

  @override
  _VerifyMobileModel get _value => super._value as _VerifyMobileModel;

  @override
  $Res call({
    Object? result = freezed,
    Object? code = freezed,
    Object? message = freezed,
    Object? kycreference = freezed,
  }) {
    return _then(_VerifyMobileModel(
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
      kycreference == freezed
          ? _value.kycreference
          : kycreference // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VerifyMobileModel implements _VerifyMobileModel {
  const _$_VerifyMobileModel(
      this.result, this.code, this.message, this.kycreference);

  factory _$_VerifyMobileModel.fromJson(Map<String, dynamic> json) =>
      _$$_VerifyMobileModelFromJson(json);

  @override
  final String? result;
  @override
  final int? code;
  @override
  final String? message;
  @override
  final String? kycreference;

  @override
  String toString() {
    return 'VerifyMobileModel(result: $result, code: $code, message: $message, kycreference: $kycreference)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _VerifyMobileModel &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.kycreference, kycreference) ||
                const DeepCollectionEquality()
                    .equals(other.kycreference, kycreference)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(result) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(kycreference);

  @JsonKey(ignore: true)
  @override
  _$VerifyMobileModelCopyWith<_VerifyMobileModel> get copyWith =>
      __$VerifyMobileModelCopyWithImpl<_VerifyMobileModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VerifyMobileModelToJson(this);
  }
}

abstract class _VerifyMobileModel implements VerifyMobileModel {
  const factory _VerifyMobileModel(
          String? result, int? code, String? message, String? kycreference) =
      _$_VerifyMobileModel;

  factory _VerifyMobileModel.fromJson(Map<String, dynamic> json) =
      _$_VerifyMobileModel.fromJson;

  @override
  String? get result => throw _privateConstructorUsedError;
  @override
  int? get code => throw _privateConstructorUsedError;
  @override
  String? get message => throw _privateConstructorUsedError;
  @override
  String? get kycreference => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$VerifyMobileModelCopyWith<_VerifyMobileModel> get copyWith =>
      throw _privateConstructorUsedError;
}
