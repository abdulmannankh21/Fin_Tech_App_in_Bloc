// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'issue_card_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

IssueCardModel _$IssueCardModelFromJson(Map<String, dynamic> json) {
  return _IssueCardModel.fromJson(json);
}

/// @nodoc
class _$IssueCardModelTearOff {
  const _$IssueCardModelTearOff();

  _IssueCardModel call(Status? status, String? currency, String? cardid) {
    return _IssueCardModel(
      status,
      currency,
      cardid,
    );
  }

  IssueCardModel fromJson(Map<String, Object> json) {
    return IssueCardModel.fromJson(json);
  }
}

/// @nodoc
const $IssueCardModel = _$IssueCardModelTearOff();

/// @nodoc
mixin _$IssueCardModel {
  Status? get status => throw _privateConstructorUsedError;
  String? get currency => throw _privateConstructorUsedError;
  String? get cardid => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IssueCardModelCopyWith<IssueCardModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IssueCardModelCopyWith<$Res> {
  factory $IssueCardModelCopyWith(
          IssueCardModel value, $Res Function(IssueCardModel) then) =
      _$IssueCardModelCopyWithImpl<$Res>;
  $Res call({Status? status, String? currency, String? cardid});

  $StatusCopyWith<$Res>? get status;
}

/// @nodoc
class _$IssueCardModelCopyWithImpl<$Res>
    implements $IssueCardModelCopyWith<$Res> {
  _$IssueCardModelCopyWithImpl(this._value, this._then);

  final IssueCardModel _value;
  // ignore: unused_field
  final $Res Function(IssueCardModel) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? currency = freezed,
    Object? cardid = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status?,
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      cardid: cardid == freezed
          ? _value.cardid
          : cardid // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$IssueCardModelCopyWith<$Res>
    implements $IssueCardModelCopyWith<$Res> {
  factory _$IssueCardModelCopyWith(
          _IssueCardModel value, $Res Function(_IssueCardModel) then) =
      __$IssueCardModelCopyWithImpl<$Res>;
  @override
  $Res call({Status? status, String? currency, String? cardid});

  @override
  $StatusCopyWith<$Res>? get status;
}

/// @nodoc
class __$IssueCardModelCopyWithImpl<$Res>
    extends _$IssueCardModelCopyWithImpl<$Res>
    implements _$IssueCardModelCopyWith<$Res> {
  __$IssueCardModelCopyWithImpl(
      _IssueCardModel _value, $Res Function(_IssueCardModel) _then)
      : super(_value, (v) => _then(v as _IssueCardModel));

  @override
  _IssueCardModel get _value => super._value as _IssueCardModel;

  @override
  $Res call({
    Object? status = freezed,
    Object? currency = freezed,
    Object? cardid = freezed,
  }) {
    return _then(_IssueCardModel(
      status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status?,
      currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      cardid == freezed
          ? _value.cardid
          : cardid // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_IssueCardModel implements _IssueCardModel {
  const _$_IssueCardModel(this.status, this.currency, this.cardid);

  factory _$_IssueCardModel.fromJson(Map<String, dynamic> json) =>
      _$$_IssueCardModelFromJson(json);

  @override
  final Status? status;
  @override
  final String? currency;
  @override
  final String? cardid;

  @override
  String toString() {
    return 'IssueCardModel(status: $status, currency: $currency, cardid: $cardid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _IssueCardModel &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.currency, currency) ||
                const DeepCollectionEquality()
                    .equals(other.currency, currency)) &&
            (identical(other.cardid, cardid) ||
                const DeepCollectionEquality().equals(other.cardid, cardid)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(currency) ^
      const DeepCollectionEquality().hash(cardid);

  @JsonKey(ignore: true)
  @override
  _$IssueCardModelCopyWith<_IssueCardModel> get copyWith =>
      __$IssueCardModelCopyWithImpl<_IssueCardModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IssueCardModelToJson(this);
  }
}

abstract class _IssueCardModel implements IssueCardModel {
  const factory _IssueCardModel(
      Status? status, String? currency, String? cardid) = _$_IssueCardModel;

  factory _IssueCardModel.fromJson(Map<String, dynamic> json) =
      _$_IssueCardModel.fromJson;

  @override
  Status? get status => throw _privateConstructorUsedError;
  @override
  String? get currency => throw _privateConstructorUsedError;
  @override
  String? get cardid => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$IssueCardModelCopyWith<_IssueCardModel> get copyWith =>
      throw _privateConstructorUsedError;
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
