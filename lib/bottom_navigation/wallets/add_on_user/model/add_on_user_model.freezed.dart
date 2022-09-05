// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'add_on_user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AddOnUserModel _$AddOnUserModelFromJson(Map<String, dynamic> json) {
  return _AddOnUserModel.fromJson(json);
}

/// @nodoc
class _$AddOnUserModelTearOff {
  const _$AddOnUserModelTearOff();

  _AddOnUserModel call(Status? status, List<User> users) {
    return _AddOnUserModel(
      status,
      users,
    );
  }

  AddOnUserModel fromJson(Map<String, Object> json) {
    return AddOnUserModel.fromJson(json);
  }
}

/// @nodoc
const $AddOnUserModel = _$AddOnUserModelTearOff();

/// @nodoc
mixin _$AddOnUserModel {
  Status? get status => throw _privateConstructorUsedError;
  List<User> get users => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddOnUserModelCopyWith<AddOnUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddOnUserModelCopyWith<$Res> {
  factory $AddOnUserModelCopyWith(
          AddOnUserModel value, $Res Function(AddOnUserModel) then) =
      _$AddOnUserModelCopyWithImpl<$Res>;
  $Res call({Status? status, List<User> users});

  $StatusCopyWith<$Res>? get status;
}

/// @nodoc
class _$AddOnUserModelCopyWithImpl<$Res>
    implements $AddOnUserModelCopyWith<$Res> {
  _$AddOnUserModelCopyWithImpl(this._value, this._then);

  final AddOnUserModel _value;
  // ignore: unused_field
  final $Res Function(AddOnUserModel) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? users = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status?,
      users: users == freezed
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>,
    ));
  }

  @override
  $StatusCopyWith<$Res>? get status {
    if (_value.status == null) {
      return null;
    }

    return $StatusCopyWith<$Res>(_value.status!, (value) {
      return _then(_value.copyWith(status: value));
    });
  }
}

/// @nodoc
abstract class _$AddOnUserModelCopyWith<$Res>
    implements $AddOnUserModelCopyWith<$Res> {
  factory _$AddOnUserModelCopyWith(
          _AddOnUserModel value, $Res Function(_AddOnUserModel) then) =
      __$AddOnUserModelCopyWithImpl<$Res>;
  @override
  $Res call({Status? status, List<User> users});

  @override
  $StatusCopyWith<$Res>? get status;
}

