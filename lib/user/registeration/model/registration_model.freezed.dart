// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'registration_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RegistrationModel _$RegistrationModelFromJson(Map<String, dynamic> json) {
  return _RegistrationModel.fromJson(json);
}

/// @nodoc
class _$RegistrationModelTearOff {
  const _$RegistrationModelTearOff();

  _RegistrationModel call(
      @JsonKey(name: 'code') int code,
      @JsonKey(name: 'status') String status,
      @JsonKey(name: 'message') Message message) {
    return _RegistrationModel(
      code,
      status,
      message,
    );
  }

  RegistrationModel fromJson(Map<String, Object> json) {
    return RegistrationModel.fromJson(json);
  }
}

/// @nodoc
const $RegistrationModel = _$RegistrationModelTearOff();

/// @nodoc
mixin _$RegistrationModel {
  @JsonKey(name: 'code')
  int get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  Message get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegistrationModelCopyWith<RegistrationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistrationModelCopyWith<$Res> {
  factory $RegistrationModelCopyWith(
          RegistrationModel value, $Res Function(RegistrationModel) then) =
      _$RegistrationModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'code') int code,
      @JsonKey(name: 'status') String status,
      @JsonKey(name: 'message') Message message});

  $MessageCopyWith<$Res> get message;
}

/// @nodoc
class _$RegistrationModelCopyWithImpl<$Res>
    implements $RegistrationModelCopyWith<$Res> {
  _$RegistrationModelCopyWithImpl(this._value, this._then);

  final RegistrationModel _value;
  // ignore: unused_field
  final $Res Function(RegistrationModel) _then;

  @override
  $Res call({
    Object? code = freezed,
    Object? status = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as Message,
    ));
  }

  @override
  $MessageCopyWith<$Res> get message {
    return $MessageCopyWith<$Res>(_value.message, (value) {
      return _then(_value.copyWith(message: value));
    });
  }
}

/// @nodoc
abstract class _$RegistrationModelCopyWith<$Res>
    implements $RegistrationModelCopyWith<$Res> {
  factory _$RegistrationModelCopyWith(
          _RegistrationModel value, $Res Function(_RegistrationModel) then) =
      __$RegistrationModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'code') int code,
      @JsonKey(name: 'status') String status,
      @JsonKey(name: 'message') Message message});

  @override
  $MessageCopyWith<$Res> get message;
}

