// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'register_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RegisterModel _$RegisterModelFromJson(Map<String, dynamic> json) {
  return _RegisterModel.fromJson(json);
}

/// @nodoc
class _$RegisterModelTearOff {
  const _$RegisterModelTearOff();

  _RegisterModel call(String? status, int? code, String? message,
      @JsonKey(name: 'data') Data? data) {
    return _RegisterModel(
      status,
      code,
      message,
      data,
    );
  }

  RegisterModel fromJson(Map<String, Object> json) {
    return RegisterModel.fromJson(json);
  }
}

/// @nodoc
const $RegisterModel = _$RegisterModelTearOff();

/// @nodoc
mixin _$RegisterModel {
  String? get status => throw _privateConstructorUsedError;
  int? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  Data? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegisterModelCopyWith<RegisterModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterModelCopyWith<$Res> {
  factory $RegisterModelCopyWith(
          RegisterModel value, $Res Function(RegisterModel) then) =
      _$RegisterModelCopyWithImpl<$Res>;
  $Res call(
      {String? status,
      int? code,
      String? message,
      @JsonKey(name: 'data') Data? data});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$RegisterModelCopyWithImpl<$Res>
    implements $RegisterModelCopyWith<$Res> {
  _$RegisterModelCopyWithImpl(this._value, this._then);

  final RegisterModel _value;
  // ignore: unused_field
  final $Res Function(RegisterModel) _then;

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
              as Data?,
    ));
  }

  @override
  $DataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$RegisterModelCopyWith<$Res>
    implements $RegisterModelCopyWith<$Res> {
  factory _$RegisterModelCopyWith(
          _RegisterModel value, $Res Function(_RegisterModel) then) =
      __$RegisterModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? status,
      int? code,
      String? message,
      @JsonKey(name: 'data') Data? data});

  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$RegisterModelCopyWithImpl<$Res>
    extends _$RegisterModelCopyWithImpl<$Res>
    implements _$RegisterModelCopyWith<$Res> {
  __$RegisterModelCopyWithImpl(
      _RegisterModel _value, $Res Function(_RegisterModel) _then)
      : super(_value, (v) => _then(v as _RegisterModel));

  @override
  _RegisterModel get _value => super._value as _RegisterModel;

  @override
  $Res call({
    Object? status = freezed,
    Object? code = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_RegisterModel(
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
              as Data?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RegisterModel implements _RegisterModel {
  const _$_RegisterModel(
      this.status, this.code, this.message, @JsonKey(name: 'data') this.data);

  factory _$_RegisterModel.fromJson(Map<String, dynamic> json) =>
      _$$_RegisterModelFromJson(json);

  @override
  final String? status;
  @override
  final int? code;
  @override
  final String? message;
  @override
  @JsonKey(name: 'data')
  final Data? data;

  @override
  String toString() {
    return 'RegisterModel(status: $status, code: $code, message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RegisterModel &&
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
  _$RegisterModelCopyWith<_RegisterModel> get copyWith =>
      __$RegisterModelCopyWithImpl<_RegisterModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RegisterModelToJson(this);
  }
}

abstract class _RegisterModel implements RegisterModel {
  const factory _RegisterModel(String? status, int? code, String? message,
      @JsonKey(name: 'data') Data? data) = _$_RegisterModel;

  factory _RegisterModel.fromJson(Map<String, dynamic> json) =
      _$_RegisterModel.fromJson;

  @override
  String? get status => throw _privateConstructorUsedError;
  @override
  int? get code => throw _privateConstructorUsedError;
  @override
  String? get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'data')
  Data? get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RegisterModelCopyWith<_RegisterModel> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
class _$DataTearOff {
  const _$DataTearOff();

  _Data call(
      @JsonKey(name: 'last_inserted_user_id') int? lastInsertedUserId,
      @JsonKey(name: 'user_data_insert') UserDataInsert? userDataInsert,
      String? token) {
    return _Data(
      lastInsertedUserId,
      userDataInsert,
      token,
    );
  }

  Data fromJson(Map<String, Object> json) {
    return Data.fromJson(json);
  }
}

/// @nodoc
const $Data = _$DataTearOff();

/// @nodoc
mixin _$Data {
  @JsonKey(name: 'last_inserted_user_id')
  int? get lastInsertedUserId => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_data_insert')
  UserDataInsert? get userDataInsert => throw _privateConstructorUsedError;
  String? get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'last_inserted_user_id') int? lastInsertedUserId,
      @JsonKey(name: 'user_data_insert') UserDataInsert? userDataInsert,
      String? token});

  $UserDataInsertCopyWith<$Res>? get userDataInsert;
}

/// @nodoc
class _$DataCopyWithImpl<$Res> implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  final Data _value;
  // ignore: unused_field
  final $Res Function(Data) _then;

  @override
  $Res call({
    Object? lastInsertedUserId = freezed,
    Object? userDataInsert = freezed,
    Object? token = freezed,
  }) {
    return _then(_value.copyWith(
      lastInsertedUserId: lastInsertedUserId == freezed
          ? _value.lastInsertedUserId
          : lastInsertedUserId // ignore: cast_nullable_to_non_nullable
              as int?,
      userDataInsert: userDataInsert == freezed
          ? _value.userDataInsert
          : userDataInsert // ignore: cast_nullable_to_non_nullable
              as UserDataInsert?,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $UserDataInsertCopyWith<$Res>? get userDataInsert {
    if (_value.userDataInsert == null) {
      return null;
    }

    return $UserDataInsertCopyWith<$Res>(_value.userDataInsert!, (value) {
      return _then(_value.copyWith(userDataInsert: value));
    });
  }
}

/// @nodoc
abstract class _$DataCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$DataCopyWith(_Data value, $Res Function(_Data) then) =
      __$DataCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'last_inserted_user_id') int? lastInsertedUserId,
      @JsonKey(name: 'user_data_insert') UserDataInsert? userDataInsert,
      String? token});

  @override
  $UserDataInsertCopyWith<$Res>? get userDataInsert;
}

