// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'card_transaction_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CardTransactionModel _$CardTransactionModelFromJson(Map<String, dynamic> json) {
  return _CardTransactionModel.fromJson(json);
}

/// @nodoc
class _$CardTransactionModelTearOff {
  const _$CardTransactionModelTearOff();

  _CardTransactionModel call(Status? status, String? cardid,
      @JsonKey(name: "card_transaction") Data? data) {
    return _CardTransactionModel(
      status,
      cardid,
      data,
    );
  }

  CardTransactionModel fromJson(Map<String, Object> json) {
    return CardTransactionModel.fromJson(json);
  }
}

/// @nodoc
const $CardTransactionModel = _$CardTransactionModelTearOff();

/// @nodoc
mixin _$CardTransactionModel {
  Status? get status => throw _privateConstructorUsedError;
  String? get cardid => throw _privateConstructorUsedError;
  @JsonKey(name: "card_transaction")
  Data? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CardTransactionModelCopyWith<CardTransactionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardTransactionModelCopyWith<$Res> {
  factory $CardTransactionModelCopyWith(CardTransactionModel value,
          $Res Function(CardTransactionModel) then) =
      _$CardTransactionModelCopyWithImpl<$Res>;
  $Res call(
      {Status? status,
      String? cardid,
      @JsonKey(name: "card_transaction") Data? data});

  $StatusCopyWith<$Res>? get status;
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$CardTransactionModelCopyWithImpl<$Res>
    implements $CardTransactionModelCopyWith<$Res> {
  _$CardTransactionModelCopyWithImpl(this._value, this._then);

  final CardTransactionModel _value;
  // ignore: unused_field
  final $Res Function(CardTransactionModel) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? cardid = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status?,
      cardid: cardid == freezed
          ? _value.cardid
          : cardid // ignore: cast_nullable_to_non_nullable
              as String?,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
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
abstract class _$CardTransactionModelCopyWith<$Res>
    implements $CardTransactionModelCopyWith<$Res> {
  factory _$CardTransactionModelCopyWith(_CardTransactionModel value,
          $Res Function(_CardTransactionModel) then) =
      __$CardTransactionModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {Status? status,
      String? cardid,
      @JsonKey(name: "card_transaction") Data? data});

  @override
  $StatusCopyWith<$Res>? get status;
  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$CardTransactionModelCopyWithImpl<$Res>
    extends _$CardTransactionModelCopyWithImpl<$Res>
    implements _$CardTransactionModelCopyWith<$Res> {
  __$CardTransactionModelCopyWithImpl(
      _CardTransactionModel _value, $Res Function(_CardTransactionModel) _then)
      : super(_value, (v) => _then(v as _CardTransactionModel));

  @override
  _CardTransactionModel get _value => super._value as _CardTransactionModel;

  @override
  $Res call({
    Object? status = freezed,
    Object? cardid = freezed,
    Object? data = freezed,
  }) {
    return _then(_CardTransactionModel(
      status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status?,
      cardid == freezed
          ? _value.cardid
          : cardid // ignore: cast_nullable_to_non_nullable
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
class _$_CardTransactionModel implements _CardTransactionModel {
  const _$_CardTransactionModel(
      this.status, this.cardid, @JsonKey(name: "card_transaction") this.data);

  factory _$_CardTransactionModel.fromJson(Map<String, dynamic> json) =>
      _$$_CardTransactionModelFromJson(json);

  @override
  final Status? status;
  @override
  final String? cardid;
  @override
  @JsonKey(name: "card_transaction")
  final Data? data;

  @override
  String toString() {
    return 'CardTransactionModel(status: $status, cardid: $cardid, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CardTransactionModel &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.cardid, cardid) ||
                const DeepCollectionEquality().equals(other.cardid, cardid)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(cardid) ^
      const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$CardTransactionModelCopyWith<_CardTransactionModel> get copyWith =>
      __$CardTransactionModelCopyWithImpl<_CardTransactionModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CardTransactionModelToJson(this);
  }
}

abstract class _CardTransactionModel implements CardTransactionModel {
  const factory _CardTransactionModel(Status? status, String? cardid,
      @JsonKey(name: "card_transaction") Data? data) = _$_CardTransactionModel;

  factory _CardTransactionModel.fromJson(Map<String, dynamic> json) =
      _$_CardTransactionModel.fromJson;

  @override
  Status? get status => throw _privateConstructorUsedError;
  @override
  String? get cardid => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "card_transaction")
  Data? get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CardTransactionModelCopyWith<_CardTransactionModel> get copyWith =>
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

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
class _$DataTearOff {
  const _$DataTearOff();

  _Data call(
      @JsonKey(name: 'count') int? count,
      @JsonKey(name: 'entry') List<TransactionModel>? entry,
      @JsonKey(name: 'responseCount') int? responseCount) {
    return _Data(
      count,
      entry,
      responseCount,
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
  @JsonKey(name: 'count')
  int? get count => throw _privateConstructorUsedError;
  @JsonKey(name: 'entry')
  List<TransactionModel>? get entry => throw _privateConstructorUsedError;
  @JsonKey(name: 'responseCount')
  int? get responseCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'count') int? count,
      @JsonKey(name: 'entry') List<TransactionModel>? entry,
      @JsonKey(name: 'responseCount') int? responseCount});
}

/// @nodoc
class _$DataCopyWithImpl<$Res> implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  final Data _value;
  // ignore: unused_field
  final $Res Function(Data) _then;

  @override
  $Res call({
    Object? count = freezed,
    Object? entry = freezed,
    Object? responseCount = freezed,
  }) {
    return _then(_value.copyWith(
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      entry: entry == freezed
          ? _value.entry
          : entry // ignore: cast_nullable_to_non_nullable
              as List<TransactionModel>?,
      responseCount: responseCount == freezed
          ? _value.responseCount
          : responseCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$DataCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$DataCopyWith(_Data value, $Res Function(_Data) then) =
      __$DataCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'count') int? count,
      @JsonKey(name: 'entry') List<TransactionModel>? entry,
      @JsonKey(name: 'responseCount') int? responseCount});
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
    Object? count = freezed,
    Object? entry = freezed,
    Object? responseCount = freezed,
  }) {
    return _then(_Data(
      count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      entry == freezed
          ? _value.entry
          : entry // ignore: cast_nullable_to_non_nullable
              as List<TransactionModel>?,
      responseCount == freezed
          ? _value.responseCount
          : responseCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Data implements _Data {
  const _$_Data(
      @JsonKey(name: 'count') this.count,
      @JsonKey(name: 'entry') this.entry,
      @JsonKey(name: 'responseCount') this.responseCount);

  factory _$_Data.fromJson(Map<String, dynamic> json) => _$$_DataFromJson(json);

  @override
  @JsonKey(name: 'count')
  final int? count;
  @override
  @JsonKey(name: 'entry')
  final List<TransactionModel>? entry;
  @override
  @JsonKey(name: 'responseCount')
  final int? responseCount;

  @override
  String toString() {
    return 'Data(count: $count, entry: $entry, responseCount: $responseCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Data &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)) &&
            (identical(other.entry, entry) ||
                const DeepCollectionEquality().equals(other.entry, entry)) &&
            (identical(other.responseCount, responseCount) ||
                const DeepCollectionEquality()
                    .equals(other.responseCount, responseCount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(count) ^
      const DeepCollectionEquality().hash(entry) ^
      const DeepCollectionEquality().hash(responseCount);

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
      @JsonKey(name: 'count') int? count,
      @JsonKey(name: 'entry') List<TransactionModel>? entry,
      @JsonKey(name: 'responseCount') int? responseCount) = _$_Data;

  factory _Data.fromJson(Map<String, dynamic> json) = _$_Data.fromJson;

  @override
  @JsonKey(name: 'count')
  int? get count => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'entry')
  List<TransactionModel>? get entry => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'responseCount')
  int? get responseCount => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DataCopyWith<_Data> get copyWith => throw _privateConstructorUsedError;
}

TransactionModel _$TransactionModelFromJson(Map<String, dynamic> json) {
  return _TransactionModel.fromJson(json);
}

/// @nodoc
class _$TransactionModelTearOff {
  const _$TransactionModelTearOff();

  _TransactionModel call(
      @JsonKey(name: 'actualBalanceAdjustment')
          ActualBalanceAdjustment? actualBalanceAdjustment,
      @JsonKey(name: 'actualBalanceAfter')
          ActualBalanceAfter? actualBalanceAfter,
      @JsonKey(name: 'additionalFields')
          AdditionalFields? additionalFields,
      @JsonKey(name: 'availableBalanceAdjustment')
          AvailableBalanceAdjustment? availableBalanceAdjustment,
      @JsonKey(name: 'availableBalanceAfter')
          AvailableBalanceAfter? availableBalanceAfter,
      @JsonKey(name: 'balanceAfter')
          BalanceAfter? balanceAfter,
      @JsonKey(name: 'cardholderFee')
          CardholderFee? cardholderFee,
      @JsonKey(name: 'transactionAmount')
          TransactionAmount? transactionAmount,
      @JsonKey(name: 'transactionFee')
          TransactionFee? transactionFee,
      @JsonKey(name: 'transactionId')
          TransactionId? transactionId,
      @JsonKey(name: 'entryState')
          String? entryState,
      @JsonKey(name: 'processedTimestamp')
          double? processedTimestamp) {
    return _TransactionModel(
      actualBalanceAdjustment,
      actualBalanceAfter,
      additionalFields,
      availableBalanceAdjustment,
      availableBalanceAfter,
      balanceAfter,
      cardholderFee,
      transactionAmount,
      transactionFee,
      transactionId,
      entryState,
      processedTimestamp,
    );
  }

  TransactionModel fromJson(Map<String, Object> json) {
    return TransactionModel.fromJson(json);
  }
}

/// @nodoc
const $TransactionModel = _$TransactionModelTearOff();

/// @nodoc
mixin _$TransactionModel {
  @JsonKey(name: 'actualBalanceAdjustment')
  ActualBalanceAdjustment? get actualBalanceAdjustment =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'actualBalanceAfter')
  ActualBalanceAfter? get actualBalanceAfter =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'additionalFields')
  AdditionalFields? get additionalFields => throw _privateConstructorUsedError;
  @JsonKey(name: 'availableBalanceAdjustment')
  AvailableBalanceAdjustment? get availableBalanceAdjustment =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'availableBalanceAfter')
  AvailableBalanceAfter? get availableBalanceAfter =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'balanceAfter')
  BalanceAfter? get balanceAfter => throw _privateConstructorUsedError;
  @JsonKey(name: 'cardholderFee')
  CardholderFee? get cardholderFee => throw _privateConstructorUsedError;
  @JsonKey(name: 'transactionAmount')
  TransactionAmount? get transactionAmount =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'transactionFee')
  TransactionFee? get transactionFee => throw _privateConstructorUsedError;
  @JsonKey(name: 'transactionId')
  TransactionId? get transactionId => throw _privateConstructorUsedError;
  @JsonKey(name: 'entryState')
  String? get entryState => throw _privateConstructorUsedError;
  @JsonKey(name: 'processedTimestamp')
  double? get processedTimestamp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionModelCopyWith<TransactionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionModelCopyWith<$Res> {
  factory $TransactionModelCopyWith(
          TransactionModel value, $Res Function(TransactionModel) then) =
      _$TransactionModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'actualBalanceAdjustment')
          ActualBalanceAdjustment? actualBalanceAdjustment,
      @JsonKey(name: 'actualBalanceAfter')
          ActualBalanceAfter? actualBalanceAfter,
      @JsonKey(name: 'additionalFields')
          AdditionalFields? additionalFields,
      @JsonKey(name: 'availableBalanceAdjustment')
          AvailableBalanceAdjustment? availableBalanceAdjustment,
      @JsonKey(name: 'availableBalanceAfter')
          AvailableBalanceAfter? availableBalanceAfter,
      @JsonKey(name: 'balanceAfter')
          BalanceAfter? balanceAfter,
      @JsonKey(name: 'cardholderFee')
          CardholderFee? cardholderFee,
      @JsonKey(name: 'transactionAmount')
          TransactionAmount? transactionAmount,
      @JsonKey(name: 'transactionFee')
          TransactionFee? transactionFee,
      @JsonKey(name: 'transactionId')
          TransactionId? transactionId,
      @JsonKey(name: 'entryState')
          String? entryState,
      @JsonKey(name: 'processedTimestamp')
          double? processedTimestamp});

  $ActualBalanceAdjustmentCopyWith<$Res>? get actualBalanceAdjustment;
  $ActualBalanceAfterCopyWith<$Res>? get actualBalanceAfter;
  $AdditionalFieldsCopyWith<$Res>? get additionalFields;
  $AvailableBalanceAdjustmentCopyWith<$Res>? get availableBalanceAdjustment;
  $AvailableBalanceAfterCopyWith<$Res>? get availableBalanceAfter;
  $BalanceAfterCopyWith<$Res>? get balanceAfter;
  $CardholderFeeCopyWith<$Res>? get cardholderFee;
  $TransactionAmountCopyWith<$Res>? get transactionAmount;
  $TransactionFeeCopyWith<$Res>? get transactionFee;
  $TransactionIdCopyWith<$Res>? get transactionId;
}