/// @nodoc
class __$RegistrationModelCopyWithImpl<$Res>
    extends _$RegistrationModelCopyWithImpl<$Res>
    implements _$RegistrationModelCopyWith<$Res> {
  __$RegistrationModelCopyWithImpl(
      _RegistrationModel _value, $Res Function(_RegistrationModel) _then)
      : super(_value, (v) => _then(v as _RegistrationModel));

  @override
  _RegistrationModel get _value => super._value as _RegistrationModel;

  @override
  $Res call({
    Object? code = freezed,
    Object? status = freezed,
    Object? message = freezed,
  }) {
    return _then(_RegistrationModel(
      code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as Message,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RegistrationModel implements _RegistrationModel {
  const _$_RegistrationModel(
      @JsonKey(name: 'code') this.code,
      @JsonKey(name: 'status') this.status,
      @JsonKey(name: 'message') this.message);

  factory _$_RegistrationModel.fromJson(Map<String, dynamic> json) =>
      _$$_RegistrationModelFromJson(json);

  @override
  @JsonKey(name: 'code')
  final int code;
  @override
  @JsonKey(name: 'status')
  final String status;
  @override
  @JsonKey(name: 'message')
  final Message message;

  @override
  String toString() {
    return 'RegistrationModel(code: $code, status: $status, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RegistrationModel &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$RegistrationModelCopyWith<_RegistrationModel> get copyWith =>
      __$RegistrationModelCopyWithImpl<_RegistrationModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RegistrationModelToJson(this);
  }
}

abstract class _RegistrationModel implements RegistrationModel {
  const factory _RegistrationModel(
      @JsonKey(name: 'code') int code,
      @JsonKey(name: 'status') String status,
      @JsonKey(name: 'message') Message message) = _$_RegistrationModel;

  factory _RegistrationModel.fromJson(Map<String, dynamic> json) =
      _$_RegistrationModel.fromJson;

  @override
  @JsonKey(name: 'code')
  int get code => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'status')
  String get status => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'message')
  Message get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RegistrationModelCopyWith<_RegistrationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

Message _$MessageFromJson(Map<String, dynamic> json) {
  return _Message.fromJson(json);
}

/// @nodoc
class _$MessageTearOff {
  const _$MessageTearOff();

  _Message call(@JsonKey(name: 'error') List<String>? error,
      @JsonKey(name: 'success') List<String>? success) {
    return _Message(
      error,
      success,
    );
  }

  Message fromJson(Map<String, Object> json) {
    return Message.fromJson(json);
  }
}

/// @nodoc
const $Message = _$MessageTearOff();

/// @nodoc
mixin _$Message {
  @JsonKey(name: 'error')
  List<String>? get error => throw _privateConstructorUsedError;
  @JsonKey(name: 'success')
  List<String>? get success => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessageCopyWith<Message> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageCopyWith<$Res> {
  factory $MessageCopyWith(Message value, $Res Function(Message) then) =
      _$MessageCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'error') List<String>? error,
      @JsonKey(name: 'success') List<String>? success});
}

/// @nodoc
class _$MessageCopyWithImpl<$Res> implements $MessageCopyWith<$Res> {
  _$MessageCopyWithImpl(this._value, this._then);

  final Message _value;
  // ignore: unused_field
  final $Res Function(Message) _then;

  @override
  $Res call({
    Object? error = freezed,
    Object? success = freezed,
  }) {
    return _then(_value.copyWith(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
abstract class _$MessageCopyWith<$Res> implements $MessageCopyWith<$Res> {
  factory _$MessageCopyWith(_Message value, $Res Function(_Message) then) =
      __$MessageCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'error') List<String>? error,
      @JsonKey(name: 'success') List<String>? success});
}

/// @nodoc
class __$MessageCopyWithImpl<$Res> extends _$MessageCopyWithImpl<$Res>
    implements _$MessageCopyWith<$Res> {
  __$MessageCopyWithImpl(_Message _value, $Res Function(_Message) _then)
      : super(_value, (v) => _then(v as _Message));

  @override
  _Message get _value => super._value as _Message;

  @override
  $Res call({
    Object? error = freezed,
    Object? success = freezed,
  }) {
    return _then(_Message(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Message implements _Message {
  const _$_Message(@JsonKey(name: 'error') this.error,
      @JsonKey(name: 'success') this.success);

  factory _$_Message.fromJson(Map<String, dynamic> json) =>
      _$$_MessageFromJson(json);

  @override
  @JsonKey(name: 'error')
  final List<String>? error;
  @override
  @JsonKey(name: 'success')
  final List<String>? success;

  @override
  String toString() {
    return 'Message(error: $error, success: $success)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Message &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.success, success) ||
                const DeepCollectionEquality().equals(other.success, success)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(success);

  @JsonKey(ignore: true)
  @override
  _$MessageCopyWith<_Message> get copyWith =>
      __$MessageCopyWithImpl<_Message>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MessageToJson(this);
  }
}

abstract class _Message implements Message {
  const factory _Message(@JsonKey(name: 'error') List<String>? error,
      @JsonKey(name: 'success') List<String>? success) = _$_Message;

  factory _Message.fromJson(Map<String, dynamic> json) = _$_Message.fromJson;

  @override
  @JsonKey(name: 'error')
  List<String>? get error => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'success')
  List<String>? get success => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MessageCopyWith<_Message> get copyWith =>
      throw _privateConstructorUsedError;
}