/// @nodoc
class __$DataCopyWithImpl<$Res> extends _$DataCopyWithImpl<$Res>
    implements _$DataCopyWith<$Res> {
  __$DataCopyWithImpl(_Data _value, $Res Function(_Data) _then)
      : super(_value, (v) => _then(v as _Data));

  @override
  _Data get _value => super._value as _Data;

  @override
  $Res call({
    Object? lastInsertedUserId = freezed,
    Object? userDataInsert = freezed,
    Object? token = freezed,
  }) {
    return _then(_Data(
      lastInsertedUserId == freezed
          ? _value.lastInsertedUserId
          : lastInsertedUserId // ignore: cast_nullable_to_non_nullable
              as int?,
      userDataInsert == freezed
          ? _value.userDataInsert
          : userDataInsert // ignore: cast_nullable_to_non_nullable
              as UserDataInsert?,
      token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Data implements _Data {
  const _$_Data(@JsonKey(name: 'last_inserted_user_id') this.lastInsertedUserId,
      @JsonKey(name: 'user_data_insert') this.userDataInsert, this.token);

  factory _$_Data.fromJson(Map<String, dynamic> json) => _$$_DataFromJson(json);

  @override
  @JsonKey(name: 'last_inserted_user_id')
  final int? lastInsertedUserId;
  @override
  @JsonKey(name: 'user_data_insert')
  final UserDataInsert? userDataInsert;
  @override
  final String? token;

  @override
  String toString() {
    return 'Data(lastInsertedUserId: $lastInsertedUserId, userDataInsert: $userDataInsert, token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Data &&
            (identical(other.lastInsertedUserId, lastInsertedUserId) ||
                const DeepCollectionEquality()
                    .equals(other.lastInsertedUserId, lastInsertedUserId)) &&
            (identical(other.userDataInsert, userDataInsert) ||
                const DeepCollectionEquality()
                    .equals(other.userDataInsert, userDataInsert)) &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(lastInsertedUserId) ^
      const DeepCollectionEquality().hash(userDataInsert) ^
      const DeepCollectionEquality().hash(token);

  @JsonKey(ignore: true)
  @override
  _$DataCopyWith<_Data> get copyWith =>
      __$DataCopyWithImpl<_Data>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataToJson(this);
  }
}

abstract class _Data implements Data {
  const factory _Data(
      @JsonKey(name: 'last_inserted_user_id') int? lastInsertedUserId,
      @JsonKey(name: 'user_data_insert') UserDataInsert? userDataInsert,
      String? token) = _$_Data;

  factory _Data.fromJson(Map<String, dynamic> json) = _$_Data.fromJson;

  @override
  @JsonKey(name: 'last_inserted_user_id')
  int? get lastInsertedUserId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'user_data_insert')
  UserDataInsert? get userDataInsert => throw _privateConstructorUsedError;
  @override
  String? get token => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DataCopyWith<_Data> get copyWith => throw _privateConstructorUsedError;
}

UserDataInsert _$UserDataInsertFromJson(Map<String, dynamic> json) {
  return _UserDataInsert.fromJson(json);
}

/// @nodoc
class _$UserDataInsertTearOff {
  const _$UserDataInsertTearOff();

  _UserDataInsert call(
      @JsonKey(name: 'first_name') String? firstName,
      @JsonKey(name: 'last_name') String? lastName,
      String? email,
      @JsonKey(name: 'phone_number') String? phoneNumber,
      String? password,
      String? type,
      @JsonKey(name: 'entity_type') String? entityType,
      @JsonKey(name: 'is_email_verified') String? isEmailVerified) {
    return _UserDataInsert(
      firstName,
      lastName,
      email,
      phoneNumber,
      password,
      type,
      entityType,
      isEmailVerified,
    );
  }

  UserDataInsert fromJson(Map<String, Object> json) {
    return UserDataInsert.fromJson(json);
  }
}

/// @nodoc
const $UserDataInsert = _$UserDataInsertTearOff();

/// @nodoc
mixin _$UserDataInsert {
  @JsonKey(name: 'first_name')
  String? get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_name')
  String? get lastName => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone_number')
  String? get phoneNumber => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'entity_type')
  String? get entityType => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_email_verified')
  String? get isEmailVerified => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDataInsertCopyWith<UserDataInsert> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDataInsertCopyWith<$Res> {
  factory $UserDataInsertCopyWith(
          UserDataInsert value, $Res Function(UserDataInsert) then) =
      _$UserDataInsertCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'first_name') String? firstName,
      @JsonKey(name: 'last_name') String? lastName,
      String? email,
      @JsonKey(name: 'phone_number') String? phoneNumber,
      String? password,
      String? type,
      @JsonKey(name: 'entity_type') String? entityType,
      @JsonKey(name: 'is_email_verified') String? isEmailVerified});
}

