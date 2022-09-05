// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'forgot_password_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ForgotPasswordModel _$ForgotPasswordModelFromJson(Map<String, dynamic> json) {
  return _ForgotPasswordModel.fromJson(json);
}

/// @nodoc
class _$ForgotPasswordModelTearOff {
  const _$ForgotPasswordModelTearOff();

  _ForgotPasswordModel call(String status, int code, String message) {
    return _ForgotPasswordModel(
      status,
      code,
      message,
    );
  }

  ForgotPasswordModel fromJson(Map<String, Object> json) {
    return ForgotPasswordModel.fromJson(json);
  }
}

/// @nodoc
const $ForgotPasswordModel = _$ForgotPasswordModelTearOff();

/// @nodoc
mixin _$ForgotPasswordModel {
  String get status => throw _privateConstructorUsedError;
  int get code => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ForgotPasswordModelCopyWith<ForgotPasswordModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgotPasswordModelCopyWith<$Res> {
  factory $ForgotPasswordModelCopyWith(
          ForgotPasswordModel value, $Res Function(ForgotPasswordModel) then) =
      _$ForgotPasswordModelCopyWithImpl<$Res>;
  $Res call({String status, int code, String message});
}

/// @nodoc
class _$ForgotPasswordModelCopyWithImpl<$Res>
    implements $ForgotPasswordModelCopyWith<$Res> {
  _$ForgotPasswordModelCopyWithImpl(this._value, this._then);

  final ForgotPasswordModel _value;
  // ignore: unused_field
  final $Res Function(ForgotPasswordModel) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? code = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ForgotPasswordModelCopyWith<$Res>
    implements $ForgotPasswordModelCopyWith<$Res> {
  factory _$ForgotPasswordModelCopyWith(_ForgotPasswordModel value,
          $Res Function(_ForgotPasswordModel) then) =
      __$ForgotPasswordModelCopyWithImpl<$Res>;
  @override
  $Res call({String status, int code, String message});
}

/// @nodoc
class __$ForgotPasswordModelCopyWithImpl<$Res>
    extends _$ForgotPasswordModelCopyWithImpl<$Res>
    implements _$ForgotPasswordModelCopyWith<$Res> {
  __$ForgotPasswordModelCopyWithImpl(
      _ForgotPasswordModel _value, $Res Function(_ForgotPasswordModel) _then)
      : super(_value, (v) => _then(v as _ForgotPasswordModel));

  @override
  _ForgotPasswordModel get _value => super._value as _ForgotPasswordModel;

  @override
  $Res call({
    Object? status = freezed,
    Object? code = freezed,
    Object? message = freezed,
  }) {
    return _then(_ForgotPasswordModel(
      status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ForgotPasswordModel implements _ForgotPasswordModel {
  _$_ForgotPasswordModel(this.status, this.code, this.message);

  factory _$_ForgotPasswordModel.fromJson(Map<String, dynamic> json) =>
      _$$_ForgotPasswordModelFromJson(json);

  @override
  final String status;
  @override
  final int code;
  @override
  final String message;

  @override
  String toString() {
    return 'ForgotPasswordModel(status: $status, code: $code, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ForgotPasswordModel &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$ForgotPasswordModelCopyWith<_ForgotPasswordModel> get copyWith =>
      __$ForgotPasswordModelCopyWithImpl<_ForgotPasswordModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ForgotPasswordModelToJson(this);
  }
}

abstract class _ForgotPasswordModel implements ForgotPasswordModel {
  factory _ForgotPasswordModel(String status, int code, String message) =
      _$_ForgotPasswordModel;

  factory _ForgotPasswordModel.fromJson(Map<String, dynamic> json) =
      _$_ForgotPasswordModel.fromJson;

  @override
  String get status => throw _privateConstructorUsedError;
  @override
  int get code => throw _privateConstructorUsedError;
  @override
  String get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ForgotPasswordModelCopyWith<_ForgotPasswordModel> get copyWith =>
      throw _privateConstructorUsedError;
}
