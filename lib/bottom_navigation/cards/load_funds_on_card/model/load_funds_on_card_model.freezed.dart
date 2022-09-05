// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'load_funds_on_card_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LoadFundsOnCardModel _$LoadFundsOnCardModelFromJson(Map<String, dynamic> json) {
  return _LoadFundsOnCardModel.fromJson(json);
}

/// @nodoc
class _$LoadFundsOnCardModelTearOff {
  const _$LoadFundsOnCardModelTearOff();

  _LoadFundsOnCardModel call(Transaction? transaction, Data? status) {
    return _LoadFundsOnCardModel(
      transaction,
      status,
    );
  }

  LoadFundsOnCardModel fromJson(Map<String, Object> json) {
    return LoadFundsOnCardModel.fromJson(json);
  }
}

/// @nodoc
const $LoadFundsOnCardModel = _$LoadFundsOnCardModelTearOff();

/// @nodoc
mixin _$LoadFundsOnCardModel {
  Transaction? get transaction => throw _privateConstructorUsedError;
  Data? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoadFundsOnCardModelCopyWith<LoadFundsOnCardModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadFundsOnCardModelCopyWith<$Res> {
  factory $LoadFundsOnCardModelCopyWith(LoadFundsOnCardModel value,
          $Res Function(LoadFundsOnCardModel) then) =
      _$LoadFundsOnCardModelCopyWithImpl<$Res>;
  $Res call({Transaction? transaction, Data? status});

  $TransactionCopyWith<$Res>? get transaction;
  $DataCopyWith<$Res>? get status;
}

/// @nodoc
class _$LoadFundsOnCardModelCopyWithImpl<$Res>
    implements $LoadFundsOnCardModelCopyWith<$Res> {
  _$LoadFundsOnCardModelCopyWithImpl(this._value, this._then);

  final LoadFundsOnCardModel _value;
  // ignore: unused_field
  final $Res Function(LoadFundsOnCardModel) _then;

  @override
  $Res call({
    Object? transaction = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      transaction: transaction == freezed
          ? _value.transaction
          : transaction // ignore: cast_nullable_to_non_nullable
              as Transaction?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Data?,
    ));
  }

  @override
  $TransactionCopyWith<$Res>? get transaction {
    if (_value.transaction == null) {
      return null;
    }

    return $TransactionCopyWith<$Res>(_value.transaction!, (value) {
      return _then(_value.copyWith(transaction: value));
    });
  }

  @override
  $DataCopyWith<$Res>? get status {
    if (_value.status == null) {
      return null;
    }

    return $DataCopyWith<$Res>(_value.status!, (value) {
      return _then(_value.copyWith(status: value));
    });
  }
}

/// @nodoc
abstract class _$LoadFundsOnCardModelCopyWith<$Res>
    implements $LoadFundsOnCardModelCopyWith<$Res> {
  factory _$LoadFundsOnCardModelCopyWith(_LoadFundsOnCardModel value,
          $Res Function(_LoadFundsOnCardModel) then) =
      __$LoadFundsOnCardModelCopyWithImpl<$Res>;
  @override
  $Res call({Transaction? transaction, Data? status});

  @override
  $TransactionCopyWith<$Res>? get transaction;
  @override
  $DataCopyWith<$Res>? get status;
}