/// @nodoc
class _$TransactionModelCopyWithImpl<$Res>
    implements $TransactionModelCopyWith<$Res> {
  _$TransactionModelCopyWithImpl(this._value, this._then);

  final TransactionModel _value;
  // ignore: unused_field
  final $Res Function(TransactionModel) _then;

  @override
  $Res call({
    Object? actualBalanceAdjustment = freezed,
    Object? actualBalanceAfter = freezed,
    Object? additionalFields = freezed,
    Object? availableBalanceAdjustment = freezed,
    Object? availableBalanceAfter = freezed,
    Object? balanceAfter = freezed,
    Object? cardholderFee = freezed,
    Object? transactionAmount = freezed,
    Object? transactionFee = freezed,
    Object? transactionId = freezed,
    Object? entryState = freezed,
    Object? processedTimestamp = freezed,
  }) {
    return _then(_value.copyWith(
      actualBalanceAdjustment: actualBalanceAdjustment == freezed
          ? _value.actualBalanceAdjustment
          : actualBalanceAdjustment // ignore: cast_nullable_to_non_nullable
              as ActualBalanceAdjustment?,
      actualBalanceAfter: actualBalanceAfter == freezed
          ? _value.actualBalanceAfter
          : actualBalanceAfter // ignore: cast_nullable_to_non_nullable
              as ActualBalanceAfter?,
      additionalFields: additionalFields == freezed
          ? _value.additionalFields
          : additionalFields // ignore: cast_nullable_to_non_nullable
              as AdditionalFields?,
      availableBalanceAdjustment: availableBalanceAdjustment == freezed
          ? _value.availableBalanceAdjustment
          : availableBalanceAdjustment // ignore: cast_nullable_to_non_nullable
              as AvailableBalanceAdjustment?,
      availableBalanceAfter: availableBalanceAfter == freezed
          ? _value.availableBalanceAfter
          : availableBalanceAfter // ignore: cast_nullable_to_non_nullable
              as AvailableBalanceAfter?,
      balanceAfter: balanceAfter == freezed
          ? _value.balanceAfter
          : balanceAfter // ignore: cast_nullable_to_non_nullable
              as BalanceAfter?,
      cardholderFee: cardholderFee == freezed
          ? _value.cardholderFee
          : cardholderFee // ignore: cast_nullable_to_non_nullable
              as CardholderFee?,
      transactionAmount: transactionAmount == freezed
          ? _value.transactionAmount
          : transactionAmount // ignore: cast_nullable_to_non_nullable
              as TransactionAmount?,
      transactionFee: transactionFee == freezed
          ? _value.transactionFee
          : transactionFee // ignore: cast_nullable_to_non_nullable
              as TransactionFee?,
      transactionId: transactionId == freezed
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as TransactionId?,
      entryState: entryState == freezed
          ? _value.entryState
          : entryState // ignore: cast_nullable_to_non_nullable
              as String?,
      processedTimestamp: processedTimestamp == freezed
          ? _value.processedTimestamp
          : processedTimestamp // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }

  @override
  $ActualBalanceAdjustmentCopyWith<$Res>? get actualBalanceAdjustment {
    if (_value.actualBalanceAdjustment == null) {
      return null;
    }

    return $ActualBalanceAdjustmentCopyWith<$Res>(
        _value.actualBalanceAdjustment!, (value) {
      return _then(_value.copyWith(actualBalanceAdjustment: value));
    });
  }

  @override
  $ActualBalanceAfterCopyWith<$Res>? get actualBalanceAfter {
    if (_value.actualBalanceAfter == null) {
      return null;
    }

    return $ActualBalanceAfterCopyWith<$Res>(_value.actualBalanceAfter!,
        (value) {
      return _then(_value.copyWith(actualBalanceAfter: value));
    });
  }

  @override
  $AdditionalFieldsCopyWith<$Res>? get additionalFields {
    if (_value.additionalFields == null) {
      return null;
    }

    return $AdditionalFieldsCopyWith<$Res>(_value.additionalFields!, (value) {
      return _then(_value.copyWith(additionalFields: value));
    });
  }

  @override
  $AvailableBalanceAdjustmentCopyWith<$Res>? get availableBalanceAdjustment {
    if (_value.availableBalanceAdjustment == null) {
      return null;
    }

    return $AvailableBalanceAdjustmentCopyWith<$Res>(
        _value.availableBalanceAdjustment!, (value) {
      return _then(_value.copyWith(availableBalanceAdjustment: value));
    });
  }

  @override
  $AvailableBalanceAfterCopyWith<$Res>? get availableBalanceAfter {
    if (_value.availableBalanceAfter == null) {
      return null;
    }

    return $AvailableBalanceAfterCopyWith<$Res>(_value.availableBalanceAfter!,
        (value) {
      return _then(_value.copyWith(availableBalanceAfter: value));
    });
  }

  @override
  $BalanceAfterCopyWith<$Res>? get balanceAfter {
    if (_value.balanceAfter == null) {
      return null;
    }

    return $BalanceAfterCopyWith<$Res>(_value.balanceAfter!, (value) {
      return _then(_value.copyWith(balanceAfter: value));
    });
  }

  @override
  $CardholderFeeCopyWith<$Res>? get cardholderFee {
    if (_value.cardholderFee == null) {
      return null;
    }

    return $CardholderFeeCopyWith<$Res>(_value.cardholderFee!, (value) {
      return _then(_value.copyWith(cardholderFee: value));
    });
  }

  @override
  $TransactionAmountCopyWith<$Res>? get transactionAmount {
    if (_value.transactionAmount == null) {
      return null;
    }

    return $TransactionAmountCopyWith<$Res>(_value.transactionAmount!, (value) {
      return _then(_value.copyWith(transactionAmount: value));
    });
  }

  @override
  $TransactionFeeCopyWith<$Res>? get transactionFee {
    if (_value.transactionFee == null) {
      return null;
    }

    return $TransactionFeeCopyWith<$Res>(_value.transactionFee!, (value) {
      return _then(_value.copyWith(transactionFee: value));
    });
  }

  @override
  $TransactionIdCopyWith<$Res>? get transactionId {
    if (_value.transactionId == null) {
      return null;
    }

    return $TransactionIdCopyWith<$Res>(_value.transactionId!, (value) {
      return _then(_value.copyWith(transactionId: value));
    });
  }
}

/// @nodoc
abstract class _$TransactionModelCopyWith<$Res>
    implements $TransactionModelCopyWith<$Res> {
  factory _$TransactionModelCopyWith(
          _TransactionModel value, $Res Function(_TransactionModel) then) =
      __$TransactionModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'actualBalanceAdjustment')
          ActualBalanceAdjustment? actualBalanceAdjustment,
      @JsonKey(name: 'actualBalanceAfter')
          ActualBalanceAfter? actualBalanceAfter,
      @JsonKey(name: 'additionalFields')
          AdditionalFields? additionalFields,
      @JsonKey(name: 'availableBalanceAdjustment')
          AvailableBalanceAdjustment? availableBalanceAdjustment,
      @JsonKey(name: 'availableBalanceAfter')
          AvailableBalanceAfter? availableBalanceAfter,
      @JsonKey(name: 'balanceAfter')
          BalanceAfter? balanceAfter,
      @JsonKey(name: 'cardholderFee')
          CardholderFee? cardholderFee,
      @JsonKey(name: 'transactionAmount')
          TransactionAmount? transactionAmount,
      @JsonKey(name: 'transactionFee')
          TransactionFee? transactionFee,
      @JsonKey(name: 'transactionId')
          TransactionId? transactionId,
      @JsonKey(name: 'entryState')
          String? entryState,
      @JsonKey(name: 'processedTimestamp')
          double? processedTimestamp});

  @override
  $ActualBalanceAdjustmentCopyWith<$Res>? get actualBalanceAdjustment;
  @override
  $ActualBalanceAfterCopyWith<$Res>? get actualBalanceAfter;
  @override
  $AdditionalFieldsCopyWith<$Res>? get additionalFields;
  @override
  $AvailableBalanceAdjustmentCopyWith<$Res>? get availableBalanceAdjustment;
  @override
  $AvailableBalanceAfterCopyWith<$Res>? get availableBalanceAfter;
  @override
  $BalanceAfterCopyWith<$Res>? get balanceAfter;
  @override
  $CardholderFeeCopyWith<$Res>? get cardholderFee;
  @override
  $TransactionAmountCopyWith<$Res>? get transactionAmount;
  @override
  $TransactionFeeCopyWith<$Res>? get transactionFee;
  @override
  $TransactionIdCopyWith<$Res>? get transactionId;
}