/// @nodoc
class __$AddOnUserModelCopyWithImpl<$Res>
    extends _$AddOnUserModelCopyWithImpl<$Res>
    implements _$AddOnUserModelCopyWith<$Res> {
  __$AddOnUserModelCopyWithImpl(
      _AddOnUserModel _value, $Res Function(_AddOnUserModel) _then)
      : super(_value, (v) => _then(v as _AddOnUserModel));

  @override
  _AddOnUserModel get _value => super._value as _AddOnUserModel;

  @override
  $Res call({
    Object? status = freezed,
    Object? users = freezed,
  }) {
    return _then(_AddOnUserModel(
      status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status?,
      users == freezed
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AddOnUserModel implements _AddOnUserModel {
  const _$_AddOnUserModel(this.status, this.users);

  factory _$_AddOnUserModel.fromJson(Map<String, dynamic> json) =>
      _$$_AddOnUserModelFromJson(json);

  @override
  final Status? status;
  @override
  final List<User> users;

  @override
  String toString() {
    return 'AddOnUserModel(status: $status, users: $users)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddOnUserModel &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.users, users) ||
                const DeepCollectionEquality().equals(other.users, users)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(users);

  @JsonKey(ignore: true)
  @override
  _$AddOnUserModelCopyWith<_AddOnUserModel> get copyWith =>
      __$AddOnUserModelCopyWithImpl<_AddOnUserModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AddOnUserModelToJson(this);
  }
}

abstract class _AddOnUserModel implements AddOnUserModel {
  const factory _AddOnUserModel(Status? status, List<User> users) =
      _$_AddOnUserModel;

  factory _AddOnUserModel.fromJson(Map<String, dynamic> json) =
      _$_AddOnUserModel.fromJson;

  @override
  Status? get status => throw _privateConstructorUsedError;
  @override
  List<User> get users => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AddOnUserModelCopyWith<_AddOnUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
class _$UserTearOff {
  const _$UserTearOff();

  _User call(
      String? id,
      String? user_id,
      String? ewallet_id,
      String? email,
      String? first_name,
      String? last_name,
      String? accountid,
      String? cardid,
      String? image) {
    return _User(
      id,
      user_id,
      ewallet_id,
      email,
      first_name,
      last_name,
      accountid,
      cardid,
      image,
    );
  }

  User fromJson(Map<String, Object> json) {
    return User.fromJson(json);
  }
}

/// @nodoc
const $User = _$UserTearOff();

/// @nodoc
mixin _$User {
  String? get id => throw _privateConstructorUsedError;
  String? get user_id => throw _privateConstructorUsedError;
  String? get ewallet_id => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get first_name => throw _privateConstructorUsedError;
  String? get last_name => throw _privateConstructorUsedError;
  String? get accountid => throw _privateConstructorUsedError;
  String? get cardid => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String? user_id,
      String? ewallet_id,
      String? email,
      String? first_name,
      String? last_name,
      String? accountid,
      String? cardid,
      String? image});
}

/// @nodoc
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? user_id = freezed,
    Object? ewallet_id = freezed,
    Object? email = freezed,
    Object? first_name = freezed,
    Object? last_name = freezed,
    Object? accountid = freezed,
    Object? cardid = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      user_id: user_id == freezed
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as String?,
      ewallet_id: ewallet_id == freezed
          ? _value.ewallet_id
          : ewallet_id // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      first_name: first_name == freezed
          ? _value.first_name
          : first_name // ignore: cast_nullable_to_non_nullable
              as String?,
      last_name: last_name == freezed
          ? _value.last_name
          : last_name // ignore: cast_nullable_to_non_nullable
              as String?,
      accountid: accountid == freezed
          ? _value.accountid
          : accountid // ignore: cast_nullable_to_non_nullable
              as String?,
      cardid: cardid == freezed
          ? _value.cardid
          : cardid // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) then) =
      __$UserCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String? user_id,
      String? ewallet_id,
      String? email,
      String? first_name,
      String? last_name,
      String? accountid,
      String? cardid,
      String? image});
}

