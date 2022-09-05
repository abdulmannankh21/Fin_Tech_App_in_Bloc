// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'logout_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LogoutModel _$LogoutModelFromJson(Map<String, dynamic> json) {
  return _LogoutModel.fromJson(json);
}

/// @nodoc
class _$LogoutModelTearOff {
  const _$LogoutModelTearOff();

  _LogoutModel call(String? status, int? code, String? message, String? data) {
    return _LogoutModel(
      status,
      code,
      message,
      data,
    );
  }

  LogoutModel fromJson(Map<String, Object> json) {
    return LogoutModel.fromJson(json);
  }
}

/// @nodoc
const $LogoutModel = _$LogoutModelTearOff();

/// @nodoc
mixin _$LogoutModel {
  String? get status => throw _privateConstructorUsedError;
  int? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  String? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LogoutModelCopyWith<LogoutModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LogoutModelCopyWith<$Res> {
  factory $LogoutModelCopyWith(
          LogoutModel value, $Res Function(LogoutModel) then) =
      _$LogoutModelCopyWithImpl<$Res>;
  $Res call({String? status, int? code, String? message, String? data});
}

/// @nodoc
class _$LogoutModelCopyWithImpl<$Res> implements $LogoutModelCopyWith<$Res> {
  _$LogoutModelCopyWithImpl(this._value, this._then);

  final LogoutModel _value;
  // ignore: unused_field
  final $Res Function(LogoutModel) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? code = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$LogoutModelCopyWith<$Res>
    implements $LogoutModelCopyWith<$Res> {
  factory _$LogoutModelCopyWith(
          _LogoutModel value, $Res Function(_LogoutModel) then) =
      __$LogoutModelCopyWithImpl<$Res>;
  @override
  $Res call({String? status, int? code, String? message, String? data});
}

/// @nodoc
class __$LogoutModelCopyWithImpl<$Res> extends _$LogoutModelCopyWithImpl<$Res>
    implements _$LogoutModelCopyWith<$Res> {
  __$LogoutModelCopyWithImpl(
      _LogoutModel _value, $Res Function(_LogoutModel) _then)
      : super(_value, (v) => _then(v as _LogoutModel));

  @override
  _LogoutModel get _value => super._value as _LogoutModel;

  @override
  $Res call({
    Object? status = freezed,
    Object? code = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_LogoutModel(
      status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LogoutModel implements _LogoutModel {
  const _$_LogoutModel(this.status, this.code, this.message, this.data);

  factory _$_LogoutModel.fromJson(Map<String, dynamic> json) =>
      _$$_LogoutModelFromJson(json);

  @override
  final String? status;
  @override
  final int? code;
  @override
  final String? message;
  @override
  final String? data;

  @override
  String toString() {
    return 'LogoutModel(status: $status, code: $code, message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LogoutModel &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$LogoutModelCopyWith<_LogoutModel> get copyWith =>
      __$LogoutModelCopyWithImpl<_LogoutModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LogoutModelToJson(this);
  }
}

abstract class _LogoutModel implements LogoutModel {
  const factory _LogoutModel(
          String? status, int? code, String? message, String? data) =
      _$_LogoutModel;

  factory _LogoutModel.fromJson(Map<String, dynamic> json) =
      _$_LogoutModel.fromJson;

  @override
  String? get status => throw _privateConstructorUsedError;
  @override
  int? get code => throw _privateConstructorUsedError;
  @override
  String? get message => throw _privateConstructorUsedError;
  @override
  String? get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LogoutModelCopyWith<_LogoutModel> get copyWith =>
      throw _privateConstructorUsedError;
}
