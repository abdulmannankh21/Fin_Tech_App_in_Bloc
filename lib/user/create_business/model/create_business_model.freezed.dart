// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'create_business_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateBusinessModel _$CreateBusinessModelFromJson(Map<String, dynamic> json) {
  return _CreateBusinessModel.fromJson(json);
}

/// @nodoc
class _$CreateBusinessModelTearOff {
  const _$CreateBusinessModelTearOff();

  _CreateBusinessModel call(
      String? status, int? code, String? message, Data? data) {
    return _CreateBusinessModel(
      status,
      code,
      message,
      data,
    );
  }

  CreateBusinessModel fromJson(Map<String, Object> json) {
    return CreateBusinessModel.fromJson(json);
  }
}

/// @nodoc
const $CreateBusinessModel = _$CreateBusinessModelTearOff();

/// @nodoc
mixin _$CreateBusinessModel {
  String? get status => throw _privateConstructorUsedError;
  int? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  Data? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateBusinessModelCopyWith<CreateBusinessModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateBusinessModelCopyWith<$Res> {
  factory $CreateBusinessModelCopyWith(
          CreateBusinessModel value, $Res Function(CreateBusinessModel) then) =
      _$CreateBusinessModelCopyWithImpl<$Res>;
  $Res call({String? status, int? code, String? message, Data? data});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$CreateBusinessModelCopyWithImpl<$Res>
    implements $CreateBusinessModelCopyWith<$Res> {
  _$CreateBusinessModelCopyWithImpl(this._value, this._then);

  final CreateBusinessModel _value;
  // ignore: unused_field
  final $Res Function(CreateBusinessModel) _then;

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
abstract class _$CreateBusinessModelCopyWith<$Res>
    implements $CreateBusinessModelCopyWith<$Res> {
  factory _$CreateBusinessModelCopyWith(_CreateBusinessModel value,
          $Res Function(_CreateBusinessModel) then) =
      __$CreateBusinessModelCopyWithImpl<$Res>;
  @override
  $Res call({String? status, int? code, String? message, Data? data});

  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$CreateBusinessModelCopyWithImpl<$Res>
    extends _$CreateBusinessModelCopyWithImpl<$Res>
    implements _$CreateBusinessModelCopyWith<$Res> {
  __$CreateBusinessModelCopyWithImpl(
      _CreateBusinessModel _value, $Res Function(_CreateBusinessModel) _then)
      : super(_value, (v) => _then(v as _CreateBusinessModel));

  @override
  _CreateBusinessModel get _value => super._value as _CreateBusinessModel;

  @override
  $Res call({
    Object? status = freezed,
    Object? code = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_CreateBusinessModel(
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
class _$_CreateBusinessModel implements _CreateBusinessModel {
  const _$_CreateBusinessModel(this.status, this.code, this.message, this.data);

  factory _$_CreateBusinessModel.fromJson(Map<String, dynamic> json) =>
      _$$_CreateBusinessModelFromJson(json);

  @override
  final String? status;
  @override
  final int? code;
  @override
  final String? message;
  @override
  final Data? data;

  @override
  String toString() {
    return 'CreateBusinessModel(status: $status, code: $code, message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CreateBusinessModel &&
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
  _$CreateBusinessModelCopyWith<_CreateBusinessModel> get copyWith =>
      __$CreateBusinessModelCopyWithImpl<_CreateBusinessModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreateBusinessModelToJson(this);
  }
}

abstract class _CreateBusinessModel implements CreateBusinessModel {
  const factory _CreateBusinessModel(
          String? status, int? code, String? message, Data? data) =
      _$_CreateBusinessModel;

  factory _CreateBusinessModel.fromJson(Map<String, dynamic> json) =
      _$_CreateBusinessModel.fromJson;

  @override
  String? get status => throw _privateConstructorUsedError;
  @override
  int? get code => throw _privateConstructorUsedError;
  @override
  String? get message => throw _privateConstructorUsedError;
  @override
  Data? get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CreateBusinessModelCopyWith<_CreateBusinessModel> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
class _$DataTearOff {
  const _$DataTearOff();

  _Data call(
      @JsonKey(name: 'last_inserted_user_id') bool? lastInsertedUserId,
      @JsonKey(name: 'user_data_insert') UserDataInsert? userDataInsert,
      @JsonKey(name: 'logintoken') String? loginToken) {
    return _Data(
      lastInsertedUserId,
      userDataInsert,
      loginToken,
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
  bool? get lastInsertedUserId => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_data_insert')
  UserDataInsert? get userDataInsert => throw _privateConstructorUsedError;
  @JsonKey(name: 'logintoken')
  String? get loginToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'last_inserted_user_id') bool? lastInsertedUserId,
      @JsonKey(name: 'user_data_insert') UserDataInsert? userDataInsert,
      @JsonKey(name: 'logintoken') String? loginToken});

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
    Object? loginToken = freezed,
  }) {
    return _then(_value.copyWith(
      lastInsertedUserId: lastInsertedUserId == freezed
          ? _value.lastInsertedUserId
          : lastInsertedUserId // ignore: cast_nullable_to_non_nullable
              as bool?,
      userDataInsert: userDataInsert == freezed
          ? _value.userDataInsert
          : userDataInsert // ignore: cast_nullable_to_non_nullable
              as UserDataInsert?,
      loginToken: loginToken == freezed
          ? _value.loginToken
          : loginToken // ignore: cast_nullable_to_non_nullable
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
      {@JsonKey(name: 'last_inserted_user_id') bool? lastInsertedUserId,
      @JsonKey(name: 'user_data_insert') UserDataInsert? userDataInsert,
      @JsonKey(name: 'logintoken') String? loginToken});

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
    Object? loginToken = freezed,
  }) {
    return _then(_Data(
      lastInsertedUserId == freezed
          ? _value.lastInsertedUserId
          : lastInsertedUserId // ignore: cast_nullable_to_non_nullable
              as bool?,
      userDataInsert == freezed
          ? _value.userDataInsert
          : userDataInsert // ignore: cast_nullable_to_non_nullable
              as UserDataInsert?,
      loginToken == freezed
          ? _value.loginToken
          : loginToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Data implements _Data {
  const _$_Data(
      @JsonKey(name: 'last_inserted_user_id') this.lastInsertedUserId,
      @JsonKey(name: 'user_data_insert') this.userDataInsert,
      @JsonKey(name: 'logintoken') this.loginToken);

  factory _$_Data.fromJson(Map<String, dynamic> json) => _$$_DataFromJson(json);

  @override
  @JsonKey(name: 'last_inserted_user_id')
  final bool? lastInsertedUserId;
  @override
  @JsonKey(name: 'user_data_insert')
  final UserDataInsert? userDataInsert;
  @override
  @JsonKey(name: 'logintoken')
  final String? loginToken;

  @override
  String toString() {
    return 'Data(lastInsertedUserId: $lastInsertedUserId, userDataInsert: $userDataInsert, loginToken: $loginToken)';
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
            (identical(other.loginToken, loginToken) ||
                const DeepCollectionEquality()
                    .equals(other.loginToken, loginToken)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(lastInsertedUserId) ^
      const DeepCollectionEquality().hash(userDataInsert) ^
      const DeepCollectionEquality().hash(loginToken);

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
      @JsonKey(name: 'last_inserted_user_id') bool? lastInsertedUserId,
      @JsonKey(name: 'user_data_insert') UserDataInsert? userDataInsert,
      @JsonKey(name: 'logintoken') String? loginToken) = _$_Data;

  factory _Data.fromJson(Map<String, dynamic> json) = _$_Data.fromJson;

  @override
  @JsonKey(name: 'last_inserted_user_id')
  bool? get lastInsertedUserId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'user_data_insert')
  UserDataInsert? get userDataInsert => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'logintoken')
  String? get loginToken => throw _privateConstructorUsedError;
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
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'phone_number') String? phoneNumber,
      @JsonKey(name: 'phone_code') String? phoneCode,
      String? password,
      String? type,
      @JsonKey(name: 'entity_type') String? entityType,
      @JsonKey(name: 'is_email_verified') String? isEmailVerified,
      @JsonKey(name: 'ewallet_reference_id') String? ewalletReferenceId,
      @JsonKey(name: 'ewallet_id') String? ewalletId,
      @JsonKey(name: 'contact_id') String? contactId,
      @JsonKey(name: 'mothers_name') String? mothersName,
      @JsonKey(name: 'line_1') String? line1,
      @JsonKey(name: 'line_2') dynamic line2,
      @JsonKey(name: 'city') String? city,
      @JsonKey(name: 'state') String? state,
      @JsonKey(name: 'state_code') dynamic stateCode,
      @JsonKey(name: 'country') String? country,
      @JsonKey(name: 'country_code') dynamic countryCode,
      @JsonKey(name: 'token') String token,
      @JsonKey(name: 'date_of_birth') String dob,
      @JsonKey(name: 'company_name') String? companyName,
      dynamic currency,
      String? zip,
      String? roles) {
    return _UserDataInsert(
      firstName,
      lastName,
      email,
      phoneNumber,
      phoneCode,
      password,
      type,
      entityType,
      isEmailVerified,
      ewalletReferenceId,
      ewalletId,
      contactId,
      mothersName,
      line1,
      line2,
      city,
      state,
      stateCode,
      country,
      countryCode,
      token,
      dob,
      companyName,
      currency,
      zip,
      roles,
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
  @JsonKey(name: 'email')
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone_number')
  String? get phoneNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone_code')
  String? get phoneCode => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'entity_type')
  String? get entityType => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_email_verified')
  String? get isEmailVerified => throw _privateConstructorUsedError;
  @JsonKey(name: 'ewallet_reference_id')
  String? get ewalletReferenceId => throw _privateConstructorUsedError;
  @JsonKey(name: 'ewallet_id')
  String? get ewalletId => throw _privateConstructorUsedError;
  @JsonKey(name: 'contact_id')
  String? get contactId => throw _privateConstructorUsedError;
  @JsonKey(name: 'mothers_name')
  String? get mothersName => throw _privateConstructorUsedError;
  @JsonKey(name: 'line_1')
  String? get line1 => throw _privateConstructorUsedError;
  @JsonKey(name: 'line_2')
  dynamic get line2 => throw _privateConstructorUsedError;
  @JsonKey(name: 'city')
  String? get city => throw _privateConstructorUsedError;
  @JsonKey(name: 'state')
  String? get state => throw _privateConstructorUsedError;
  @JsonKey(name: 'state_code')
  dynamic get stateCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'country')
  String? get country => throw _privateConstructorUsedError;
  @JsonKey(name: 'country_code')
  dynamic get countryCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'token')
  String get token => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_of_birth')
  String get dob => throw _privateConstructorUsedError;
  @JsonKey(name: 'company_name')
  String? get companyName => throw _privateConstructorUsedError;
  dynamic get currency => throw _privateConstructorUsedError;
  String? get zip => throw _privateConstructorUsedError;
  String? get roles => throw _privateConstructorUsedError;

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
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'phone_number') String? phoneNumber,
      @JsonKey(name: 'phone_code') String? phoneCode,
      String? password,
      String? type,
      @JsonKey(name: 'entity_type') String? entityType,
      @JsonKey(name: 'is_email_verified') String? isEmailVerified,
      @JsonKey(name: 'ewallet_reference_id') String? ewalletReferenceId,
      @JsonKey(name: 'ewallet_id') String? ewalletId,
      @JsonKey(name: 'contact_id') String? contactId,
      @JsonKey(name: 'mothers_name') String? mothersName,
      @JsonKey(name: 'line_1') String? line1,
      @JsonKey(name: 'line_2') dynamic line2,
      @JsonKey(name: 'city') String? city,
      @JsonKey(name: 'state') String? state,
      @JsonKey(name: 'state_code') dynamic stateCode,
      @JsonKey(name: 'country') String? country,
      @JsonKey(name: 'country_code') dynamic countryCode,
      @JsonKey(name: 'token') String token,
      @JsonKey(name: 'date_of_birth') String dob,
      @JsonKey(name: 'company_name') String? companyName,
      dynamic currency,
      String? zip,
      String? roles});
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
    Object? phoneCode = freezed,
    Object? password = freezed,
    Object? type = freezed,
    Object? entityType = freezed,
    Object? isEmailVerified = freezed,
    Object? ewalletReferenceId = freezed,
    Object? ewalletId = freezed,
    Object? contactId = freezed,
    Object? mothersName = freezed,
    Object? line1 = freezed,
    Object? line2 = freezed,
    Object? city = freezed,
    Object? state = freezed,
    Object? stateCode = freezed,
    Object? country = freezed,
    Object? countryCode = freezed,
    Object? token = freezed,
    Object? dob = freezed,
    Object? companyName = freezed,
    Object? currency = freezed,
    Object? zip = freezed,
    Object? roles = freezed,
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
      phoneCode: phoneCode == freezed
          ? _value.phoneCode
          : phoneCode // ignore: cast_nullable_to_non_nullable
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
      ewalletReferenceId: ewalletReferenceId == freezed
          ? _value.ewalletReferenceId
          : ewalletReferenceId // ignore: cast_nullable_to_non_nullable
              as String?,
      ewalletId: ewalletId == freezed
          ? _value.ewalletId
          : ewalletId // ignore: cast_nullable_to_non_nullable
              as String?,
      contactId: contactId == freezed
          ? _value.contactId
          : contactId // ignore: cast_nullable_to_non_nullable
              as String?,
      mothersName: mothersName == freezed
          ? _value.mothersName
          : mothersName // ignore: cast_nullable_to_non_nullable
              as String?,
      line1: line1 == freezed
          ? _value.line1
          : line1 // ignore: cast_nullable_to_non_nullable
              as String?,
      line2: line2 == freezed
          ? _value.line2
          : line2 // ignore: cast_nullable_to_non_nullable
              as dynamic,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      stateCode: stateCode == freezed
          ? _value.stateCode
          : stateCode // ignore: cast_nullable_to_non_nullable
              as dynamic,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      countryCode: countryCode == freezed
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as dynamic,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      dob: dob == freezed
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as String,
      companyName: companyName == freezed
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String?,
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as dynamic,
      zip: zip == freezed
          ? _value.zip
          : zip // ignore: cast_nullable_to_non_nullable
              as String?,
      roles: roles == freezed
          ? _value.roles
          : roles // ignore: cast_nullable_to_non_nullable
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
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'phone_number') String? phoneNumber,
      @JsonKey(name: 'phone_code') String? phoneCode,
      String? password,
      String? type,
      @JsonKey(name: 'entity_type') String? entityType,
      @JsonKey(name: 'is_email_verified') String? isEmailVerified,
      @JsonKey(name: 'ewallet_reference_id') String? ewalletReferenceId,
      @JsonKey(name: 'ewallet_id') String? ewalletId,
      @JsonKey(name: 'contact_id') String? contactId,
      @JsonKey(name: 'mothers_name') String? mothersName,
      @JsonKey(name: 'line_1') String? line1,
      @JsonKey(name: 'line_2') dynamic line2,
      @JsonKey(name: 'city') String? city,
      @JsonKey(name: 'state') String? state,
      @JsonKey(name: 'state_code') dynamic stateCode,
      @JsonKey(name: 'country') String? country,
      @JsonKey(name: 'country_code') dynamic countryCode,
      @JsonKey(name: 'token') String token,
      @JsonKey(name: 'date_of_birth') String dob,
      @JsonKey(name: 'company_name') String? companyName,
      dynamic currency,
      String? zip,
      String? roles});
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
    Object? phoneCode = freezed,
    Object? password = freezed,
    Object? type = freezed,
    Object? entityType = freezed,
    Object? isEmailVerified = freezed,
    Object? ewalletReferenceId = freezed,
    Object? ewalletId = freezed,
    Object? contactId = freezed,
    Object? mothersName = freezed,
    Object? line1 = freezed,
    Object? line2 = freezed,
    Object? city = freezed,
    Object? state = freezed,
    Object? stateCode = freezed,
    Object? country = freezed,
    Object? countryCode = freezed,
    Object? token = freezed,
    Object? dob = freezed,
    Object? companyName = freezed,
    Object? currency = freezed,
    Object? zip = freezed,
    Object? roles = freezed,
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
      phoneCode == freezed
          ? _value.phoneCode
          : phoneCode // ignore: cast_nullable_to_non_nullable
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
      ewalletReferenceId == freezed
          ? _value.ewalletReferenceId
          : ewalletReferenceId // ignore: cast_nullable_to_non_nullable
              as String?,
      ewalletId == freezed
          ? _value.ewalletId
          : ewalletId // ignore: cast_nullable_to_non_nullable
              as String?,
      contactId == freezed
          ? _value.contactId
          : contactId // ignore: cast_nullable_to_non_nullable
              as String?,
      mothersName == freezed
          ? _value.mothersName
          : mothersName // ignore: cast_nullable_to_non_nullable
              as String?,
      line1 == freezed
          ? _value.line1
          : line1 // ignore: cast_nullable_to_non_nullable
              as String?,
      line2 == freezed
          ? _value.line2
          : line2 // ignore: cast_nullable_to_non_nullable
              as dynamic,
      city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      stateCode == freezed
          ? _value.stateCode
          : stateCode // ignore: cast_nullable_to_non_nullable
              as dynamic,
      country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      countryCode == freezed
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as dynamic,
      token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      dob == freezed
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as String,
      companyName == freezed
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String?,
      currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as dynamic,
      zip == freezed
          ? _value.zip
          : zip // ignore: cast_nullable_to_non_nullable
              as String?,
      roles == freezed
          ? _value.roles
          : roles // ignore: cast_nullable_to_non_nullable
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
      @JsonKey(name: 'email') this.email,
      @JsonKey(name: 'phone_number') this.phoneNumber,
      @JsonKey(name: 'phone_code') this.phoneCode,
      this.password,
      this.type,
      @JsonKey(name: 'entity_type') this.entityType,
      @JsonKey(name: 'is_email_verified') this.isEmailVerified,
      @JsonKey(name: 'ewallet_reference_id') this.ewalletReferenceId,
      @JsonKey(name: 'ewallet_id') this.ewalletId,
      @JsonKey(name: 'contact_id') this.contactId,
      @JsonKey(name: 'mothers_name') this.mothersName,
      @JsonKey(name: 'line_1') this.line1,
      @JsonKey(name: 'line_2') this.line2,
      @JsonKey(name: 'city') this.city,
      @JsonKey(name: 'state') this.state,
      @JsonKey(name: 'state_code') this.stateCode,
      @JsonKey(name: 'country') this.country,
      @JsonKey(name: 'country_code') this.countryCode,
      @JsonKey(name: 'token') this.token,
      @JsonKey(name: 'date_of_birth') this.dob,
      @JsonKey(name: 'company_name') this.companyName,
      this.currency,
      this.zip,
      this.roles);

  factory _$_UserDataInsert.fromJson(Map<String, dynamic> json) =>
      _$$_UserDataInsertFromJson(json);

  @override
  @JsonKey(name: 'first_name')
  final String? firstName;
  @override
  @JsonKey(name: 'last_name')
  final String? lastName;
  @override
  @JsonKey(name: 'email')
  final String? email;
  @override
  @JsonKey(name: 'phone_number')
  final String? phoneNumber;
  @override
  @JsonKey(name: 'phone_code')
  final String? phoneCode;
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
  @JsonKey(name: 'ewallet_reference_id')
  final String? ewalletReferenceId;
  @override
  @JsonKey(name: 'ewallet_id')
  final String? ewalletId;
  @override
  @JsonKey(name: 'contact_id')
  final String? contactId;
  @override
  @JsonKey(name: 'mothers_name')
  final String? mothersName;
  @override
  @JsonKey(name: 'line_1')
  final String? line1;
  @override
  @JsonKey(name: 'line_2')
  final dynamic line2;
  @override
  @JsonKey(name: 'city')
  final String? city;
  @override
  @JsonKey(name: 'state')
  final String? state;
  @override
  @JsonKey(name: 'state_code')
  final dynamic stateCode;
  @override
  @JsonKey(name: 'country')
  final String? country;
  @override
  @JsonKey(name: 'country_code')
  final dynamic countryCode;
  @override
  @JsonKey(name: 'token')
  final String token;
  @override
  @JsonKey(name: 'date_of_birth')
  final String dob;
  @override
  @JsonKey(name: 'company_name')
  final String? companyName;
  @override
  final dynamic currency;
  @override
  final String? zip;
  @override
  final String? roles;

  @override
  String toString() {
    return 'UserDataInsert(firstName: $firstName, lastName: $lastName, email: $email, phoneNumber: $phoneNumber, phoneCode: $phoneCode, password: $password, type: $type, entityType: $entityType, isEmailVerified: $isEmailVerified, ewalletReferenceId: $ewalletReferenceId, ewalletId: $ewalletId, contactId: $contactId, mothersName: $mothersName, line1: $line1, line2: $line2, city: $city, state: $state, stateCode: $stateCode, country: $country, countryCode: $countryCode, token: $token, dob: $dob, companyName: $companyName, currency: $currency, zip: $zip, roles: $roles)';
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
            (identical(other.phoneCode, phoneCode) ||
                const DeepCollectionEquality()
                    .equals(other.phoneCode, phoneCode)) &&
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
                    .equals(other.isEmailVerified, isEmailVerified)) &&
            (identical(other.ewalletReferenceId, ewalletReferenceId) ||
                const DeepCollectionEquality()
                    .equals(other.ewalletReferenceId, ewalletReferenceId)) &&
            (identical(other.ewalletId, ewalletId) ||
                const DeepCollectionEquality()
                    .equals(other.ewalletId, ewalletId)) &&
            (identical(other.contactId, contactId) ||
                const DeepCollectionEquality()
                    .equals(other.contactId, contactId)) &&
            (identical(other.mothersName, mothersName) ||
                const DeepCollectionEquality()
                    .equals(other.mothersName, mothersName)) &&
            (identical(other.line1, line1) ||
                const DeepCollectionEquality().equals(other.line1, line1)) &&
            (identical(other.line2, line2) ||
                const DeepCollectionEquality().equals(other.line2, line2)) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.state, state) ||
                const DeepCollectionEquality().equals(other.state, state)) &&
            (identical(other.stateCode, stateCode) ||
                const DeepCollectionEquality()
                    .equals(other.stateCode, stateCode)) &&
            (identical(other.country, country) ||
                const DeepCollectionEquality()
                    .equals(other.country, country)) &&
            (identical(other.countryCode, countryCode) ||
                const DeepCollectionEquality()
                    .equals(other.countryCode, countryCode)) &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)) &&
            (identical(other.dob, dob) ||
                const DeepCollectionEquality().equals(other.dob, dob)) &&
            (identical(other.companyName, companyName) ||
                const DeepCollectionEquality()
                    .equals(other.companyName, companyName)) &&
            (identical(other.currency, currency) ||
                const DeepCollectionEquality()
                    .equals(other.currency, currency)) &&
            (identical(other.zip, zip) ||
                const DeepCollectionEquality().equals(other.zip, zip)) &&
            (identical(other.roles, roles) ||
                const DeepCollectionEquality().equals(other.roles, roles)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(phoneCode) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(entityType) ^
      const DeepCollectionEquality().hash(isEmailVerified) ^
      const DeepCollectionEquality().hash(ewalletReferenceId) ^
      const DeepCollectionEquality().hash(ewalletId) ^
      const DeepCollectionEquality().hash(contactId) ^
      const DeepCollectionEquality().hash(mothersName) ^
      const DeepCollectionEquality().hash(line1) ^
      const DeepCollectionEquality().hash(line2) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(state) ^
      const DeepCollectionEquality().hash(stateCode) ^
      const DeepCollectionEquality().hash(country) ^
      const DeepCollectionEquality().hash(countryCode) ^
      const DeepCollectionEquality().hash(token) ^
      const DeepCollectionEquality().hash(dob) ^
      const DeepCollectionEquality().hash(companyName) ^
      const DeepCollectionEquality().hash(currency) ^
      const DeepCollectionEquality().hash(zip) ^
      const DeepCollectionEquality().hash(roles);

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
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'phone_number') String? phoneNumber,
      @JsonKey(name: 'phone_code') String? phoneCode,
      String? password,
      String? type,
      @JsonKey(name: 'entity_type') String? entityType,
      @JsonKey(name: 'is_email_verified') String? isEmailVerified,
      @JsonKey(name: 'ewallet_reference_id') String? ewalletReferenceId,
      @JsonKey(name: 'ewallet_id') String? ewalletId,
      @JsonKey(name: 'contact_id') String? contactId,
      @JsonKey(name: 'mothers_name') String? mothersName,
      @JsonKey(name: 'line_1') String? line1,
      @JsonKey(name: 'line_2') dynamic line2,
      @JsonKey(name: 'city') String? city,
      @JsonKey(name: 'state') String? state,
      @JsonKey(name: 'state_code') dynamic stateCode,
      @JsonKey(name: 'country') String? country,
      @JsonKey(name: 'country_code') dynamic countryCode,
      @JsonKey(name: 'token') String token,
      @JsonKey(name: 'date_of_birth') String dob,
      @JsonKey(name: 'company_name') String? companyName,
      dynamic currency,
      String? zip,
      String? roles) = _$_UserDataInsert;

  factory _UserDataInsert.fromJson(Map<String, dynamic> json) =
      _$_UserDataInsert.fromJson;

  @override
  @JsonKey(name: 'first_name')
  String? get firstName => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'last_name')
  String? get lastName => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'email')
  String? get email => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'phone_number')
  String? get phoneNumber => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'phone_code')
  String? get phoneCode => throw _privateConstructorUsedError;
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
  @JsonKey(name: 'ewallet_reference_id')
  String? get ewalletReferenceId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'ewallet_id')
  String? get ewalletId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'contact_id')
  String? get contactId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'mothers_name')
  String? get mothersName => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'line_1')
  String? get line1 => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'line_2')
  dynamic get line2 => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'city')
  String? get city => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'state')
  String? get state => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'state_code')
  dynamic get stateCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'country')
  String? get country => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'country_code')
  dynamic get countryCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'token')
  String get token => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'date_of_birth')
  String get dob => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'company_name')
  String? get companyName => throw _privateConstructorUsedError;
  @override
  dynamic get currency => throw _privateConstructorUsedError;
  @override
  String? get zip => throw _privateConstructorUsedError;
  @override
  String? get roles => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserDataInsertCopyWith<_UserDataInsert> get copyWith =>
      throw _privateConstructorUsedError;
}