/// @nodoc
class __$TransactionModelCopyWithImpl<$Res>
    extends _$TransactionModelCopyWithImpl<$Res>
    implements _$TransactionModelCopyWith<$Res> {
  __$TransactionModelCopyWithImpl(
      _TransactionModel _value, $Res Function(_TransactionModel) _then)
      : super(_value, (v) => _then(v as _TransactionModel));

  @override
  _TransactionModel get _value => super._value as _TransactionModel;

  @override
  $Res call({
    Object? actualBalanceAdjustment = freezed,
    Object? actualBalanceAfter = freezed,
    Object? additionalFields = freezed,
    Object? availableBalanceAdjustment = freezed,
    Object? availableBalanceAfter = freezed,
    Object? balanceAfter = freezed,
    Object? cardholderFee = freezed,
    Object? transactionAmount = freezed,
    Object? transactionFee = freezed,
    Object? transactionId = freezed,
    Object? entryState = freezed,
    Object? processedTimestamp = freezed,
  }) {
    return _then(_TransactionModel(
      actualBalanceAdjustment == freezed
          ? _value.actualBalanceAdjustment
          : actualBalanceAdjustment // ignore: cast_nullable_to_non_nullable
              as ActualBalanceAdjustment?,
      actualBalanceAfter == freezed
          ? _value.actualBalanceAfter
          : actualBalanceAfter // ignore: cast_nullable_to_non_nullable
              as ActualBalanceAfter?,
      additionalFields == freezed
          ? _value.additionalFields
          : additionalFields // ignore: cast_nullable_to_non_nullable
              as AdditionalFields?,
      availableBalanceAdjustment == freezed
          ? _value.availableBalanceAdjustment
          : availableBalanceAdjustment // ignore: cast_nullable_to_non_nullable
              as AvailableBalanceAdjustment?,
      availableBalanceAfter == freezed
          ? _value.availableBalanceAfter
          : availableBalanceAfter // ignore: cast_nullable_to_non_nullable
              as AvailableBalanceAfter?,
      balanceAfter == freezed
          ? _value.balanceAfter
          : balanceAfter // ignore: cast_nullable_to_non_nullable
              as BalanceAfter?,
      cardholderFee == freezed
          ? _value.cardholderFee
          : cardholderFee // ignore: cast_nullable_to_non_nullable
              as CardholderFee?,
      transactionAmount == freezed
          ? _value.transactionAmount
          : transactionAmount // ignore: cast_nullable_to_non_nullable
              as TransactionAmount?,
      transactionFee == freezed
          ? _value.transactionFee
          : transactionFee // ignore: cast_nullable_to_non_nullable
              as TransactionFee?,
      transactionId == freezed
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as TransactionId?,
      entryState == freezed
          ? _value.entryState
          : entryState // ignore: cast_nullable_to_non_nullable
              as String?,
      processedTimestamp == freezed
          ? _value.processedTimestamp
          : processedTimestamp // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TransactionModel implements _TransactionModel {
  const _$_TransactionModel(
      @JsonKey(name: 'actualBalanceAdjustment')
          this.actualBalanceAdjustment,
      @JsonKey(name: 'actualBalanceAfter')
          this.actualBalanceAfter,
      @JsonKey(name: 'additionalFields')
          this.additionalFields,
      @JsonKey(name: 'availableBalanceAdjustment')
          this.availableBalanceAdjustment,
      @JsonKey(name: 'availableBalanceAfter')
          this.availableBalanceAfter,
      @JsonKey(name: 'balanceAfter')
          this.balanceAfter,
      @JsonKey(name: 'cardholderFee')
          this.cardholderFee,
      @JsonKey(name: 'transactionAmount')
          this.transactionAmount,
      @JsonKey(name: 'transactionFee')
          this.transactionFee,
      @JsonKey(name: 'transactionId')
          this.transactionId,
      @JsonKey(name: 'entryState')
          this.entryState,
      @JsonKey(name: 'processedTimestamp')
          this.processedTimestamp);

  factory _$_TransactionModel.fromJson(Map<String, dynamic> json) =>
      _$$_TransactionModelFromJson(json);

  @override
  @JsonKey(name: 'actualBalanceAdjustment')
  final ActualBalanceAdjustment? actualBalanceAdjustment;
  @override
  @JsonKey(name: 'actualBalanceAfter')
  final ActualBalanceAfter? actualBalanceAfter;
  @override
  @JsonKey(name: 'additionalFields')
  final AdditionalFields? additionalFields;
  @override
  @JsonKey(name: 'availableBalanceAdjustment')
  final AvailableBalanceAdjustment? availableBalanceAdjustment;
  @override
  @JsonKey(name: 'availableBalanceAfter')
  final AvailableBalanceAfter? availableBalanceAfter;
  @override
  @JsonKey(name: 'balanceAfter')
  final BalanceAfter? balanceAfter;
  @override
  @JsonKey(name: 'cardholderFee')
  final CardholderFee? cardholderFee;
  @override
  @JsonKey(name: 'transactionAmount')
  final TransactionAmount? transactionAmount;
  @override
  @JsonKey(name: 'transactionFee')
  final TransactionFee? transactionFee;
  @override
  @JsonKey(name: 'transactionId')
  final TransactionId? transactionId;
  @override
  @JsonKey(name: 'entryState')
  final String? entryState;
  @override
  @JsonKey(name: 'processedTimestamp')
  final double? processedTimestamp;

  @override
  String toString() {
    return 'TransactionModel(actualBalanceAdjustment: $actualBalanceAdjustment, actualBalanceAfter: $actualBalanceAfter, additionalFields: $additionalFields, availableBalanceAdjustment: $availableBalanceAdjustment, availableBalanceAfter: $availableBalanceAfter, balanceAfter: $balanceAfter, cardholderFee: $cardholderFee, transactionAmount: $transactionAmount, transactionFee: $transactionFee, transactionId: $transactionId, entryState: $entryState, processedTimestamp: $processedTimestamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TransactionModel &&
            (identical(
                    other.actualBalanceAdjustment, actualBalanceAdjustment) ||
                const DeepCollectionEquality().equals(
                    other.actualBalanceAdjustment, actualBalanceAdjustment)) &&
            (identical(other.actualBalanceAfter, actualBalanceAfter) ||
                const DeepCollectionEquality()
                    .equals(other.actualBalanceAfter, actualBalanceAfter)) &&
            (identical(other.additionalFields, additionalFields) ||
                const DeepCollectionEquality()
                    .equals(other.additionalFields, additionalFields)) &&
            (identical(other.availableBalanceAdjustment, availableBalanceAdjustment) ||
                const DeepCollectionEquality().equals(
                    other.availableBalanceAdjustment,
                    availableBalanceAdjustment)) &&
            (identical(other.availableBalanceAfter, availableBalanceAfter) ||
                const DeepCollectionEquality().equals(
                    other.availableBalanceAfter, availableBalanceAfter)) &&
            (identical(other.balanceAfter, balanceAfter) ||
                const DeepCollectionEquality()
                    .equals(other.balanceAfter, balanceAfter)) &&
            (identical(other.cardholderFee, cardholderFee) ||
                const DeepCollectionEquality()
                    .equals(other.cardholderFee, cardholderFee)) &&
            (identical(other.transactionAmount, transactionAmount) ||
                const DeepCollectionEquality()
                    .equals(other.transactionAmount, transactionAmount)) &&
            (identical(other.transactionFee, transactionFee) ||
                const DeepCollectionEquality()
                    .equals(other.transactionFee, transactionFee)) &&
            (identical(other.transactionId, transactionId) ||
                const DeepCollectionEquality()
                    .equals(other.transactionId, transactionId)) &&
            (identical(other.entryState, entryState) ||
                const DeepCollectionEquality()
                    .equals(other.entryState, entryState)) &&
            (identical(other.processedTimestamp, processedTimestamp) ||
                const DeepCollectionEquality()
                    .equals(other.processedTimestamp, processedTimestamp)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(actualBalanceAdjustment) ^
      const DeepCollectionEquality().hash(actualBalanceAfter) ^
      const DeepCollectionEquality().hash(additionalFields) ^
      const DeepCollectionEquality().hash(availableBalanceAdjustment) ^
      const DeepCollectionEquality().hash(availableBalanceAfter) ^
      const DeepCollectionEquality().hash(balanceAfter) ^
      const DeepCollectionEquality().hash(cardholderFee) ^
      const DeepCollectionEquality().hash(transactionAmount) ^
      const DeepCollectionEquality().hash(transactionFee) ^
      const DeepCollectionEquality().hash(transactionId) ^
      const DeepCollectionEquality().hash(entryState) ^
      const DeepCollectionEquality().hash(processedTimestamp);

  @JsonKey(ignore: true)
  @override
  _$TransactionModelCopyWith<_TransactionModel> get copyWith =>
      __$TransactionModelCopyWithImpl<_TransactionModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TransactionModelToJson(this);
  }
}

abstract class _TransactionModel implements TransactionModel {
  const factory _TransactionModel(
      @JsonKey(name: 'actualBalanceAdjustment')
          ActualBalanceAdjustment? actualBalanceAdjustment,
      @JsonKey(name: 'actualBalanceAfter')
          ActualBalanceAfter? actualBalanceAfter,
      @JsonKey(name: 'additionalFields')
          AdditionalFields? additionalFields,
      @JsonKey(name: 'availableBalanceAdjustment')
          AvailableBalanceAdjustment? availableBalanceAdjustment,
      @JsonKey(name: 'availableBalanceAfter')
          AvailableBalanceAfter? availableBalanceAfter,
      @JsonKey(name: 'balanceAfter')
          BalanceAfter? balanceAfter,
      @JsonKey(name: 'cardholderFee')
          CardholderFee? cardholderFee,
      @JsonKey(name: 'transactionAmount')
          TransactionAmount? transactionAmount,
      @JsonKey(name: 'transactionFee')
          TransactionFee? transactionFee,
      @JsonKey(name: 'transactionId')
          TransactionId? transactionId,
      @JsonKey(name: 'entryState')
          String? entryState,
      @JsonKey(name: 'processedTimestamp')
          double? processedTimestamp) = _$_TransactionModel;

  factory _TransactionModel.fromJson(Map<String, dynamic> json) =
      _$_TransactionModel.fromJson;

  @override
  @JsonKey(name: 'actualBalanceAdjustment')
  ActualBalanceAdjustment? get actualBalanceAdjustment =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'actualBalanceAfter')
  ActualBalanceAfter? get actualBalanceAfter =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'additionalFields')
  AdditionalFields? get additionalFields => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'availableBalanceAdjustment')
  AvailableBalanceAdjustment? get availableBalanceAdjustment =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'availableBalanceAfter')
  AvailableBalanceAfter? get availableBalanceAfter =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'balanceAfter')
  BalanceAfter? get balanceAfter => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'cardholderFee')
  CardholderFee? get cardholderFee => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'transactionAmount')
  TransactionAmount? get transactionAmount =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'transactionFee')
  TransactionFee? get transactionFee => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'transactionId')
  TransactionId? get transactionId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'entryState')
  String? get entryState => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'processedTimestamp')
  double? get processedTimestamp => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TransactionModelCopyWith<_TransactionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

ActualBalanceAdjustment _$ActualBalanceAdjustmentFromJson(
    Map<String, dynamic> json) {
  return _ActualBalanceAdjustment.fromJson(json);
}

/// @nodoc
class _$ActualBalanceAdjustmentTearOff {
  const _$ActualBalanceAdjustmentTearOff();

  _ActualBalanceAdjustment call(double amount, String currency) {
    return _ActualBalanceAdjustment(
      amount,
      currency,
    );
  }

  ActualBalanceAdjustment fromJson(Map<String, Object> json) {
    return ActualBalanceAdjustment.fromJson(json);
  }
}

/// @nodoc
const $ActualBalanceAdjustment = _$ActualBalanceAdjustmentTearOff();