/// @nodoc
class _$UserDataInsertCopyWithImpl<$Res>
    implements $UserDataInsertCopyWith<$Res> {
  _$UserDataInsertCopyWithImpl(this._value, this._then);

  final UserDataInsert _value;
  // ignore: unused_field
  final $Res Function(UserDataInsert) _then;

  @override
  $Res call({
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? email = freezed,
    Object? phoneNumber = freezed,
    Object? password = freezed,
    Object? type = freezed,
    Object? entityType = freezed,
    Object? isEmailVerified = freezed,
  }) {
    return _then(_value.copyWith(
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      entityType: entityType == freezed
          ? _value.entityType
          : entityType // ignore: cast_nullable_to_non_nullable
              as String?,
      isEmailVerified: isEmailVerified == freezed
          ? _value.isEmailVerified
          : isEmailVerified // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$UserDataInsertCopyWith<$Res>
    implements $UserDataInsertCopyWith<$Res> {
  factory _$UserDataInsertCopyWith(
          _UserDataInsert value, $Res Function(_UserDataInsert) then) =
      __$UserDataInsertCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'first_name') String? firstName,
      @JsonKey(name: 'last_name') String? lastName,
      String? email,
      @JsonKey(name: 'phone_number') String? phoneNumber,
      String? password,
      String? type,
      @JsonKey(name: 'entity_type') String? entityType,
      @JsonKey(name: 'is_email_verified') String? isEmailVerified});
}

/// @nodoc
class __$UserDataInsertCopyWithImpl<$Res>
    extends _$UserDataInsertCopyWithImpl<$Res>
    implements _$UserDataInsertCopyWith<$Res> {
  __$UserDataInsertCopyWithImpl(
      _UserDataInsert _value, $Res Function(_UserDataInsert) _then)
      : super(_value, (v) => _then(v as _UserDataInsert));

  @override
  _UserDataInsert get _value => super._value as _UserDataInsert;

  @override
  $Res call({
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? email = freezed,
    Object? phoneNumber = freezed,
    Object? password = freezed,
    Object? type = freezed,
    Object? entityType = freezed,
    Object? isEmailVerified = freezed,
  }) {
    return _then(_UserDataInsert(
      firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      entityType == freezed
          ? _value.entityType
          : entityType // ignore: cast_nullable_to_non_nullable
              as String?,
      isEmailVerified == freezed
          ? _value.isEmailVerified
          : isEmailVerified // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserDataInsert implements _UserDataInsert {
  const _$_UserDataInsert(
      @JsonKey(name: 'first_name') this.firstName,
      @JsonKey(name: 'last_name') this.lastName,
      this.email,
      @JsonKey(name: 'phone_number') this.phoneNumber,
      this.password,
      this.type,
      @JsonKey(name: 'entity_type') this.entityType,
      @JsonKey(name: 'is_email_verified') this.isEmailVerified);

  factory _$_UserDataInsert.fromJson(Map<String, dynamic> json) =>
      _$$_UserDataInsertFromJson(json);

  @override
  @JsonKey(name: 'first_name')
  final String? firstName;
  @override
  @JsonKey(name: 'last_name')
  final String? lastName;
  @override
  final String? email;
  @override
  @JsonKey(name: 'phone_number')
  final String? phoneNumber;
  @override
  final String? password;
  @override
  final String? type;
  @override
  @JsonKey(name: 'entity_type')
  final String? entityType;
  @override
  @JsonKey(name: 'is_email_verified')
  final String? isEmailVerified;

  @override
  String toString() {
    return 'UserDataInsert(firstName: $firstName, lastName: $lastName, email: $email, phoneNumber: $phoneNumber, password: $password, type: $type, entityType: $entityType, isEmailVerified: $isEmailVerified)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserDataInsert &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)) &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.entityType, entityType) ||
                const DeepCollectionEquality()
                    .equals(other.entityType, entityType)) &&
            (identical(other.isEmailVerified, isEmailVerified) ||
                const DeepCollectionEquality()
                    .equals(other.isEmailVerified, isEmailVerified)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(entityType) ^
      const DeepCollectionEquality().hash(isEmailVerified);

  @JsonKey(ignore: true)
  @override
  _$UserDataInsertCopyWith<_UserDataInsert> get copyWith =>
      __$UserDataInsertCopyWithImpl<_UserDataInsert>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserDataInsertToJson(this);
  }
}

abstract class _UserDataInsert implements UserDataInsert {
  const factory _UserDataInsert(
          @JsonKey(name: 'first_name') String? firstName,
          @JsonKey(name: 'last_name') String? lastName,
          String? email,
          @JsonKey(name: 'phone_number') String? phoneNumber,
          String? password,
          String? type,
          @JsonKey(name: 'entity_type') String? entityType,
          @JsonKey(name: 'is_email_verified') String? isEmailVerified) =
      _$_UserDataInsert;

  factory _UserDataInsert.fromJson(Map<String, dynamic> json) =
      _$_UserDataInsert.fromJson;

  @override
  @JsonKey(name: 'first_name')
  String? get firstName => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'last_name')
  String? get lastName => throw _privateConstructorUsedError;
  @override
  String? get email => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'phone_number')
  String? get phoneNumber => throw _privateConstructorUsedError;
  @override
  String? get password => throw _privateConstructorUsedError;
  @override
  String? get type => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'entity_type')
  String? get entityType => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'is_email_verified')
  String? get isEmailVerified => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserDataInsertCopyWith<_UserDataInsert> get copyWith =>
      throw _privateConstructorUsedError;
}