/// @nodoc
class __$LoadFundsOnCardModelCopyWithImpl<$Res>
    extends _$LoadFundsOnCardModelCopyWithImpl<$Res>
    implements _$LoadFundsOnCardModelCopyWith<$Res> {
  __$LoadFundsOnCardModelCopyWithImpl(
      _LoadFundsOnCardModel _value, $Res Function(_LoadFundsOnCardModel) _then)
      : super(_value, (v) => _then(v as _LoadFundsOnCardModel));

  @override
  _LoadFundsOnCardModel get _value => super._value as _LoadFundsOnCardModel;

  @override
  $Res call({
    Object? transaction = freezed,
    Object? status = freezed,
  }) {
    return _then(_LoadFundsOnCardModel(
      transaction == freezed
          ? _value.transaction
          : transaction // ignore: cast_nullable_to_non_nullable
              as Transaction?,
      status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Data?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LoadFundsOnCardModel implements _LoadFundsOnCardModel {
  const _$_LoadFundsOnCardModel(this.transaction, this.status);

  factory _$_LoadFundsOnCardModel.fromJson(Map<String, dynamic> json) =>
      _$$_LoadFundsOnCardModelFromJson(json);

  @override
  final Transaction? transaction;
  @override
  final Data? status;

  @override
  String toString() {
    return 'LoadFundsOnCardModel(transaction: $transaction, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadFundsOnCardModel &&
            (identical(other.transaction, transaction) ||
                const DeepCollectionEquality()
                    .equals(other.transaction, transaction)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(transaction) ^
      const DeepCollectionEquality().hash(status);

  @JsonKey(ignore: true)
  @override
  _$LoadFundsOnCardModelCopyWith<_LoadFundsOnCardModel> get copyWith =>
      __$LoadFundsOnCardModelCopyWithImpl<_LoadFundsOnCardModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LoadFundsOnCardModelToJson(this);
  }
}

abstract class _LoadFundsOnCardModel implements LoadFundsOnCardModel {
  const factory _LoadFundsOnCardModel(Transaction? transaction, Data? status) =
      _$_LoadFundsOnCardModel;

  factory _LoadFundsOnCardModel.fromJson(Map<String, dynamic> json) =
      _$_LoadFundsOnCardModel.fromJson;

  @override
  Transaction? get transaction => throw _privateConstructorUsedError;
  @override
  Data? get status => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LoadFundsOnCardModelCopyWith<_LoadFundsOnCardModel> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
class _$DataTearOff {
  const _$DataTearOff();

  _Data call(String? result, String? message) {
    return _Data(
      result,
      message,
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
  String? get result => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res>;
  $Res call({String? result, String? message});
}

/// @nodoc
class _$DataCopyWithImpl<$Res> implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  final Data _value;
  // ignore: unused_field
  final $Res Function(Data) _then;

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
abstract class _$DataCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$DataCopyWith(_Data value, $Res Function(_Data) then) =
      __$DataCopyWithImpl<$Res>;
  @override
  $Res call({String? result, String? message});
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
    Object? result = freezed,
    Object? message = freezed,
  }) {
    return _then(_Data(
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
class _$_Data implements _Data {
  const _$_Data(this.result, this.message);

  factory _$_Data.fromJson(Map<String, dynamic> json) => _$$_DataFromJson(json);

  @override
  final String? result;
  @override
  final String? message;

  @override
  String toString() {
    return 'Data(result: $result, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Data &&
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
  _$DataCopyWith<_Data> get copyWith =>
      __$DataCopyWithImpl<_Data>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataToJson(this);
  }
}

abstract class _Data implements Data {
  const factory _Data(String? result, String? message) = _$_Data;

  factory _Data.fromJson(Map<String, dynamic> json) = _$_Data.fromJson;

  @override
  String? get result => throw _privateConstructorUsedError;
  @override
  String? get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DataCopyWith<_Data> get copyWith => throw _privateConstructorUsedError;
}

Transaction _$TransactionFromJson(Map<String, dynamic> json) {
  return _Transaction.fromJson(json);
}

/// @nodoc
class _$TransactionTearOff {
  const _$TransactionTearOff();

  _Transaction call(double? creationTimestamp, String? id, String? profileId,
      String? state, String? tag) {
    return _Transaction(
      creationTimestamp,
      id,
      profileId,
      state,
      tag,
    );
  }

  Transaction fromJson(Map<String, Object> json) {
    return Transaction.fromJson(json);
  }
}

/// @nodoc
const $Transaction = _$TransactionTearOff();

/// @nodoc
mixin _$Transaction {
  double? get creationTimestamp => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  String? get profileId => throw _privateConstructorUsedError;
  String? get state => throw _privateConstructorUsedError;
  String? get tag => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionCopyWith<Transaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionCopyWith<$Res> {
  factory $TransactionCopyWith(
          Transaction value, $Res Function(Transaction) then) =
      _$TransactionCopyWithImpl<$Res>;
  $Res call(
      {double? creationTimestamp,
      String? id,
      String? profileId,
      String? state,
      String? tag});
}

/// @nodoc
class _$TransactionCopyWithImpl<$Res> implements $TransactionCopyWith<$Res> {
  _$TransactionCopyWithImpl(this._value, this._then);

  final Transaction _value;
  // ignore: unused_field
  final $Res Function(Transaction) _then;

  @override
  $Res call({
    Object? creationTimestamp = freezed,
    Object? id = freezed,
    Object? profileId = freezed,
    Object? state = freezed,
    Object? tag = freezed,
  }) {
    return _then(_value.copyWith(
      creationTimestamp: creationTimestamp == freezed
          ? _value.creationTimestamp
          : creationTimestamp // ignore: cast_nullable_to_non_nullable
              as double?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      profileId: profileId == freezed
          ? _value.profileId
          : profileId // ignore: cast_nullable_to_non_nullable
              as String?,
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      tag: tag == freezed
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$TransactionCopyWith<$Res>
    implements $TransactionCopyWith<$Res> {
  factory _$TransactionCopyWith(
          _Transaction value, $Res Function(_Transaction) then) =
      __$TransactionCopyWithImpl<$Res>;
  @override
  $Res call(
      {double? creationTimestamp,
      String? id,
      String? profileId,
      String? state,
      String? tag});
}

/// @nodoc
class __$TransactionCopyWithImpl<$Res> extends _$TransactionCopyWithImpl<$Res>
    implements _$TransactionCopyWith<$Res> {
  __$TransactionCopyWithImpl(
      _Transaction _value, $Res Function(_Transaction) _then)
      : super(_value, (v) => _then(v as _Transaction));

  @override
  _Transaction get _value => super._value as _Transaction;

  @override
  $Res call({
    Object? creationTimestamp = freezed,
    Object? id = freezed,
    Object? profileId = freezed,
    Object? state = freezed,
    Object? tag = freezed,
  }) {
    return _then(_Transaction(
      creationTimestamp == freezed
          ? _value.creationTimestamp
          : creationTimestamp // ignore: cast_nullable_to_non_nullable
              as double?,
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      profileId == freezed
          ? _value.profileId
          : profileId // ignore: cast_nullable_to_non_nullable
              as String?,
      state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      tag == freezed
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Transaction implements _Transaction {
  const _$_Transaction(
      this.creationTimestamp, this.id, this.profileId, this.state, this.tag);

  factory _$_Transaction.fromJson(Map<String, dynamic> json) =>
      _$$_TransactionFromJson(json);

  @override
  final double? creationTimestamp;
  @override
  final String? id;
  @override
  final String? profileId;
  @override
  final String? state;
  @override
  final String? tag;

  @override
  String toString() {
    return 'Transaction(creationTimestamp: $creationTimestamp, id: $id, profileId: $profileId, state: $state, tag: $tag)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Transaction &&
            (identical(other.creationTimestamp, creationTimestamp) ||
                const DeepCollectionEquality()
                    .equals(other.creationTimestamp, creationTimestamp)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.profileId, profileId) ||
                const DeepCollectionEquality()
                    .equals(other.profileId, profileId)) &&
            (identical(other.state, state) ||
                const DeepCollectionEquality().equals(other.state, state)) &&
            (identical(other.tag, tag) ||
                const DeepCollectionEquality().equals(other.tag, tag)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(creationTimestamp) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(profileId) ^
      const DeepCollectionEquality().hash(state) ^
      const DeepCollectionEquality().hash(tag);

  @JsonKey(ignore: true)
  @override
  _$TransactionCopyWith<_Transaction> get copyWith =>
      __$TransactionCopyWithImpl<_Transaction>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TransactionToJson(this);
  }
}

abstract class _Transaction implements Transaction {
  const factory _Transaction(double? creationTimestamp, String? id,
      String? profileId, String? state, String? tag) = _$_Transaction;

  factory _Transaction.fromJson(Map<String, dynamic> json) =
      _$_Transaction.fromJson;

  @override
  double? get creationTimestamp => throw _privateConstructorUsedError;
  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  String? get profileId => throw _privateConstructorUsedError;
  @override
  String? get state => throw _privateConstructorUsedError;
  @override
  String? get tag => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TransactionCopyWith<_Transaction> get copyWith =>
      throw _privateConstructorUsedError;
}