/// @nodoc
mixin _$ActualBalanceAdjustment {
  double get amount => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ActualBalanceAdjustmentCopyWith<ActualBalanceAdjustment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActualBalanceAdjustmentCopyWith<$Res> {
  factory $ActualBalanceAdjustmentCopyWith(ActualBalanceAdjustment value,
          $Res Function(ActualBalanceAdjustment) then) =
      _$ActualBalanceAdjustmentCopyWithImpl<$Res>;
  $Res call({double amount, String currency});
}

/// @nodoc
class _$ActualBalanceAdjustmentCopyWithImpl<$Res>
    implements $ActualBalanceAdjustmentCopyWith<$Res> {
  _$ActualBalanceAdjustmentCopyWithImpl(this._value, this._then);

  final ActualBalanceAdjustment _value;
  // ignore: unused_field
  final $Res Function(ActualBalanceAdjustment) _then;

  @override
  $Res call({
    Object? amount = freezed,
    Object? currency = freezed,
  }) {
    return _then(_value.copyWith(
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ActualBalanceAdjustmentCopyWith<$Res>
    implements $ActualBalanceAdjustmentCopyWith<$Res> {
  factory _$ActualBalanceAdjustmentCopyWith(_ActualBalanceAdjustment value,
          $Res Function(_ActualBalanceAdjustment) then) =
      __$ActualBalanceAdjustmentCopyWithImpl<$Res>;
  @override
  $Res call({double amount, String currency});
}

/// @nodoc
class __$ActualBalanceAdjustmentCopyWithImpl<$Res>
    extends _$ActualBalanceAdjustmentCopyWithImpl<$Res>
    implements _$ActualBalanceAdjustmentCopyWith<$Res> {
  __$ActualBalanceAdjustmentCopyWithImpl(_ActualBalanceAdjustment _value,
      $Res Function(_ActualBalanceAdjustment) _then)
      : super(_value, (v) => _then(v as _ActualBalanceAdjustment));

  @override
  _ActualBalanceAdjustment get _value =>
      super._value as _ActualBalanceAdjustment;

  @override
  $Res call({
    Object? amount = freezed,
    Object? currency = freezed,
  }) {
    return _then(_ActualBalanceAdjustment(
      amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ActualBalanceAdjustment implements _ActualBalanceAdjustment {
  const _$_ActualBalanceAdjustment(this.amount, this.currency);

  factory _$_ActualBalanceAdjustment.fromJson(Map<String, dynamic> json) =>
      _$$_ActualBalanceAdjustmentFromJson(json);

  @override
  final double amount;
  @override
  final String currency;

  @override
  String toString() {
    return 'ActualBalanceAdjustment(amount: $amount, currency: $currency)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ActualBalanceAdjustment &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.currency, currency) ||
                const DeepCollectionEquality()
                    .equals(other.currency, currency)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(currency);

  @JsonKey(ignore: true)
  @override
  _$ActualBalanceAdjustmentCopyWith<_ActualBalanceAdjustment> get copyWith =>
      __$ActualBalanceAdjustmentCopyWithImpl<_ActualBalanceAdjustment>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ActualBalanceAdjustmentToJson(this);
  }
}

abstract class _ActualBalanceAdjustment implements ActualBalanceAdjustment {
  const factory _ActualBalanceAdjustment(double amount, String currency) =
      _$_ActualBalanceAdjustment;

  factory _ActualBalanceAdjustment.fromJson(Map<String, dynamic> json) =
      _$_ActualBalanceAdjustment.fromJson;

  @override
  double get amount => throw _privateConstructorUsedError;
  @override
  String get currency => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ActualBalanceAdjustmentCopyWith<_ActualBalanceAdjustment> get copyWith =>
      throw _privateConstructorUsedError;
}

ActualBalanceAfter _$ActualBalanceAfterFromJson(Map<String, dynamic> json) {
  return _ActualBalanceAfter.fromJson(json);
}

/// @nodoc
class _$ActualBalanceAfterTearOff {
  const _$ActualBalanceAfterTearOff();

  _ActualBalanceAfter call(double amount, String currency) {
    return _ActualBalanceAfter(
      amount,
      currency,
    );
  }

  ActualBalanceAfter fromJson(Map<String, Object> json) {
    return ActualBalanceAfter.fromJson(json);
  }
}

/// @nodoc
const $ActualBalanceAfter = _$ActualBalanceAfterTearOff();

/// @nodoc
mixin _$ActualBalanceAfter {
  double get amount => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ActualBalanceAfterCopyWith<ActualBalanceAfter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActualBalanceAfterCopyWith<$Res> {
  factory $ActualBalanceAfterCopyWith(
          ActualBalanceAfter value, $Res Function(ActualBalanceAfter) then) =
      _$ActualBalanceAfterCopyWithImpl<$Res>;
  $Res call({double amount, String currency});
}

/// @nodoc
class _$ActualBalanceAfterCopyWithImpl<$Res>
    implements $ActualBalanceAfterCopyWith<$Res> {
  _$ActualBalanceAfterCopyWithImpl(this._value, this._then);

  final ActualBalanceAfter _value;
  // ignore: unused_field
  final $Res Function(ActualBalanceAfter) _then;

  @override
  $Res call({
    Object? amount = freezed,
    Object? currency = freezed,
  }) {
    return _then(_value.copyWith(
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ActualBalanceAfterCopyWith<$Res>
    implements $ActualBalanceAfterCopyWith<$Res> {
  factory _$ActualBalanceAfterCopyWith(
          _ActualBalanceAfter value, $Res Function(_ActualBalanceAfter) then) =
      __$ActualBalanceAfterCopyWithImpl<$Res>;
  @override
  $Res call({double amount, String currency});
}

/// @nodoc
class __$ActualBalanceAfterCopyWithImpl<$Res>
    extends _$ActualBalanceAfterCopyWithImpl<$Res>
    implements _$ActualBalanceAfterCopyWith<$Res> {
  __$ActualBalanceAfterCopyWithImpl(
      _ActualBalanceAfter _value, $Res Function(_ActualBalanceAfter) _then)
      : super(_value, (v) => _then(v as _ActualBalanceAfter));

  @override
  _ActualBalanceAfter get _value => super._value as _ActualBalanceAfter;

  @override
  $Res call({
    Object? amount = freezed,
    Object? currency = freezed,
  }) {
    return _then(_ActualBalanceAfter(
      amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ActualBalanceAfter implements _ActualBalanceAfter {
  const _$_ActualBalanceAfter(this.amount, this.currency);

  factory _$_ActualBalanceAfter.fromJson(Map<String, dynamic> json) =>
      _$$_ActualBalanceAfterFromJson(json);

  @override
  final double amount;
  @override
  final String currency;

  @override
  String toString() {
    return 'ActualBalanceAfter(amount: $amount, currency: $currency)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ActualBalanceAfter &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.currency, currency) ||
                const DeepCollectionEquality()
                    .equals(other.currency, currency)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(currency);

  @JsonKey(ignore: true)
  @override
  _$ActualBalanceAfterCopyWith<_ActualBalanceAfter> get copyWith =>
      __$ActualBalanceAfterCopyWithImpl<_ActualBalanceAfter>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ActualBalanceAfterToJson(this);
  }
}

abstract class _ActualBalanceAfter implements ActualBalanceAfter {
  const factory _ActualBalanceAfter(double amount, String currency) =
      _$_ActualBalanceAfter;

  factory _ActualBalanceAfter.fromJson(Map<String, dynamic> json) =
      _$_ActualBalanceAfter.fromJson;

  @override
  double get amount => throw _privateConstructorUsedError;
  @override
  String get currency => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ActualBalanceAfterCopyWith<_ActualBalanceAfter> get copyWith =>
      throw _privateConstructorUsedError;
}

AvailableBalanceAdjustment _$AvailableBalanceAdjustmentFromJson(
    Map<String, dynamic> json) {
  return _AvailableBalanceAdjustment.fromJson(json);
}

/// @nodoc
class _$AvailableBalanceAdjustmentTearOff {
  const _$AvailableBalanceAdjustmentTearOff();

  _AvailableBalanceAdjustment call(double amount, String currency) {
    return _AvailableBalanceAdjustment(
      amount,
      currency,
    );
  }

  AvailableBalanceAdjustment fromJson(Map<String, Object> json) {
    return AvailableBalanceAdjustment.fromJson(json);
  }
}

/// @nodoc
const $AvailableBalanceAdjustment = _$AvailableBalanceAdjustmentTearOff();

/// @nodoc
mixin _$AvailableBalanceAdjustment {
  double get amount => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AvailableBalanceAdjustmentCopyWith<AvailableBalanceAdjustment>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AvailableBalanceAdjustmentCopyWith<$Res> {
  factory $AvailableBalanceAdjustmentCopyWith(AvailableBalanceAdjustment value,
          $Res Function(AvailableBalanceAdjustment) then) =
      _$AvailableBalanceAdjustmentCopyWithImpl<$Res>;
  $Res call({double amount, String currency});
}

/// @nodoc
class _$AvailableBalanceAdjustmentCopyWithImpl<$Res>
    implements $AvailableBalanceAdjustmentCopyWith<$Res> {
  _$AvailableBalanceAdjustmentCopyWithImpl(this._value, this._then);

  final AvailableBalanceAdjustment _value;
  // ignore: unused_field
  final $Res Function(AvailableBalanceAdjustment) _then;

  @override
  $Res call({
    Object? amount = freezed,
    Object? currency = freezed,
  }) {
    return _then(_value.copyWith(
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$AvailableBalanceAdjustmentCopyWith<$Res>
    implements $AvailableBalanceAdjustmentCopyWith<$Res> {
  factory _$AvailableBalanceAdjustmentCopyWith(
          _AvailableBalanceAdjustment value,
          $Res Function(_AvailableBalanceAdjustment) then) =
      __$AvailableBalanceAdjustmentCopyWithImpl<$Res>;
  @override
  $Res call({double amount, String currency});
}

/// @nodoc
class __$AvailableBalanceAdjustmentCopyWithImpl<$Res>
    extends _$AvailableBalanceAdjustmentCopyWithImpl<$Res>
    implements _$AvailableBalanceAdjustmentCopyWith<$Res> {
  __$AvailableBalanceAdjustmentCopyWithImpl(_AvailableBalanceAdjustment _value,
      $Res Function(_AvailableBalanceAdjustment) _then)
      : super(_value, (v) => _then(v as _AvailableBalanceAdjustment));

  @override
  _AvailableBalanceAdjustment get _value =>
      super._value as _AvailableBalanceAdjustment;

  @override
  $Res call({
    Object? amount = freezed,
    Object? currency = freezed,
  }) {
    return _then(_AvailableBalanceAdjustment(
      amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AvailableBalanceAdjustment implements _AvailableBalanceAdjustment {
  const _$_AvailableBalanceAdjustment(this.amount, this.currency);

  factory _$_AvailableBalanceAdjustment.fromJson(Map<String, dynamic> json) =>
      _$$_AvailableBalanceAdjustmentFromJson(json);

  @override
  final double amount;
  @override
  final String currency;

  @override
  String toString() {
    return 'AvailableBalanceAdjustment(amount: $amount, currency: $currency)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AvailableBalanceAdjustment &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.currency, currency) ||
                const DeepCollectionEquality()
                    .equals(other.currency, currency)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(currency);

  @JsonKey(ignore: true)
  @override
  _$AvailableBalanceAdjustmentCopyWith<_AvailableBalanceAdjustment>
      get copyWith => __$AvailableBalanceAdjustmentCopyWithImpl<
          _AvailableBalanceAdjustment>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AvailableBalanceAdjustmentToJson(this);
  }
}

abstract class _AvailableBalanceAdjustment
    implements AvailableBalanceAdjustment {
  const factory _AvailableBalanceAdjustment(double amount, String currency) =
      _$_AvailableBalanceAdjustment;

  factory _AvailableBalanceAdjustment.fromJson(Map<String, dynamic> json) =
      _$_AvailableBalanceAdjustment.fromJson;

  @override
  double get amount => throw _privateConstructorUsedError;
  @override
  String get currency => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AvailableBalanceAdjustmentCopyWith<_AvailableBalanceAdjustment>
      get copyWith => throw _privateConstructorUsedError;
}

AvailableBalanceAfter _$AvailableBalanceAfterFromJson(
    Map<String, dynamic> json) {
  return _AvailableBalanceAfter.fromJson(json);
}

/// @nodoc
class _$AvailableBalanceAfterTearOff {
  const _$AvailableBalanceAfterTearOff();

  _AvailableBalanceAfter call(double amount, String currency) {
    return _AvailableBalanceAfter(
      amount,
      currency,
    );
  }

  AvailableBalanceAfter fromJson(Map<String, Object> json) {
    return AvailableBalanceAfter.fromJson(json);
  }
}

/// @nodoc
const $AvailableBalanceAfter = _$AvailableBalanceAfterTearOff();

/// @nodoc
mixin _$AvailableBalanceAfter {
  double get amount => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AvailableBalanceAfterCopyWith<AvailableBalanceAfter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AvailableBalanceAfterCopyWith<$Res> {
  factory $AvailableBalanceAfterCopyWith(AvailableBalanceAfter value,
          $Res Function(AvailableBalanceAfter) then) =
      _$AvailableBalanceAfterCopyWithImpl<$Res>;
  $Res call({double amount, String currency});
}

/// @nodoc
class _$AvailableBalanceAfterCopyWithImpl<$Res>
    implements $AvailableBalanceAfterCopyWith<$Res> {
  _$AvailableBalanceAfterCopyWithImpl(this._value, this._then);

  final AvailableBalanceAfter _value;
  // ignore: unused_field
  final $Res Function(AvailableBalanceAfter) _then;

  @override
  $Res call({
    Object? amount = freezed,
    Object? currency = freezed,
  }) {
    return _then(_value.copyWith(
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$AvailableBalanceAfterCopyWith<$Res>
    implements $AvailableBalanceAfterCopyWith<$Res> {
  factory _$AvailableBalanceAfterCopyWith(_AvailableBalanceAfter value,
          $Res Function(_AvailableBalanceAfter) then) =
      __$AvailableBalanceAfterCopyWithImpl<$Res>;
  @override
  $Res call({double amount, String currency});
}

/// @nodoc
class __$AvailableBalanceAfterCopyWithImpl<$Res>
    extends _$AvailableBalanceAfterCopyWithImpl<$Res>
    implements _$AvailableBalanceAfterCopyWith<$Res> {
  __$AvailableBalanceAfterCopyWithImpl(_AvailableBalanceAfter _value,
      $Res Function(_AvailableBalanceAfter) _then)
      : super(_value, (v) => _then(v as _AvailableBalanceAfter));

  @override
  _AvailableBalanceAfter get _value => super._value as _AvailableBalanceAfter;

  @override
  $Res call({
    Object? amount = freezed,
    Object? currency = freezed,
  }) {
    return _then(_AvailableBalanceAfter(
      amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AvailableBalanceAfter implements _AvailableBalanceAfter {
  const _$_AvailableBalanceAfter(this.amount, this.currency);

  factory _$_AvailableBalanceAfter.fromJson(Map<String, dynamic> json) =>
      _$$_AvailableBalanceAfterFromJson(json);

  @override
  final double amount;
  @override
  final String currency;

  @override
  String toString() {
    return 'AvailableBalanceAfter(amount: $amount, currency: $currency)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AvailableBalanceAfter &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.currency, currency) ||
                const DeepCollectionEquality()
                    .equals(other.currency, currency)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(currency);

  @JsonKey(ignore: true)
  @override
  _$AvailableBalanceAfterCopyWith<_AvailableBalanceAfter> get copyWith =>
      __$AvailableBalanceAfterCopyWithImpl<_AvailableBalanceAfter>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AvailableBalanceAfterToJson(this);
  }
}

abstract class _AvailableBalanceAfter implements AvailableBalanceAfter {
  const factory _AvailableBalanceAfter(double amount, String currency) =
      _$_AvailableBalanceAfter;

  factory _AvailableBalanceAfter.fromJson(Map<String, dynamic> json) =
      _$_AvailableBalanceAfter.fromJson;

  @override
  double get amount => throw _privateConstructorUsedError;
  @override
  String get currency => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AvailableBalanceAfterCopyWith<_AvailableBalanceAfter> get copyWith =>
      throw _privateConstructorUsedError;
}

BalanceAfter _$BalanceAfterFromJson(Map<String, dynamic> json) {
  return _BalanceAfter.fromJson(json);
}

/// @nodoc
class _$BalanceAfterTearOff {
  const _$BalanceAfterTearOff();

  _BalanceAfter call(double amount, String currency) {
    return _BalanceAfter(
      amount,
      currency,
    );
  }

  BalanceAfter fromJson(Map<String, Object> json) {
    return BalanceAfter.fromJson(json);
  }
}

/// @nodoc
const $BalanceAfter = _$BalanceAfterTearOff();

/// @nodoc
mixin _$BalanceAfter {
  double get amount => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BalanceAfterCopyWith<BalanceAfter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BalanceAfterCopyWith<$Res> {
  factory $BalanceAfterCopyWith(
          BalanceAfter value, $Res Function(BalanceAfter) then) =
      _$BalanceAfterCopyWithImpl<$Res>;
  $Res call({double amount, String currency});
}

/// @nodoc
class _$BalanceAfterCopyWithImpl<$Res> implements $BalanceAfterCopyWith<$Res> {
  _$BalanceAfterCopyWithImpl(this._value, this._then);

  final BalanceAfter _value;
  // ignore: unused_field
  final $Res Function(BalanceAfter) _then;

  @override
  $Res call({
    Object? amount = freezed,
    Object? currency = freezed,
  }) {
    return _then(_value.copyWith(
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$BalanceAfterCopyWith<$Res>
    implements $BalanceAfterCopyWith<$Res> {
  factory _$BalanceAfterCopyWith(
          _BalanceAfter value, $Res Function(_BalanceAfter) then) =
      __$BalanceAfterCopyWithImpl<$Res>;
  @override
  $Res call({double amount, String currency});
}

/// @nodoc
class __$BalanceAfterCopyWithImpl<$Res> extends _$BalanceAfterCopyWithImpl<$Res>
    implements _$BalanceAfterCopyWith<$Res> {
  __$BalanceAfterCopyWithImpl(
      _BalanceAfter _value, $Res Function(_BalanceAfter) _then)
      : super(_value, (v) => _then(v as _BalanceAfter));

  @override
  _BalanceAfter get _value => super._value as _BalanceAfter;

  @override
  $Res call({
    Object? amount = freezed,
    Object? currency = freezed,
  }) {
    return _then(_BalanceAfter(
      amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BalanceAfter implements _BalanceAfter {
  const _$_BalanceAfter(this.amount, this.currency);

  factory _$_BalanceAfter.fromJson(Map<String, dynamic> json) =>
      _$$_BalanceAfterFromJson(json);

  @override
  final double amount;
  @override
  final String currency;

  @override
  String toString() {
    return 'BalanceAfter(amount: $amount, currency: $currency)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BalanceAfter &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.currency, currency) ||
                const DeepCollectionEquality()
                    .equals(other.currency, currency)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(currency);

  @JsonKey(ignore: true)
  @override
  _$BalanceAfterCopyWith<_BalanceAfter> get copyWith =>
      __$BalanceAfterCopyWithImpl<_BalanceAfter>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BalanceAfterToJson(this);
  }
}

abstract class _BalanceAfter implements BalanceAfter {
  const factory _BalanceAfter(double amount, String currency) = _$_BalanceAfter;

  factory _BalanceAfter.fromJson(Map<String, dynamic> json) =
      _$_BalanceAfter.fromJson;

  @override
  double get amount => throw _privateConstructorUsedError;
  @override
  String get currency => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BalanceAfterCopyWith<_BalanceAfter> get copyWith =>
      throw _privateConstructorUsedError;
}

CardholderFee _$CardholderFeeFromJson(Map<String, dynamic> json) {
  return _CardholderFee.fromJson(json);
}

/// @nodoc
class _$CardholderFeeTearOff {
  const _$CardholderFeeTearOff();

  _CardholderFee call(double amount, String currency) {
    return _CardholderFee(
      amount,
      currency,
    );
  }

  CardholderFee fromJson(Map<String, Object> json) {
    return CardholderFee.fromJson(json);
  }
}

/// @nodoc
const $CardholderFee = _$CardholderFeeTearOff();

/// @nodoc
mixin _$CardholderFee {
  double get amount => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CardholderFeeCopyWith<CardholderFee> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardholderFeeCopyWith<$Res> {
  factory $CardholderFeeCopyWith(
          CardholderFee value, $Res Function(CardholderFee) then) =
      _$CardholderFeeCopyWithImpl<$Res>;
  $Res call({double amount, String currency});
}

/// @nodoc
class _$CardholderFeeCopyWithImpl<$Res>
    implements $CardholderFeeCopyWith<$Res> {
  _$CardholderFeeCopyWithImpl(this._value, this._then);

  final CardholderFee _value;
  // ignore: unused_field
  final $Res Function(CardholderFee) _then;

  @override
  $Res call({
    Object? amount = freezed,
    Object? currency = freezed,
  }) {
    return _then(_value.copyWith(
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$CardholderFeeCopyWith<$Res>
    implements $CardholderFeeCopyWith<$Res> {
  factory _$CardholderFeeCopyWith(
          _CardholderFee value, $Res Function(_CardholderFee) then) =
      __$CardholderFeeCopyWithImpl<$Res>;
  @override
  $Res call({double amount, String currency});
}

/// @nodoc
class __$CardholderFeeCopyWithImpl<$Res>
    extends _$CardholderFeeCopyWithImpl<$Res>
    implements _$CardholderFeeCopyWith<$Res> {
  __$CardholderFeeCopyWithImpl(
      _CardholderFee _value, $Res Function(_CardholderFee) _then)
      : super(_value, (v) => _then(v as _CardholderFee));

  @override
  _CardholderFee get _value => super._value as _CardholderFee;

  @override
  $Res call({
    Object? amount = freezed,
    Object? currency = freezed,
  }) {
    return _then(_CardholderFee(
      amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CardholderFee implements _CardholderFee {
  const _$_CardholderFee(this.amount, this.currency);

  factory _$_CardholderFee.fromJson(Map<String, dynamic> json) =>
      _$$_CardholderFeeFromJson(json);

  @override
  final double amount;
  @override
  final String currency;

  @override
  String toString() {
    return 'CardholderFee(amount: $amount, currency: $currency)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CardholderFee &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.currency, currency) ||
                const DeepCollectionEquality()
                    .equals(other.currency, currency)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(currency);

  @JsonKey(ignore: true)
  @override
  _$CardholderFeeCopyWith<_CardholderFee> get copyWith =>
      __$CardholderFeeCopyWithImpl<_CardholderFee>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CardholderFeeToJson(this);
  }
}

abstract class _CardholderFee implements CardholderFee {
  const factory _CardholderFee(double amount, String currency) =
      _$_CardholderFee;

  factory _CardholderFee.fromJson(Map<String, dynamic> json) =
      _$_CardholderFee.fromJson;

  @override
  double get amount => throw _privateConstructorUsedError;
  @override
  String get currency => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CardholderFeeCopyWith<_CardholderFee> get copyWith =>
      throw _privateConstructorUsedError;
}

TransactionAmount _$TransactionAmountFromJson(Map<String, dynamic> json) {
  return _TransactionAmount.fromJson(json);
}

/// @nodoc
class _$TransactionAmountTearOff {
  const _$TransactionAmountTearOff();

  _TransactionAmount call(double amount, String currency) {
    return _TransactionAmount(
      amount,
      currency,
    );
  }

  TransactionAmount fromJson(Map<String, Object> json) {
    return TransactionAmount.fromJson(json);
  }
}

/// @nodoc
const $TransactionAmount = _$TransactionAmountTearOff();

/// @nodoc
mixin _$TransactionAmount {
  double get amount => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionAmountCopyWith<TransactionAmount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionAmountCopyWith<$Res> {
  factory $TransactionAmountCopyWith(
          TransactionAmount value, $Res Function(TransactionAmount) then) =
      _$TransactionAmountCopyWithImpl<$Res>;
  $Res call({double amount, String currency});
}

/// @nodoc
class _$TransactionAmountCopyWithImpl<$Res>
    implements $TransactionAmountCopyWith<$Res> {
  _$TransactionAmountCopyWithImpl(this._value, this._then);

  final TransactionAmount _value;
  // ignore: unused_field
  final $Res Function(TransactionAmount) _then;

  @override
  $Res call({
    Object? amount = freezed,
    Object? currency = freezed,
  }) {
    return _then(_value.copyWith(
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$TransactionAmountCopyWith<$Res>
    implements $TransactionAmountCopyWith<$Res> {
  factory _$TransactionAmountCopyWith(
          _TransactionAmount value, $Res Function(_TransactionAmount) then) =
      __$TransactionAmountCopyWithImpl<$Res>;
  @override
  $Res call({double amount, String currency});
}

/// @nodoc
class __$TransactionAmountCopyWithImpl<$Res>
    extends _$TransactionAmountCopyWithImpl<$Res>
    implements _$TransactionAmountCopyWith<$Res> {
  __$TransactionAmountCopyWithImpl(
      _TransactionAmount _value, $Res Function(_TransactionAmount) _then)
      : super(_value, (v) => _then(v as _TransactionAmount));

  @override
  _TransactionAmount get _value => super._value as _TransactionAmount;

  @override
  $Res call({
    Object? amount = freezed,
    Object? currency = freezed,
  }) {
    return _then(_TransactionAmount(
      amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TransactionAmount implements _TransactionAmount {
  const _$_TransactionAmount(this.amount, this.currency);

  factory _$_TransactionAmount.fromJson(Map<String, dynamic> json) =>
      _$$_TransactionAmountFromJson(json);

  @override
  final double amount;
  @override
  final String currency;

  @override
  String toString() {
    return 'TransactionAmount(amount: $amount, currency: $currency)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TransactionAmount &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.currency, currency) ||
                const DeepCollectionEquality()
                    .equals(other.currency, currency)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(currency);

  @JsonKey(ignore: true)
  @override
  _$TransactionAmountCopyWith<_TransactionAmount> get copyWith =>
      __$TransactionAmountCopyWithImpl<_TransactionAmount>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TransactionAmountToJson(this);
  }
}

abstract class _TransactionAmount implements TransactionAmount {
  const factory _TransactionAmount(double amount, String currency) =
      _$_TransactionAmount;

  factory _TransactionAmount.fromJson(Map<String, dynamic> json) =
      _$_TransactionAmount.fromJson;

  @override
  double get amount => throw _privateConstructorUsedError;
  @override
  String get currency => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TransactionAmountCopyWith<_TransactionAmount> get copyWith =>
      throw _privateConstructorUsedError;
}

TransactionFee _$TransactionFeeFromJson(Map<String, dynamic> json) {
  return _TransactionFee.fromJson(json);
}

/// @nodoc
class _$TransactionFeeTearOff {
  const _$TransactionFeeTearOff();

  _TransactionFee call(double amount, String currency) {
    return _TransactionFee(
      amount,
      currency,
    );
  }

  TransactionFee fromJson(Map<String, Object> json) {
    return TransactionFee.fromJson(json);
  }
}

/// @nodoc
const $TransactionFee = _$TransactionFeeTearOff();

/// @nodoc
mixin _$TransactionFee {
  double get amount => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionFeeCopyWith<TransactionFee> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionFeeCopyWith<$Res> {
  factory $TransactionFeeCopyWith(
          TransactionFee value, $Res Function(TransactionFee) then) =
      _$TransactionFeeCopyWithImpl<$Res>;
  $Res call({double amount, String currency});
}

/// @nodoc
class _$TransactionFeeCopyWithImpl<$Res>
    implements $TransactionFeeCopyWith<$Res> {
  _$TransactionFeeCopyWithImpl(this._value, this._then);

  final TransactionFee _value;
  // ignore: unused_field
  final $Res Function(TransactionFee) _then;

  @override
  $Res call({
    Object? amount = freezed,
    Object? currency = freezed,
  }) {
    return _then(_value.copyWith(
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$TransactionFeeCopyWith<$Res>
    implements $TransactionFeeCopyWith<$Res> {
  factory _$TransactionFeeCopyWith(
          _TransactionFee value, $Res Function(_TransactionFee) then) =
      __$TransactionFeeCopyWithImpl<$Res>;
  @override
  $Res call({double amount, String currency});
}

/// @nodoc
class __$TransactionFeeCopyWithImpl<$Res>
    extends _$TransactionFeeCopyWithImpl<$Res>
    implements _$TransactionFeeCopyWith<$Res> {
  __$TransactionFeeCopyWithImpl(
      _TransactionFee _value, $Res Function(_TransactionFee) _then)
      : super(_value, (v) => _then(v as _TransactionFee));

  @override
  _TransactionFee get _value => super._value as _TransactionFee;

  @override
  $Res call({
    Object? amount = freezed,
    Object? currency = freezed,
  }) {
    return _then(_TransactionFee(
      amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TransactionFee implements _TransactionFee {
  const _$_TransactionFee(this.amount, this.currency);

  factory _$_TransactionFee.fromJson(Map<String, dynamic> json) =>
      _$$_TransactionFeeFromJson(json);

  @override
  final double amount;
  @override
  final String currency;

  @override
  String toString() {
    return 'TransactionFee(amount: $amount, currency: $currency)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TransactionFee &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.currency, currency) ||
                const DeepCollectionEquality()
                    .equals(other.currency, currency)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(currency);

  @JsonKey(ignore: true)
  @override
  _$TransactionFeeCopyWith<_TransactionFee> get copyWith =>
      __$TransactionFeeCopyWithImpl<_TransactionFee>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TransactionFeeToJson(this);
  }
}

abstract class _TransactionFee implements TransactionFee {
  const factory _TransactionFee(double amount, String currency) =
      _$_TransactionFee;

  factory _TransactionFee.fromJson(Map<String, dynamic> json) =
      _$_TransactionFee.fromJson;

  @override
  double get amount => throw _privateConstructorUsedError;
  @override
  String get currency => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TransactionFeeCopyWith<_TransactionFee> get copyWith =>
      throw _privateConstructorUsedError;
}

TransactionId _$TransactionIdFromJson(Map<String, dynamic> json) {
  return _TransactionId.fromJson(json);
}

/// @nodoc
class _$TransactionIdTearOff {
  const _$TransactionIdTearOff();

  _TransactionId call(String id, String type) {
    return _TransactionId(
      id,
      type,
    );
  }

  TransactionId fromJson(Map<String, Object> json) {
    return TransactionId.fromJson(json);
  }
}

/// @nodoc
const $TransactionId = _$TransactionIdTearOff();

/// @nodoc
mixin _$TransactionId {
  String get id => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionIdCopyWith<TransactionId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionIdCopyWith<$Res> {
  factory $TransactionIdCopyWith(
          TransactionId value, $Res Function(TransactionId) then) =
      _$TransactionIdCopyWithImpl<$Res>;
  $Res call({String id, String type});
}

/// @nodoc
class _$TransactionIdCopyWithImpl<$Res>
    implements $TransactionIdCopyWith<$Res> {
  _$TransactionIdCopyWithImpl(this._value, this._then);

  final TransactionId _value;
  // ignore: unused_field
  final $Res Function(TransactionId) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$TransactionIdCopyWith<$Res>
    implements $TransactionIdCopyWith<$Res> {
  factory _$TransactionIdCopyWith(
          _TransactionId value, $Res Function(_TransactionId) then) =
      __$TransactionIdCopyWithImpl<$Res>;
  @override
  $Res call({String id, String type});
}

/// @nodoc
class __$TransactionIdCopyWithImpl<$Res>
    extends _$TransactionIdCopyWithImpl<$Res>
    implements _$TransactionIdCopyWith<$Res> {
  __$TransactionIdCopyWithImpl(
      _TransactionId _value, $Res Function(_TransactionId) _then)
      : super(_value, (v) => _then(v as _TransactionId));

  @override
  _TransactionId get _value => super._value as _TransactionId;

  @override
  $Res call({
    Object? id = freezed,
    Object? type = freezed,
  }) {
    return _then(_TransactionId(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TransactionId implements _TransactionId {
  const _$_TransactionId(this.id, this.type);

  factory _$_TransactionId.fromJson(Map<String, dynamic> json) =>
      _$$_TransactionIdFromJson(json);

  @override
  final String id;
  @override
  final String type;

  @override
  String toString() {
    return 'TransactionId(id: $id, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TransactionId &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(type);

  @JsonKey(ignore: true)
  @override
  _$TransactionIdCopyWith<_TransactionId> get copyWith =>
      __$TransactionIdCopyWithImpl<_TransactionId>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TransactionIdToJson(this);
  }
}

abstract class _TransactionId implements TransactionId {
  const factory _TransactionId(String id, String type) = _$_TransactionId;

  factory _TransactionId.fromJson(Map<String, dynamic> json) =
      _$_TransactionId.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get type => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TransactionIdCopyWith<_TransactionId> get copyWith =>
      throw _privateConstructorUsedError;
}

AdditionalFields _$AdditionalFieldsFromJson(Map<String, dynamic> json) {
  return _AdditionalFields.fromJson(json);
}

/// @nodoc
class _$AdditionalFieldsTearOff {
  const _$AdditionalFieldsTearOff();

  _AdditionalFields call(
      String? sender,
      String? senderIban,
      String? senderReference,
      String? destinationInstrumentType,
      String? destinationInstrumentFriendlyName,
      String? destinationInstrumentId,
      String? beneficiaryName,
      String? beneficiaryAccount,
      String? beneficiaryBankCode,
      String? merchantName,
      String? merchantCategoryCode,
      String? merchantTerminalCountry,
      String? sourceInstrumentType,
      String? sourceInstrumentId,
      String? forexPaddingCurrency,
      String? forexPaddingAmount,
      String? note,
      String? sourceInstrumentFriendlyName,
      String? sourceIdentityType,
      String? sourceIdentityId,
      String? sourceIdentityName,
      String? exchangeRate,
      String? authorisationState,
      String? authorisationRelatedId,
      String? settlementRelatedId,
      String? chargeFeeType,
      String? relatedTransactionId,
      String? relatedTransactionIdType,
      String? merchantId,
      String? merchantTransactionType,
      String? systemTransactionType,
      String? authorisationCode,
      String? relatedCardId,
      String? forexFeeCurrency,
      String? forexFeeAmount,
      String? mandateId,
      String? merchantReference) {
    return _AdditionalFields(
      sender,
      senderIban,
      senderReference,
      destinationInstrumentType,
      destinationInstrumentFriendlyName,
      destinationInstrumentId,
      beneficiaryName,
      beneficiaryAccount,
      beneficiaryBankCode,
      merchantName,
      merchantCategoryCode,
      merchantTerminalCountry,
      sourceInstrumentType,
      sourceInstrumentId,
      forexPaddingCurrency,
      forexPaddingAmount,
      note,
      sourceInstrumentFriendlyName,
      sourceIdentityType,
      sourceIdentityId,
      sourceIdentityName,
      exchangeRate,
      authorisationState,
      authorisationRelatedId,
      settlementRelatedId,
      chargeFeeType,
      relatedTransactionId,
      relatedTransactionIdType,
      merchantId,
      merchantTransactionType,
      systemTransactionType,
      authorisationCode,
      relatedCardId,
      forexFeeCurrency,
      forexFeeAmount,
      mandateId,
      merchantReference,
    );
  }

  AdditionalFields fromJson(Map<String, Object> json) {
    return AdditionalFields.fromJson(json);
  }
}

/// @nodoc
const $AdditionalFields = _$AdditionalFieldsTearOff();

/// @nodoc
mixin _$AdditionalFields {
  String? get sender => throw _privateConstructorUsedError;
  String? get senderIban => throw _privateConstructorUsedError;
  String? get senderReference => throw _privateConstructorUsedError;
  String? get destinationInstrumentType => throw _privateConstructorUsedError;
  String? get destinationInstrumentFriendlyName =>
      throw _privateConstructorUsedError;
  String? get destinationInstrumentId => throw _privateConstructorUsedError;
  String? get beneficiaryName => throw _privateConstructorUsedError;
  String? get beneficiaryAccount => throw _privateConstructorUsedError;
  String? get beneficiaryBankCode => throw _privateConstructorUsedError;
  String? get merchantName => throw _privateConstructorUsedError;
  String? get merchantCategoryCode => throw _privateConstructorUsedError;
  String? get merchantTerminalCountry => throw _privateConstructorUsedError;
  String? get sourceInstrumentType => throw _privateConstructorUsedError;
  String? get sourceInstrumentId => throw _privateConstructorUsedError;
  String? get forexPaddingCurrency => throw _privateConstructorUsedError;
  String? get forexPaddingAmount => throw _privateConstructorUsedError;
  String? get note => throw _privateConstructorUsedError;
  String? get sourceInstrumentFriendlyName =>
      throw _privateConstructorUsedError;
  String? get sourceIdentityType => throw _privateConstructorUsedError;
  String? get sourceIdentityId => throw _privateConstructorUsedError;
  String? get sourceIdentityName => throw _privateConstructorUsedError;
  String? get exchangeRate => throw _privateConstructorUsedError;
  String? get authorisationState => throw _privateConstructorUsedError;
  String? get authorisationRelatedId => throw _privateConstructorUsedError;
  String? get settlementRelatedId => throw _privateConstructorUsedError;
  String? get chargeFeeType => throw _privateConstructorUsedError;
  String? get relatedTransactionId => throw _privateConstructorUsedError;
  String? get relatedTransactionIdType => throw _privateConstructorUsedError;
  String? get merchantId => throw _privateConstructorUsedError;
  String? get merchantTransactionType => throw _privateConstructorUsedError;
  String? get systemTransactionType => throw _privateConstructorUsedError;
  String? get authorisationCode => throw _privateConstructorUsedError;
  String? get relatedCardId => throw _privateConstructorUsedError;
  String? get forexFeeCurrency => throw _privateConstructorUsedError;
  String? get forexFeeAmount => throw _privateConstructorUsedError;
  String? get mandateId => throw _privateConstructorUsedError;
  String? get merchantReference => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AdditionalFieldsCopyWith<AdditionalFields> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdditionalFieldsCopyWith<$Res> {
  factory $AdditionalFieldsCopyWith(
          AdditionalFields value, $Res Function(AdditionalFields) then) =
      _$AdditionalFieldsCopyWithImpl<$Res>;
  $Res call(
      {String? sender,
      String? senderIban,
      String? senderReference,
      String? destinationInstrumentType,
      String? destinationInstrumentFriendlyName,
      String? destinationInstrumentId,
      String? beneficiaryName,
      String? beneficiaryAccount,
      String? beneficiaryBankCode,
      String? merchantName,
      String? merchantCategoryCode,
      String? merchantTerminalCountry,
      String? sourceInstrumentType,
      String? sourceInstrumentId,
      String? forexPaddingCurrency,
      String? forexPaddingAmount,
      String? note,
      String? sourceInstrumentFriendlyName,
      String? sourceIdentityType,
      String? sourceIdentityId,
      String? sourceIdentityName,
      String? exchangeRate,
      String? authorisationState,
      String? authorisationRelatedId,
      String? settlementRelatedId,
      String? chargeFeeType,
      String? relatedTransactionId,
      String? relatedTransactionIdType,
      String? merchantId,
      String? merchantTransactionType,
      String? systemTransactionType,
      String? authorisationCode,
      String? relatedCardId,
      String? forexFeeCurrency,
      String? forexFeeAmount,
      String? mandateId,
      String? merchantReference});
}

/// @nodoc
class _$AdditionalFieldsCopyWithImpl<$Res>
    implements $AdditionalFieldsCopyWith<$Res> {
  _$AdditionalFieldsCopyWithImpl(this._value, this._then);

  final AdditionalFields _value;
  // ignore: unused_field
  final $Res Function(AdditionalFields) _then;

  @override
  $Res call({
    Object? sender = freezed,
    Object? senderIban = freezed,
    Object? senderReference = freezed,
    Object? destinationInstrumentType = freezed,
    Object? destinationInstrumentFriendlyName = freezed,
    Object? destinationInstrumentId = freezed,
    Object? beneficiaryName = freezed,
    Object? beneficiaryAccount = freezed,
    Object? beneficiaryBankCode = freezed,
    Object? merchantName = freezed,
    Object? merchantCategoryCode = freezed,
    Object? merchantTerminalCountry = freezed,
    Object? sourceInstrumentType = freezed,
    Object? sourceInstrumentId = freezed,
    Object? forexPaddingCurrency = freezed,
    Object? forexPaddingAmount = freezed,
    Object? note = freezed,
    Object? sourceInstrumentFriendlyName = freezed,
    Object? sourceIdentityType = freezed,
    Object? sourceIdentityId = freezed,
    Object? sourceIdentityName = freezed,
    Object? exchangeRate = freezed,
    Object? authorisationState = freezed,
    Object? authorisationRelatedId = freezed,
    Object? settlementRelatedId = freezed,
    Object? chargeFeeType = freezed,
    Object? relatedTransactionId = freezed,
    Object? relatedTransactionIdType = freezed,
    Object? merchantId = freezed,
    Object? merchantTransactionType = freezed,
    Object? systemTransactionType = freezed,
    Object? authorisationCode = freezed,
    Object? relatedCardId = freezed,
    Object? forexFeeCurrency = freezed,
    Object? forexFeeAmount = freezed,
    Object? mandateId = freezed,
    Object? merchantReference = freezed,
  }) {
    return _then(_value.copyWith(
      sender: sender == freezed
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as String?,
      senderIban: senderIban == freezed
          ? _value.senderIban
          : senderIban // ignore: cast_nullable_to_non_nullable
              as String?,
      senderReference: senderReference == freezed
          ? _value.senderReference
          : senderReference // ignore: cast_nullable_to_non_nullable
              as String?,
      destinationInstrumentType: destinationInstrumentType == freezed
          ? _value.destinationInstrumentType
          : destinationInstrumentType // ignore: cast_nullable_to_non_nullable
              as String?,
      destinationInstrumentFriendlyName: destinationInstrumentFriendlyName ==
              freezed
          ? _value.destinationInstrumentFriendlyName
          : destinationInstrumentFriendlyName // ignore: cast_nullable_to_non_nullable
              as String?,
      destinationInstrumentId: destinationInstrumentId == freezed
          ? _value.destinationInstrumentId
          : destinationInstrumentId // ignore: cast_nullable_to_non_nullable
              as String?,
      beneficiaryName: beneficiaryName == freezed
          ? _value.beneficiaryName
          : beneficiaryName // ignore: cast_nullable_to_non_nullable
              as String?,
      beneficiaryAccount: beneficiaryAccount == freezed
          ? _value.beneficiaryAccount
          : beneficiaryAccount // ignore: cast_nullable_to_non_nullable
              as String?,
      beneficiaryBankCode: beneficiaryBankCode == freezed
          ? _value.beneficiaryBankCode
          : beneficiaryBankCode // ignore: cast_nullable_to_non_nullable
              as String?,
      merchantName: merchantName == freezed
          ? _value.merchantName
          : merchantName // ignore: cast_nullable_to_non_nullable
              as String?,
      merchantCategoryCode: merchantCategoryCode == freezed
          ? _value.merchantCategoryCode
          : merchantCategoryCode // ignore: cast_nullable_to_non_nullable
              as String?,
      merchantTerminalCountry: merchantTerminalCountry == freezed
          ? _value.merchantTerminalCountry
          : merchantTerminalCountry // ignore: cast_nullable_to_non_nullable
              as String?,
      sourceInstrumentType: sourceInstrumentType == freezed
          ? _value.sourceInstrumentType
          : sourceInstrumentType // ignore: cast_nullable_to_non_nullable
              as String?,
      sourceInstrumentId: sourceInstrumentId == freezed
          ? _value.sourceInstrumentId
          : sourceInstrumentId // ignore: cast_nullable_to_non_nullable
              as String?,
      forexPaddingCurrency: forexPaddingCurrency == freezed
          ? _value.forexPaddingCurrency
          : forexPaddingCurrency // ignore: cast_nullable_to_non_nullable
              as String?,
      forexPaddingAmount: forexPaddingAmount == freezed
          ? _value.forexPaddingAmount
          : forexPaddingAmount // ignore: cast_nullable_to_non_nullable
              as String?,
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      sourceInstrumentFriendlyName: sourceInstrumentFriendlyName == freezed
          ? _value.sourceInstrumentFriendlyName
          : sourceInstrumentFriendlyName // ignore: cast_nullable_to_non_nullable
              as String?,
      sourceIdentityType: sourceIdentityType == freezed
          ? _value.sourceIdentityType
          : sourceIdentityType // ignore: cast_nullable_to_non_nullable
              as String?,
      sourceIdentityId: sourceIdentityId == freezed
          ? _value.sourceIdentityId
          : sourceIdentityId // ignore: cast_nullable_to_non_nullable
              as String?,
      sourceIdentityName: sourceIdentityName == freezed
          ? _value.sourceIdentityName
          : sourceIdentityName // ignore: cast_nullable_to_non_nullable
              as String?,
      exchangeRate: exchangeRate == freezed
          ? _value.exchangeRate
          : exchangeRate // ignore: cast_nullable_to_non_nullable
              as String?,
      authorisationState: authorisationState == freezed
          ? _value.authorisationState
          : authorisationState // ignore: cast_nullable_to_non_nullable
              as String?,
      authorisationRelatedId: authorisationRelatedId == freezed
          ? _value.authorisationRelatedId
          : authorisationRelatedId // ignore: cast_nullable_to_non_nullable
              as String?,
      settlementRelatedId: settlementRelatedId == freezed
          ? _value.settlementRelatedId
          : settlementRelatedId // ignore: cast_nullable_to_non_nullable
              as String?,
      chargeFeeType: chargeFeeType == freezed
          ? _value.chargeFeeType
          : chargeFeeType // ignore: cast_nullable_to_non_nullable
              as String?,
      relatedTransactionId: relatedTransactionId == freezed
          ? _value.relatedTransactionId
          : relatedTransactionId // ignore: cast_nullable_to_non_nullable
              as String?,
      relatedTransactionIdType: relatedTransactionIdType == freezed
          ? _value.relatedTransactionIdType
          : relatedTransactionIdType // ignore: cast_nullable_to_non_nullable
              as String?,
      merchantId: merchantId == freezed
          ? _value.merchantId
          : merchantId // ignore: cast_nullable_to_non_nullable
              as String?,
      merchantTransactionType: merchantTransactionType == freezed
          ? _value.merchantTransactionType
          : merchantTransactionType // ignore: cast_nullable_to_non_nullable
              as String?,
      systemTransactionType: systemTransactionType == freezed
          ? _value.systemTransactionType
          : systemTransactionType // ignore: cast_nullable_to_non_nullable
              as String?,
      authorisationCode: authorisationCode == freezed
          ? _value.authorisationCode
          : authorisationCode // ignore: cast_nullable_to_non_nullable
              as String?,
      relatedCardId: relatedCardId == freezed
          ? _value.relatedCardId
          : relatedCardId // ignore: cast_nullable_to_non_nullable
              as String?,
      forexFeeCurrency: forexFeeCurrency == freezed
          ? _value.forexFeeCurrency
          : forexFeeCurrency // ignore: cast_nullable_to_non_nullable
              as String?,
      forexFeeAmount: forexFeeAmount == freezed
          ? _value.forexFeeAmount
          : forexFeeAmount // ignore: cast_nullable_to_non_nullable
              as String?,
      mandateId: mandateId == freezed
          ? _value.mandateId
          : mandateId // ignore: cast_nullable_to_non_nullable
              as String?,
      merchantReference: merchantReference == freezed
          ? _value.merchantReference
          : merchantReference // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$AdditionalFieldsCopyWith<$Res>
    implements $AdditionalFieldsCopyWith<$Res> {
  factory _$AdditionalFieldsCopyWith(
          _AdditionalFields value, $Res Function(_AdditionalFields) then) =
      __$AdditionalFieldsCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? sender,
      String? senderIban,
      String? senderReference,
      String? destinationInstrumentType,
      String? destinationInstrumentFriendlyName,
      String? destinationInstrumentId,
      String? beneficiaryName,
      String? beneficiaryAccount,
      String? beneficiaryBankCode,
      String? merchantName,
      String? merchantCategoryCode,
      String? merchantTerminalCountry,
      String? sourceInstrumentType,
      String? sourceInstrumentId,
      String? forexPaddingCurrency,
      String? forexPaddingAmount,
      String? note,
      String? sourceInstrumentFriendlyName,
      String? sourceIdentityType,
      String? sourceIdentityId,
      String? sourceIdentityName,
      String? exchangeRate,
      String? authorisationState,
      String? authorisationRelatedId,
      String? settlementRelatedId,
      String? chargeFeeType,
      String? relatedTransactionId,
      String? relatedTransactionIdType,
      String? merchantId,
      String? merchantTransactionType,
      String? systemTransactionType,
      String? authorisationCode,
      String? relatedCardId,
      String? forexFeeCurrency,
      String? forexFeeAmount,
      String? mandateId,
      String? merchantReference});
}

/// @nodoc
class __$AdditionalFieldsCopyWithImpl<$Res>
    extends _$AdditionalFieldsCopyWithImpl<$Res>
    implements _$AdditionalFieldsCopyWith<$Res> {
  __$AdditionalFieldsCopyWithImpl(
      _AdditionalFields _value, $Res Function(_AdditionalFields) _then)
      : super(_value, (v) => _then(v as _AdditionalFields));

  @override
  _AdditionalFields get _value => super._value as _AdditionalFields;

  @override
  $Res call({
    Object? sender = freezed,
    Object? senderIban = freezed,
    Object? senderReference = freezed,
    Object? destinationInstrumentType = freezed,
    Object? destinationInstrumentFriendlyName = freezed,
    Object? destinationInstrumentId = freezed,
    Object? beneficiaryName = freezed,
    Object? beneficiaryAccount = freezed,
    Object? beneficiaryBankCode = freezed,
    Object? merchantName = freezed,
    Object? merchantCategoryCode = freezed,
    Object? merchantTerminalCountry = freezed,
    Object? sourceInstrumentType = freezed,
    Object? sourceInstrumentId = freezed,
    Object? forexPaddingCurrency = freezed,
    Object? forexPaddingAmount = freezed,
    Object? note = freezed,
    Object? sourceInstrumentFriendlyName = freezed,
    Object? sourceIdentityType = freezed,
    Object? sourceIdentityId = freezed,
    Object? sourceIdentityName = freezed,
    Object? exchangeRate = freezed,
    Object? authorisationState = freezed,
    Object? authorisationRelatedId = freezed,
    Object? settlementRelatedId = freezed,
    Object? chargeFeeType = freezed,
    Object? relatedTransactionId = freezed,
    Object? relatedTransactionIdType = freezed,
    Object? merchantId = freezed,
    Object? merchantTransactionType = freezed,
    Object? systemTransactionType = freezed,
    Object? authorisationCode = freezed,
    Object? relatedCardId = freezed,
    Object? forexFeeCurrency = freezed,
    Object? forexFeeAmount = freezed,
    Object? mandateId = freezed,
    Object? merchantReference = freezed,
  }) {
    return _then(_AdditionalFields(
      sender == freezed
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as String?,
      senderIban == freezed
          ? _value.senderIban
          : senderIban // ignore: cast_nullable_to_non_nullable
              as String?,
      senderReference == freezed
          ? _value.senderReference
          : senderReference // ignore: cast_nullable_to_non_nullable
              as String?,
      destinationInstrumentType == freezed
          ? _value.destinationInstrumentType
          : destinationInstrumentType // ignore: cast_nullable_to_non_nullable
              as String?,
      destinationInstrumentFriendlyName == freezed
          ? _value.destinationInstrumentFriendlyName
          : destinationInstrumentFriendlyName // ignore: cast_nullable_to_non_nullable
              as String?,
      destinationInstrumentId == freezed
          ? _value.destinationInstrumentId
          : destinationInstrumentId // ignore: cast_nullable_to_non_nullable
              as String?,
      beneficiaryName == freezed
          ? _value.beneficiaryName
          : beneficiaryName // ignore: cast_nullable_to_non_nullable
              as String?,
      beneficiaryAccount == freezed
          ? _value.beneficiaryAccount
          : beneficiaryAccount // ignore: cast_nullable_to_non_nullable
              as String?,
      beneficiaryBankCode == freezed
          ? _value.beneficiaryBankCode
          : beneficiaryBankCode // ignore: cast_nullable_to_non_nullable
              as String?,
      merchantName == freezed
          ? _value.merchantName
          : merchantName // ignore: cast_nullable_to_non_nullable
              as String?,
      merchantCategoryCode == freezed
          ? _value.merchantCategoryCode
          : merchantCategoryCode // ignore: cast_nullable_to_non_nullable
              as String?,
      merchantTerminalCountry == freezed
          ? _value.merchantTerminalCountry
          : merchantTerminalCountry // ignore: cast_nullable_to_non_nullable
              as String?,
      sourceInstrumentType == freezed
          ? _value.sourceInstrumentType
          : sourceInstrumentType // ignore: cast_nullable_to_non_nullable
              as String?,
      sourceInstrumentId == freezed
          ? _value.sourceInstrumentId
          : sourceInstrumentId // ignore: cast_nullable_to_non_nullable
              as String?,
      forexPaddingCurrency == freezed
          ? _value.forexPaddingCurrency
          : forexPaddingCurrency // ignore: cast_nullable_to_non_nullable
              as String?,
      forexPaddingAmount == freezed
          ? _value.forexPaddingAmount
          : forexPaddingAmount // ignore: cast_nullable_to_non_nullable
              as String?,
      note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      sourceInstrumentFriendlyName == freezed
          ? _value.sourceInstrumentFriendlyName
          : sourceInstrumentFriendlyName // ignore: cast_nullable_to_non_nullable
              as String?,
      sourceIdentityType == freezed
          ? _value.sourceIdentityType
          : sourceIdentityType // ignore: cast_nullable_to_non_nullable
              as String?,
      sourceIdentityId == freezed
          ? _value.sourceIdentityId
          : sourceIdentityId // ignore: cast_nullable_to_non_nullable
              as String?,
      sourceIdentityName == freezed
          ? _value.sourceIdentityName
          : sourceIdentityName // ignore: cast_nullable_to_non_nullable
              as String?,
      exchangeRate == freezed
          ? _value.exchangeRate
          : exchangeRate // ignore: cast_nullable_to_non_nullable
              as String?,
      authorisationState == freezed
          ? _value.authorisationState
          : authorisationState // ignore: cast_nullable_to_non_nullable
              as String?,
      authorisationRelatedId == freezed
          ? _value.authorisationRelatedId
          : authorisationRelatedId // ignore: cast_nullable_to_non_nullable
              as String?,
      settlementRelatedId == freezed
          ? _value.settlementRelatedId
          : settlementRelatedId // ignore: cast_nullable_to_non_nullable
              as String?,
      chargeFeeType == freezed
          ? _value.chargeFeeType
          : chargeFeeType // ignore: cast_nullable_to_non_nullable
              as String?,
      relatedTransactionId == freezed
          ? _value.relatedTransactionId
          : relatedTransactionId // ignore: cast_nullable_to_non_nullable
              as String?,
      relatedTransactionIdType == freezed
          ? _value.relatedTransactionIdType
          : relatedTransactionIdType // ignore: cast_nullable_to_non_nullable
              as String?,
      merchantId == freezed
          ? _value.merchantId
          : merchantId // ignore: cast_nullable_to_non_nullable
              as String?,
      merchantTransactionType == freezed
          ? _value.merchantTransactionType
          : merchantTransactionType // ignore: cast_nullable_to_non_nullable
              as String?,
      systemTransactionType == freezed
          ? _value.systemTransactionType
          : systemTransactionType // ignore: cast_nullable_to_non_nullable
              as String?,
      authorisationCode == freezed
          ? _value.authorisationCode
          : authorisationCode // ignore: cast_nullable_to_non_nullable
              as String?,
      relatedCardId == freezed
          ? _value.relatedCardId
          : relatedCardId // ignore: cast_nullable_to_non_nullable
              as String?,
      forexFeeCurrency == freezed
          ? _value.forexFeeCurrency
          : forexFeeCurrency // ignore: cast_nullable_to_non_nullable
              as String?,
      forexFeeAmount == freezed
          ? _value.forexFeeAmount
          : forexFeeAmount // ignore: cast_nullable_to_non_nullable
              as String?,
      mandateId == freezed
          ? _value.mandateId
          : mandateId // ignore: cast_nullable_to_non_nullable
              as String?,
      merchantReference == freezed
          ? _value.merchantReference
          : merchantReference // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AdditionalFields implements _AdditionalFields {
  const _$_AdditionalFields(
      this.sender,
      this.senderIban,
      this.senderReference,
      this.destinationInstrumentType,
      this.destinationInstrumentFriendlyName,
      this.destinationInstrumentId,
      this.beneficiaryName,
      this.beneficiaryAccount,
      this.beneficiaryBankCode,
      this.merchantName,
      this.merchantCategoryCode,
      this.merchantTerminalCountry,
      this.sourceInstrumentType,
      this.sourceInstrumentId,
      this.forexPaddingCurrency,
      this.forexPaddingAmount,
      this.note,
      this.sourceInstrumentFriendlyName,
      this.sourceIdentityType,
      this.sourceIdentityId,
      this.sourceIdentityName,
      this.exchangeRate,
      this.authorisationState,
      this.authorisationRelatedId,
      this.settlementRelatedId,
      this.chargeFeeType,
      this.relatedTransactionId,
      this.relatedTransactionIdType,
      this.merchantId,
      this.merchantTransactionType,
      this.systemTransactionType,
      this.authorisationCode,
      this.relatedCardId,
      this.forexFeeCurrency,
      this.forexFeeAmount,
      this.mandateId,
      this.merchantReference);

  factory _$_AdditionalFields.fromJson(Map<String, dynamic> json) =>
      _$$_AdditionalFieldsFromJson(json);

  @override
  final String? sender;
  @override
  final String? senderIban;
  @override
  final String? senderReference;
  @override
  final String? destinationInstrumentType;
  @override
  final String? destinationInstrumentFriendlyName;
  @override
  final String? destinationInstrumentId;
  @override
  final String? beneficiaryName;
  @override
  final String? beneficiaryAccount;
  @override
  final String? beneficiaryBankCode;
  @override
  final String? merchantName;
  @override
  final String? merchantCategoryCode;
  @override
  final String? merchantTerminalCountry;
  @override
  final String? sourceInstrumentType;
  @override
  final String? sourceInstrumentId;
  @override
  final String? forexPaddingCurrency;
  @override
  final String? forexPaddingAmount;
  @override
  final String? note;
  @override
  final String? sourceInstrumentFriendlyName;
  @override
  final String? sourceIdentityType;
  @override
  final String? sourceIdentityId;
  @override
  final String? sourceIdentityName;
  @override
  final String? exchangeRate;
  @override
  final String? authorisationState;
  @override
  final String? authorisationRelatedId;
  @override
  final String? settlementRelatedId;
  @override
  final String? chargeFeeType;
  @override
  final String? relatedTransactionId;
  @override
  final String? relatedTransactionIdType;
  @override
  final String? merchantId;
  @override
  final String? merchantTransactionType;
  @override
  final String? systemTransactionType;
  @override
  final String? authorisationCode;
  @override
  final String? relatedCardId;
  @override
  final String? forexFeeCurrency;
  @override
  final String? forexFeeAmount;
  @override
  final String? mandateId;
  @override
  final String? merchantReference;

  @override
  String toString() {
    return 'AdditionalFields(sender: $sender, senderIban: $senderIban, senderReference: $senderReference, destinationInstrumentType: $destinationInstrumentType, destinationInstrumentFriendlyName: $destinationInstrumentFriendlyName, destinationInstrumentId: $destinationInstrumentId, beneficiaryName: $beneficiaryName, beneficiaryAccount: $beneficiaryAccount, beneficiaryBankCode: $beneficiaryBankCode, merchantName: $merchantName, merchantCategoryCode: $merchantCategoryCode, merchantTerminalCountry: $merchantTerminalCountry, sourceInstrumentType: $sourceInstrumentType, sourceInstrumentId: $sourceInstrumentId, forexPaddingCurrency: $forexPaddingCurrency, forexPaddingAmount: $forexPaddingAmount, note: $note, sourceInstrumentFriendlyName: $sourceInstrumentFriendlyName, sourceIdentityType: $sourceIdentityType, sourceIdentityId: $sourceIdentityId, sourceIdentityName: $sourceIdentityName, exchangeRate: $exchangeRate, authorisationState: $authorisationState, authorisationRelatedId: $authorisationRelatedId, settlementRelatedId: $settlementRelatedId, chargeFeeType: $chargeFeeType, relatedTransactionId: $relatedTransactionId, relatedTransactionIdType: $relatedTransactionIdType, merchantId: $merchantId, merchantTransactionType: $merchantTransactionType, systemTransactionType: $systemTransactionType, authorisationCode: $authorisationCode, relatedCardId: $relatedCardId, forexFeeCurrency: $forexFeeCurrency, forexFeeAmount: $forexFeeAmount, mandateId: $mandateId, merchantReference: $merchantReference)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AdditionalFields &&
            (identical(other.sender, sender) ||
                const DeepCollectionEquality().equals(other.sender, sender)) &&
            (identical(other.senderIban, senderIban) ||
                const DeepCollectionEquality()
                    .equals(other.senderIban, senderIban)) &&
            (identical(other.senderReference, senderReference) ||
                const DeepCollectionEquality()
                    .equals(other.senderReference, senderReference)) &&
            (identical(other.destinationInstrumentType, destinationInstrumentType) ||
                const DeepCollectionEquality().equals(
                    other.destinationInstrumentType,
                    destinationInstrumentType)) &&
            (identical(other.destinationInstrumentFriendlyName, destinationInstrumentFriendlyName) ||
                const DeepCollectionEquality().equals(
                    other.destinationInstrumentFriendlyName,
                    destinationInstrumentFriendlyName)) &&
            (identical(other.destinationInstrumentId, destinationInstrumentId) ||
                const DeepCollectionEquality().equals(
                    other.destinationInstrumentId, destinationInstrumentId)) &&
            (identical(other.beneficiaryName, beneficiaryName) ||
                const DeepCollectionEquality()
                    .equals(other.beneficiaryName, beneficiaryName)) &&
            (identical(other.beneficiaryAccount, beneficiaryAccount) ||
                const DeepCollectionEquality()
                    .equals(other.beneficiaryAccount, beneficiaryAccount)) &&
            (identical(other.beneficiaryBankCode, beneficiaryBankCode) ||
                const DeepCollectionEquality()
                    .equals(other.beneficiaryBankCode, beneficiaryBankCode)) &&
            (identical(other.merchantName, merchantName) ||
                const DeepCollectionEquality()
                    .equals(other.merchantName, merchantName)) &&
            (identical(other.merchantCategoryCode, merchantCategoryCode) ||
                const DeepCollectionEquality().equals(
                    other.merchantCategoryCode, merchantCategoryCode)) &&
            (identical(other.merchantTerminalCountry, merchantTerminalCountry) ||
                const DeepCollectionEquality()
                    .equals(other.merchantTerminalCountry, merchantTerminalCountry)) &&
            (identical(other.sourceInstrumentType, sourceInstrumentType) || const DeepCollectionEquality().equals(other.sourceInstrumentType, sourceInstrumentType)) &&
            (identical(other.sourceInstrumentId, sourceInstrumentId) || const DeepCollectionEquality().equals(other.sourceInstrumentId, sourceInstrumentId)) &&
            (identical(other.forexPaddingCurrency, forexPaddingCurrency) || const DeepCollectionEquality().equals(other.forexPaddingCurrency, forexPaddingCurrency)) &&
            (identical(other.forexPaddingAmount, forexPaddingAmount) || const DeepCollectionEquality().equals(other.forexPaddingAmount, forexPaddingAmount)) &&
            (identical(other.note, note) || const DeepCollectionEquality().equals(other.note, note)) &&
            (identical(other.sourceInstrumentFriendlyName, sourceInstrumentFriendlyName) || const DeepCollectionEquality().equals(other.sourceInstrumentFriendlyName, sourceInstrumentFriendlyName)) &&
            (identical(other.sourceIdentityType, sourceIdentityType) || const DeepCollectionEquality().equals(other.sourceIdentityType, sourceIdentityType)) &&
            (identical(other.sourceIdentityId, sourceIdentityId) || const DeepCollectionEquality().equals(other.sourceIdentityId, sourceIdentityId)) &&
            (identical(other.sourceIdentityName, sourceIdentityName) || const DeepCollectionEquality().equals(other.sourceIdentityName, sourceIdentityName)) &&
            (identical(other.exchangeRate, exchangeRate) || const DeepCollectionEquality().equals(other.exchangeRate, exchangeRate)) &&
            (identical(other.authorisationState, authorisationState) || const DeepCollectionEquality().equals(other.authorisationState, authorisationState)) &&
            (identical(other.authorisationRelatedId, authorisationRelatedId) || const DeepCollectionEquality().equals(other.authorisationRelatedId, authorisationRelatedId)) &&
            (identical(other.settlementRelatedId, settlementRelatedId) || const DeepCollectionEquality().equals(other.settlementRelatedId, settlementRelatedId)) &&
            (identical(other.chargeFeeType, chargeFeeType) || const DeepCollectionEquality().equals(other.chargeFeeType, chargeFeeType)) &&
            (identical(other.relatedTransactionId, relatedTransactionId) || const DeepCollectionEquality().equals(other.relatedTransactionId, relatedTransactionId)) &&
            (identical(other.relatedTransactionIdType, relatedTransactionIdType) || const DeepCollectionEquality().equals(other.relatedTransactionIdType, relatedTransactionIdType)) &&
            (identical(other.merchantId, merchantId) || const DeepCollectionEquality().equals(other.merchantId, merchantId)) &&
            (identical(other.merchantTransactionType, merchantTransactionType) || const DeepCollectionEquality().equals(other.merchantTransactionType, merchantTransactionType)) &&
            (identical(other.systemTransactionType, systemTransactionType) || const DeepCollectionEquality().equals(other.systemTransactionType, systemTransactionType)) &&
            (identical(other.authorisationCode, authorisationCode) || const DeepCollectionEquality().equals(other.authorisationCode, authorisationCode)) &&
            (identical(other.relatedCardId, relatedCardId) || const DeepCollectionEquality().equals(other.relatedCardId, relatedCardId)) &&
            (identical(other.forexFeeCurrency, forexFeeCurrency) || const DeepCollectionEquality().equals(other.forexFeeCurrency, forexFeeCurrency)) &&
            (identical(other.forexFeeAmount, forexFeeAmount) || const DeepCollectionEquality().equals(other.forexFeeAmount, forexFeeAmount)) &&
            (identical(other.mandateId, mandateId) || const DeepCollectionEquality().equals(other.mandateId, mandateId)) &&
            (identical(other.merchantReference, merchantReference) || const DeepCollectionEquality().equals(other.merchantReference, merchantReference)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(sender) ^
      const DeepCollectionEquality().hash(senderIban) ^
      const DeepCollectionEquality().hash(senderReference) ^
      const DeepCollectionEquality().hash(destinationInstrumentType) ^
      const DeepCollectionEquality().hash(destinationInstrumentFriendlyName) ^
      const DeepCollectionEquality().hash(destinationInstrumentId) ^
      const DeepCollectionEquality().hash(beneficiaryName) ^
      const DeepCollectionEquality().hash(beneficiaryAccount) ^
      const DeepCollectionEquality().hash(beneficiaryBankCode) ^
      const DeepCollectionEquality().hash(merchantName) ^
      const DeepCollectionEquality().hash(merchantCategoryCode) ^
      const DeepCollectionEquality().hash(merchantTerminalCountry) ^
      const DeepCollectionEquality().hash(sourceInstrumentType) ^
      const DeepCollectionEquality().hash(sourceInstrumentId) ^
      const DeepCollectionEquality().hash(forexPaddingCurrency) ^
      const DeepCollectionEquality().hash(forexPaddingAmount) ^
      const DeepCollectionEquality().hash(note) ^
      const DeepCollectionEquality().hash(sourceInstrumentFriendlyName) ^
      const DeepCollectionEquality().hash(sourceIdentityType) ^
      const DeepCollectionEquality().hash(sourceIdentityId) ^
      const DeepCollectionEquality().hash(sourceIdentityName) ^
      const DeepCollectionEquality().hash(exchangeRate) ^
      const DeepCollectionEquality().hash(authorisationState) ^
      const DeepCollectionEquality().hash(authorisationRelatedId) ^
      const DeepCollectionEquality().hash(settlementRelatedId) ^
      const DeepCollectionEquality().hash(chargeFeeType) ^
      const DeepCollectionEquality().hash(relatedTransactionId) ^
      const DeepCollectionEquality().hash(relatedTransactionIdType) ^
      const DeepCollectionEquality().hash(merchantId) ^
      const DeepCollectionEquality().hash(merchantTransactionType) ^
      const DeepCollectionEquality().hash(systemTransactionType) ^
      const DeepCollectionEquality().hash(authorisationCode) ^
      const DeepCollectionEquality().hash(relatedCardId) ^
      const DeepCollectionEquality().hash(forexFeeCurrency) ^
      const DeepCollectionEquality().hash(forexFeeAmount) ^
      const DeepCollectionEquality().hash(mandateId) ^
      const DeepCollectionEquality().hash(merchantReference);

  @JsonKey(ignore: true)
  @override
  _$AdditionalFieldsCopyWith<_AdditionalFields> get copyWith =>
      __$AdditionalFieldsCopyWithImpl<_AdditionalFields>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AdditionalFieldsToJson(this);
  }
}

abstract class _AdditionalFields implements AdditionalFields {
  const factory _AdditionalFields(
      String? sender,
      String? senderIban,
      String? senderReference,
      String? destinationInstrumentType,
      String? destinationInstrumentFriendlyName,
      String? destinationInstrumentId,
      String? beneficiaryName,
      String? beneficiaryAccount,
      String? beneficiaryBankCode,
      String? merchantName,
      String? merchantCategoryCode,
      String? merchantTerminalCountry,
      String? sourceInstrumentType,
      String? sourceInstrumentId,
      String? forexPaddingCurrency,
      String? forexPaddingAmount,
      String? note,
      String? sourceInstrumentFriendlyName,
      String? sourceIdentityType,
      String? sourceIdentityId,
      String? sourceIdentityName,
      String? exchangeRate,
      String? authorisationState,
      String? authorisationRelatedId,
      String? settlementRelatedId,
      String? chargeFeeType,
      String? relatedTransactionId,
      String? relatedTransactionIdType,
      String? merchantId,
      String? merchantTransactionType,
      String? systemTransactionType,
      String? authorisationCode,
      String? relatedCardId,
      String? forexFeeCurrency,
      String? forexFeeAmount,
      String? mandateId,
      String? merchantReference) = _$_AdditionalFields;

  factory _AdditionalFields.fromJson(Map<String, dynamic> json) =
      _$_AdditionalFields.fromJson;

  @override
  String? get sender => throw _privateConstructorUsedError;
  @override
  String? get senderIban => throw _privateConstructorUsedError;
  @override
  String? get senderReference => throw _privateConstructorUsedError;
  @override
  String? get destinationInstrumentType => throw _privateConstructorUsedError;
  @override
  String? get destinationInstrumentFriendlyName =>
      throw _privateConstructorUsedError;
  @override
  String? get destinationInstrumentId => throw _privateConstructorUsedError;
  @override
  String? get beneficiaryName => throw _privateConstructorUsedError;
  @override
  String? get beneficiaryAccount => throw _privateConstructorUsedError;
  @override
  String? get beneficiaryBankCode => throw _privateConstructorUsedError;
  @override
  String? get merchantName => throw _privateConstructorUsedError;
  @override
  String? get merchantCategoryCode => throw _privateConstructorUsedError;
  @override
  String? get merchantTerminalCountry => throw _privateConstructorUsedError;
  @override
  String? get sourceInstrumentType => throw _privateConstructorUsedError;
  @override
  String? get sourceInstrumentId => throw _privateConstructorUsedError;
  @override
  String? get forexPaddingCurrency => throw _privateConstructorUsedError;
  @override
  String? get forexPaddingAmount => throw _privateConstructorUsedError;
  @override
  String? get note => throw _privateConstructorUsedError;
  @override
  String? get sourceInstrumentFriendlyName =>
      throw _privateConstructorUsedError;
  @override
  String? get sourceIdentityType => throw _privateConstructorUsedError;
  @override
  String? get sourceIdentityId => throw _privateConstructorUsedError;
  @override
  String? get sourceIdentityName => throw _privateConstructorUsedError;
  @override
  String? get exchangeRate => throw _privateConstructorUsedError;
  @override
  String? get authorisationState => throw _privateConstructorUsedError;
  @override
  String? get authorisationRelatedId => throw _privateConstructorUsedError;
  @override
  String? get settlementRelatedId => throw _privateConstructorUsedError;
  @override
  String? get chargeFeeType => throw _privateConstructorUsedError;
  @override
  String? get relatedTransactionId => throw _privateConstructorUsedError;
  @override
  String? get relatedTransactionIdType => throw _privateConstructorUsedError;
  @override
  String? get merchantId => throw _privateConstructorUsedError;
  @override
  String? get merchantTransactionType => throw _privateConstructorUsedError;
  @override
  String? get systemTransactionType => throw _privateConstructorUsedError;
  @override
  String? get authorisationCode => throw _privateConstructorUsedError;
  @override
  String? get relatedCardId => throw _privateConstructorUsedError;
  @override
  String? get forexFeeCurrency => throw _privateConstructorUsedError;
  @override
  String? get forexFeeAmount => throw _privateConstructorUsedError;
  @override
  String? get mandateId => throw _privateConstructorUsedError;
  @override
  String? get merchantReference => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AdditionalFieldsCopyWith<_AdditionalFields> get copyWith =>
      throw _privateConstructorUsedError;
}