/// @nodoc
class __$UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(_User _value, $Res Function(_User) _then)
      : super(_value, (v) => _then(v as _User));

  @override
  _User get _value => super._value as _User;

  @override
  $Res call({
    Object? id = freezed,
    Object? user_id = freezed,
    Object? ewallet_id = freezed,
    Object? email = freezed,
    Object? first_name = freezed,
    Object? last_name = freezed,
    Object? accountid = freezed,
    Object? cardid = freezed,
    Object? image = freezed,
  }) {
    return _then(_User(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      user_id == freezed
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as String?,
      ewallet_id == freezed
          ? _value.ewallet_id
          : ewallet_id // ignore: cast_nullable_to_non_nullable
              as String?,
      email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      first_name == freezed
          ? _value.first_name
          : first_name // ignore: cast_nullable_to_non_nullable
              as String?,
      last_name == freezed
          ? _value.last_name
          : last_name // ignore: cast_nullable_to_non_nullable
              as String?,
      accountid == freezed
          ? _value.accountid
          : accountid // ignore: cast_nullable_to_non_nullable
              as String?,
      cardid == freezed
          ? _value.cardid
          : cardid // ignore: cast_nullable_to_non_nullable
              as String?,
      image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_User implements _User {
  const _$_User(this.id, this.user_id, this.ewallet_id, this.email,
      this.first_name, this.last_name, this.accountid, this.cardid, this.image);

  factory _$_User.fromJson(Map<String, dynamic> json) => _$$_UserFromJson(json);

  @override
  final String? id;
  @override
  final String? user_id;
  @override
  final String? ewallet_id;
  @override
  final String? email;
  @override
  final String? first_name;
  @override
  final String? last_name;
  @override
  final String? accountid;
  @override
  final String? cardid;
  @override
  final String? image;

  @override
  String toString() {
    return 'User(id: $id, user_id: $user_id, ewallet_id: $ewallet_id, email: $email, first_name: $first_name, last_name: $last_name, accountid: $accountid, cardid: $cardid, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _User &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.user_id, user_id) ||
                const DeepCollectionEquality()
                    .equals(other.user_id, user_id)) &&
            (identical(other.ewallet_id, ewallet_id) ||
                const DeepCollectionEquality()
                    .equals(other.ewallet_id, ewallet_id)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.first_name, first_name) ||
                const DeepCollectionEquality()
                    .equals(other.first_name, first_name)) &&
            (identical(other.last_name, last_name) ||
                const DeepCollectionEquality()
                    .equals(other.last_name, last_name)) &&
            (identical(other.accountid, accountid) ||
                const DeepCollectionEquality()
                    .equals(other.accountid, accountid)) &&
            (identical(other.cardid, cardid) ||
                const DeepCollectionEquality().equals(other.cardid, cardid)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(user_id) ^
      const DeepCollectionEquality().hash(ewallet_id) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(first_name) ^
      const DeepCollectionEquality().hash(last_name) ^
      const DeepCollectionEquality().hash(accountid) ^
      const DeepCollectionEquality().hash(cardid) ^
      const DeepCollectionEquality().hash(image);

  @JsonKey(ignore: true)
  @override
  _$UserCopyWith<_User> get copyWith =>
      __$UserCopyWithImpl<_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserToJson(this);
  }
}

abstract class _User implements User {
  const factory _User(
      String? id,
      String? user_id,
      String? ewallet_id,
      String? email,
      String? first_name,
      String? last_name,
      String? accountid,
      String? cardid,
      String? image) = _$_User;

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  String? get user_id => throw _privateConstructorUsedError;
  @override
  String? get ewallet_id => throw _privateConstructorUsedError;
  @override
  String? get email => throw _privateConstructorUsedError;
  @override
  String? get first_name => throw _privateConstructorUsedError;
  @override
  String? get last_name => throw _privateConstructorUsedError;
  @override
  String? get accountid => throw _privateConstructorUsedError;
  @override
  String? get cardid => throw _privateConstructorUsedError;
  @override
  String? get image => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserCopyWith<_User> get copyWith => throw _privateConstructorUsedError;
}

Status _$StatusFromJson(Map<String, dynamic> json) {
  return _Status.fromJson(json);
}

/// @nodoc
class _$StatusTearOff {
  const _$StatusTearOff();

  _Status call(String? result, String? message) {
    return _Status(
      result,
      message,
    );
  }

  Status fromJson(Map<String, Object> json) {
    return Status.fromJson(json);
  }
}

/// @nodoc
const $Status = _$StatusTearOff();

/// @nodoc
mixin _$Status {
  String? get result => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StatusCopyWith<Status> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatusCopyWith<$Res> {
  factory $StatusCopyWith(Status value, $Res Function(Status) then) =
      _$StatusCopyWithImpl<$Res>;
  $Res call({String? result, String? message});
}

/// @nodoc
class _$StatusCopyWithImpl<$Res> implements $StatusCopyWith<$Res> {
  _$StatusCopyWithImpl(this._value, this._then);

  final Status _value;
  // ignore: unused_field
  final $Res Function(Status) _then;

  @override
  $Res call({
    Object? result = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$StatusCopyWith<$Res> implements $StatusCopyWith<$Res> {
  factory _$StatusCopyWith(_Status value, $Res Function(_Status) then) =
      __$StatusCopyWithImpl<$Res>;
  @override
  $Res call({String? result, String? message});
}

/// @nodoc
class __$StatusCopyWithImpl<$Res> extends _$StatusCopyWithImpl<$Res>
    implements _$StatusCopyWith<$Res> {
  __$StatusCopyWithImpl(_Status _value, $Res Function(_Status) _then)
      : super(_value, (v) => _then(v as _Status));

  @override
  _Status get _value => super._value as _Status;

  @override
  $Res call({
    Object? result = freezed,
    Object? message = freezed,
  }) {
    return _then(_Status(
      result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String?,
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Status implements _Status {
  const _$_Status(this.result, this.message);

  factory _$_Status.fromJson(Map<String, dynamic> json) =>
      _$$_StatusFromJson(json);

  @override
  final String? result;
  @override
  final String? message;

  @override
  String toString() {
    return 'Status(result: $result, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Status &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(result) ^
      const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$StatusCopyWith<_Status> get copyWith =>
      __$StatusCopyWithImpl<_Status>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StatusToJson(this);
  }
}

abstract class _Status implements Status {
  const factory _Status(String? result, String? message) = _$_Status;

  factory _Status.fromJson(Map<String, dynamic> json) = _$_Status.fromJson;

  @override
  String? get result => throw _privateConstructorUsedError;
  @override
  String? get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$StatusCopyWith<_Status> get copyWith => throw _privateConstructorUsedError;
}
