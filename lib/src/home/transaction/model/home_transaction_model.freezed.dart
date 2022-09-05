// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_transaction_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HomeTransactionModel _$HomeTransactionModelFromJson(Map<String, dynamic> json) {
  return _HomeTransactionModel.fromJson(json);
}

/// @nodoc
class _$HomeTransactionModelTearOff {
  const _$HomeTransactionModelTearOff();

  _HomeTransactionModel call(
      @JsonKey(name: 'status')
          Status? status,
      @JsonKey(name: 'wallet_balance')
          HomeWalletBalance wallet_balance,
      @JsonKey(name: 'transactions')
          List<HomeWalletTransactionDetails> transactions) {
    return _HomeTransactionModel(
      status,
      wallet_balance,
      transactions,
    );
  }

  HomeTransactionModel fromJson(Map<String, Object> json) {
    return HomeTransactionModel.fromJson(json);
  }
}

/// @nodoc
const $HomeTransactionModel = _$HomeTransactionModelTearOff();

/// @nodoc
mixin _$HomeTransactionModel {
  @JsonKey(name: 'status')
  Status? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'wallet_balance')
  HomeWalletBalance get wallet_balance => throw _privateConstructorUsedError;
  @JsonKey(name: 'transactions')
  List<HomeWalletTransactionDetails> get transactions =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomeTransactionModelCopyWith<HomeTransactionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeTransactionModelCopyWith<$Res> {
  factory $HomeTransactionModelCopyWith(HomeTransactionModel value,
          $Res Function(HomeTransactionModel) then) =
      _$HomeTransactionModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'status')
          Status? status,
      @JsonKey(name: 'wallet_balance')
          HomeWalletBalance wallet_balance,
      @JsonKey(name: 'transactions')
          List<HomeWalletTransactionDetails> transactions});

  $StatusCopyWith<$Res>? get status;
  $HomeWalletBalanceCopyWith<$Res> get wallet_balance;
}

/// @nodoc
class _$HomeTransactionModelCopyWithImpl<$Res>
    implements $HomeTransactionModelCopyWith<$Res> {
  _$HomeTransactionModelCopyWithImpl(this._value, this._then);

  final HomeTransactionModel _value;
  // ignore: unused_field
  final $Res Function(HomeTransactionModel) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? wallet_balance = freezed,
    Object? transactions = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status?,
      wallet_balance: wallet_balance == freezed
          ? _value.wallet_balance
          : wallet_balance // ignore: cast_nullable_to_non_nullable
              as HomeWalletBalance,
      transactions: transactions == freezed
          ? _value.transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<HomeWalletTransactionDetails>,
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
  $HomeWalletBalanceCopyWith<$Res> get wallet_balance {
    return $HomeWalletBalanceCopyWith<$Res>(_value.wallet_balance, (value) {
      return _then(_value.copyWith(wallet_balance: value));
    });
  }
}

/// @nodoc
abstract class _$HomeTransactionModelCopyWith<$Res>
    implements $HomeTransactionModelCopyWith<$Res> {
  factory _$HomeTransactionModelCopyWith(_HomeTransactionModel value,
          $Res Function(_HomeTransactionModel) then) =
      __$HomeTransactionModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'status')
          Status? status,
      @JsonKey(name: 'wallet_balance')
          HomeWalletBalance wallet_balance,
      @JsonKey(name: 'transactions')
          List<HomeWalletTransactionDetails> transactions});

  @override
  $StatusCopyWith<$Res>? get status;
  @override
  $HomeWalletBalanceCopyWith<$Res> get wallet_balance;
}

/// @nodoc
class __$HomeTransactionModelCopyWithImpl<$Res>
    extends _$HomeTransactionModelCopyWithImpl<$Res>
    implements _$HomeTransactionModelCopyWith<$Res> {
  __$HomeTransactionModelCopyWithImpl(
      _HomeTransactionModel _value, $Res Function(_HomeTransactionModel) _then)
      : super(_value, (v) => _then(v as _HomeTransactionModel));

  @override
  _HomeTransactionModel get _value => super._value as _HomeTransactionModel;

  @override
  $Res call({
    Object? status = freezed,
    Object? wallet_balance = freezed,
    Object? transactions = freezed,
  }) {
    return _then(_HomeTransactionModel(
      status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status?,
      wallet_balance == freezed
          ? _value.wallet_balance
          : wallet_balance // ignore: cast_nullable_to_non_nullable
              as HomeWalletBalance,
      transactions == freezed
          ? _value.transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<HomeWalletTransactionDetails>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HomeTransactionModel implements _HomeTransactionModel {
  const _$_HomeTransactionModel(
      @JsonKey(name: 'status') this.status,
      @JsonKey(name: 'wallet_balance') this.wallet_balance,
      @JsonKey(name: 'transactions') this.transactions);

  factory _$_HomeTransactionModel.fromJson(Map<String, dynamic> json) =>
      _$$_HomeTransactionModelFromJson(json);

  @override
  @JsonKey(name: 'status')
  final Status? status;
  @override
  @JsonKey(name: 'wallet_balance')
  final HomeWalletBalance wallet_balance;
  @override
  @JsonKey(name: 'transactions')
  final List<HomeWalletTransactionDetails> transactions;

  @override
  String toString() {
    return 'HomeTransactionModel(status: $status, wallet_balance: $wallet_balance, transactions: $transactions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HomeTransactionModel &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.wallet_balance, wallet_balance) ||
                const DeepCollectionEquality()
                    .equals(other.wallet_balance, wallet_balance)) &&
            (identical(other.transactions, transactions) ||
                const DeepCollectionEquality()
                    .equals(other.transactions, transactions)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(wallet_balance) ^
      const DeepCollectionEquality().hash(transactions);

  @JsonKey(ignore: true)
  @override
  _$HomeTransactionModelCopyWith<_HomeTransactionModel> get copyWith =>
      __$HomeTransactionModelCopyWithImpl<_HomeTransactionModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HomeTransactionModelToJson(this);
  }
}

abstract class _HomeTransactionModel implements HomeTransactionModel {
  const factory _HomeTransactionModel(
          @JsonKey(name: 'status')
              Status? status,
          @JsonKey(name: 'wallet_balance')
              HomeWalletBalance wallet_balance,
          @JsonKey(name: 'transactions')
              List<HomeWalletTransactionDetails> transactions) =
      _$_HomeTransactionModel;

  factory _HomeTransactionModel.fromJson(Map<String, dynamic> json) =
      _$_HomeTransactionModel.fromJson;

  @override
  @JsonKey(name: 'status')
  Status? get status => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'wallet_balance')
  HomeWalletBalance get wallet_balance => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'transactions')
  List<HomeWalletTransactionDetails> get transactions =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$HomeTransactionModelCopyWith<_HomeTransactionModel> get copyWith =>
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

HomeWalletBalance _$HomeWalletBalanceFromJson(Map<String, dynamic> json) {
  return _HomeWalletBalance.fromJson(json);
}

/// @nodoc
class _$HomeWalletBalanceTearOff {
  const _$HomeWalletBalanceTearOff();

  _HomeWalletBalance call(
      @JsonKey(name: 'user_id') int? user_id,
      @JsonKey(name: 'ewallet_id') String? ewallet_id,
      @JsonKey(name: 'currency') String? currency,
      @JsonKey(name: 'alias') String? alias,
      @JsonKey(name: 'balance') double? balance,
      @JsonKey(name: 'received_balance') String? received_balance,
      @JsonKey(name: 'on_hold_balance') String? on_hold_balance,
      @JsonKey(name: 'reserve_balance') String? reserve_balance,
      @JsonKey(name: 'last_updated_at') String? last_updated_at) {
    return _HomeWalletBalance(
      user_id,
      ewallet_id,
      currency,
      alias,
      balance,
      received_balance,
      on_hold_balance,
      reserve_balance,
      last_updated_at,
    );
  }

  HomeWalletBalance fromJson(Map<String, Object> json) {
    return HomeWalletBalance.fromJson(json);
  }
}

/// @nodoc
const $HomeWalletBalance = _$HomeWalletBalanceTearOff();

/// @nodoc
mixin _$HomeWalletBalance {
  @JsonKey(name: 'user_id')
  int? get user_id => throw _privateConstructorUsedError;
  @JsonKey(name: 'ewallet_id')
  String? get ewallet_id => throw _privateConstructorUsedError;
  @JsonKey(name: 'currency')
  String? get currency => throw _privateConstructorUsedError;
  @JsonKey(name: 'alias')
  String? get alias => throw _privateConstructorUsedError;
  @JsonKey(name: 'balance')
  double? get balance => throw _privateConstructorUsedError;
  @JsonKey(name: 'received_balance')
  String? get received_balance => throw _privateConstructorUsedError;
  @JsonKey(name: 'on_hold_balance')
  String? get on_hold_balance => throw _privateConstructorUsedError;
  @JsonKey(name: 'reserve_balance')
  String? get reserve_balance => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_updated_at')
  String? get last_updated_at => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomeWalletBalanceCopyWith<HomeWalletBalance> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeWalletBalanceCopyWith<$Res> {
  factory $HomeWalletBalanceCopyWith(
          HomeWalletBalance value, $Res Function(HomeWalletBalance) then) =
      _$HomeWalletBalanceCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'user_id') int? user_id,
      @JsonKey(name: 'ewallet_id') String? ewallet_id,
      @JsonKey(name: 'currency') String? currency,
      @JsonKey(name: 'alias') String? alias,
      @JsonKey(name: 'balance') double? balance,
      @JsonKey(name: 'received_balance') String? received_balance,
      @JsonKey(name: 'on_hold_balance') String? on_hold_balance,
      @JsonKey(name: 'reserve_balance') String? reserve_balance,
      @JsonKey(name: 'last_updated_at') String? last_updated_at});
}

/// @nodoc
class _$HomeWalletBalanceCopyWithImpl<$Res>
    implements $HomeWalletBalanceCopyWith<$Res> {
  _$HomeWalletBalanceCopyWithImpl(this._value, this._then);

  final HomeWalletBalance _value;
  // ignore: unused_field
  final $Res Function(HomeWalletBalance) _then;

  @override
  $Res call({
    Object? user_id = freezed,
    Object? ewallet_id = freezed,
    Object? currency = freezed,
    Object? alias = freezed,
    Object? balance = freezed,
    Object? received_balance = freezed,
    Object? on_hold_balance = freezed,
    Object? reserve_balance = freezed,
    Object? last_updated_at = freezed,
  }) {
    return _then(_value.copyWith(
      user_id: user_id == freezed
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as int?,
      ewallet_id: ewallet_id == freezed
          ? _value.ewallet_id
          : ewallet_id // ignore: cast_nullable_to_non_nullable
              as String?,
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      alias: alias == freezed
          ? _value.alias
          : alias // ignore: cast_nullable_to_non_nullable
              as String?,
      balance: balance == freezed
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double?,
      received_balance: received_balance == freezed
          ? _value.received_balance
          : received_balance // ignore: cast_nullable_to_non_nullable
              as String?,
      on_hold_balance: on_hold_balance == freezed
          ? _value.on_hold_balance
          : on_hold_balance // ignore: cast_nullable_to_non_nullable
              as String?,
      reserve_balance: reserve_balance == freezed
          ? _value.reserve_balance
          : reserve_balance // ignore: cast_nullable_to_non_nullable
              as String?,
      last_updated_at: last_updated_at == freezed
          ? _value.last_updated_at
          : last_updated_at // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$HomeWalletBalanceCopyWith<$Res>
    implements $HomeWalletBalanceCopyWith<$Res> {
  factory _$HomeWalletBalanceCopyWith(
          _HomeWalletBalance value, $Res Function(_HomeWalletBalance) then) =
      __$HomeWalletBalanceCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'user_id') int? user_id,
      @JsonKey(name: 'ewallet_id') String? ewallet_id,
      @JsonKey(name: 'currency') String? currency,
      @JsonKey(name: 'alias') String? alias,
      @JsonKey(name: 'balance') double? balance,
      @JsonKey(name: 'received_balance') String? received_balance,
      @JsonKey(name: 'on_hold_balance') String? on_hold_balance,
      @JsonKey(name: 'reserve_balance') String? reserve_balance,
      @JsonKey(name: 'last_updated_at') String? last_updated_at});
}

/// @nodoc
class __$HomeWalletBalanceCopyWithImpl<$Res>
    extends _$HomeWalletBalanceCopyWithImpl<$Res>
    implements _$HomeWalletBalanceCopyWith<$Res> {
  __$HomeWalletBalanceCopyWithImpl(
      _HomeWalletBalance _value, $Res Function(_HomeWalletBalance) _then)
      : super(_value, (v) => _then(v as _HomeWalletBalance));

  @override
  _HomeWalletBalance get _value => super._value as _HomeWalletBalance;

  @override
  $Res call({
    Object? user_id = freezed,
    Object? ewallet_id = freezed,
    Object? currency = freezed,
    Object? alias = freezed,
    Object? balance = freezed,
    Object? received_balance = freezed,
    Object? on_hold_balance = freezed,
    Object? reserve_balance = freezed,
    Object? last_updated_at = freezed,
  }) {
    return _then(_HomeWalletBalance(
      user_id == freezed
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as int?,
      ewallet_id == freezed
          ? _value.ewallet_id
          : ewallet_id // ignore: cast_nullable_to_non_nullable
              as String?,
      currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      alias == freezed
          ? _value.alias
          : alias // ignore: cast_nullable_to_non_nullable
              as String?,
      balance == freezed
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double?,
      received_balance == freezed
          ? _value.received_balance
          : received_balance // ignore: cast_nullable_to_non_nullable
              as String?,
      on_hold_balance == freezed
          ? _value.on_hold_balance
          : on_hold_balance // ignore: cast_nullable_to_non_nullable
              as String?,
      reserve_balance == freezed
          ? _value.reserve_balance
          : reserve_balance // ignore: cast_nullable_to_non_nullable
              as String?,
      last_updated_at == freezed
          ? _value.last_updated_at
          : last_updated_at // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HomeWalletBalance implements _HomeWalletBalance {
  const _$_HomeWalletBalance(
      @JsonKey(name: 'user_id') this.user_id,
      @JsonKey(name: 'ewallet_id') this.ewallet_id,
      @JsonKey(name: 'currency') this.currency,
      @JsonKey(name: 'alias') this.alias,
      @JsonKey(name: 'balance') this.balance,
      @JsonKey(name: 'received_balance') this.received_balance,
      @JsonKey(name: 'on_hold_balance') this.on_hold_balance,
      @JsonKey(name: 'reserve_balance') this.reserve_balance,
      @JsonKey(name: 'last_updated_at') this.last_updated_at);

  factory _$_HomeWalletBalance.fromJson(Map<String, dynamic> json) =>
      _$$_HomeWalletBalanceFromJson(json);

  @override
  @JsonKey(name: 'user_id')
  final int? user_id;
  @override
  @JsonKey(name: 'ewallet_id')
  final String? ewallet_id;
  @override
  @JsonKey(name: 'currency')
  final String? currency;
  @override
  @JsonKey(name: 'alias')
  final String? alias;
  @override
  @JsonKey(name: 'balance')
  final double? balance;
  @override
  @JsonKey(name: 'received_balance')
  final String? received_balance;
  @override
  @JsonKey(name: 'on_hold_balance')
  final String? on_hold_balance;
  @override
  @JsonKey(name: 'reserve_balance')
  final String? reserve_balance;
  @override
  @JsonKey(name: 'last_updated_at')
  final String? last_updated_at;

  @override
  String toString() {
    return 'HomeWalletBalance(user_id: $user_id, ewallet_id: $ewallet_id, currency: $currency, alias: $alias, balance: $balance, received_balance: $received_balance, on_hold_balance: $on_hold_balance, reserve_balance: $reserve_balance, last_updated_at: $last_updated_at)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HomeWalletBalance &&
            (identical(other.user_id, user_id) ||
                const DeepCollectionEquality()
                    .equals(other.user_id, user_id)) &&
            (identical(other.ewallet_id, ewallet_id) ||
                const DeepCollectionEquality()
                    .equals(other.ewallet_id, ewallet_id)) &&
            (identical(other.currency, currency) ||
                const DeepCollectionEquality()
                    .equals(other.currency, currency)) &&
            (identical(other.alias, alias) ||
                const DeepCollectionEquality().equals(other.alias, alias)) &&
            (identical(other.balance, balance) ||
                const DeepCollectionEquality()
                    .equals(other.balance, balance)) &&
            (identical(other.received_balance, received_balance) ||
                const DeepCollectionEquality()
                    .equals(other.received_balance, received_balance)) &&
            (identical(other.on_hold_balance, on_hold_balance) ||
                const DeepCollectionEquality()
                    .equals(other.on_hold_balance, on_hold_balance)) &&
            (identical(other.reserve_balance, reserve_balance) ||
                const DeepCollectionEquality()
                    .equals(other.reserve_balance, reserve_balance)) &&
            (identical(other.last_updated_at, last_updated_at) ||
                const DeepCollectionEquality()
                    .equals(other.last_updated_at, last_updated_at)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(user_id) ^
      const DeepCollectionEquality().hash(ewallet_id) ^
      const DeepCollectionEquality().hash(currency) ^
      const DeepCollectionEquality().hash(alias) ^
      const DeepCollectionEquality().hash(balance) ^
      const DeepCollectionEquality().hash(received_balance) ^
      const DeepCollectionEquality().hash(on_hold_balance) ^
      const DeepCollectionEquality().hash(reserve_balance) ^
      const DeepCollectionEquality().hash(last_updated_at);

  @JsonKey(ignore: true)
  @override
  _$HomeWalletBalanceCopyWith<_HomeWalletBalance> get copyWith =>
      __$HomeWalletBalanceCopyWithImpl<_HomeWalletBalance>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HomeWalletBalanceToJson(this);
  }
}

abstract class _HomeWalletBalance implements HomeWalletBalance {
  const factory _HomeWalletBalance(
          @JsonKey(name: 'user_id') int? user_id,
          @JsonKey(name: 'ewallet_id') String? ewallet_id,
          @JsonKey(name: 'currency') String? currency,
          @JsonKey(name: 'alias') String? alias,
          @JsonKey(name: 'balance') double? balance,
          @JsonKey(name: 'received_balance') String? received_balance,
          @JsonKey(name: 'on_hold_balance') String? on_hold_balance,
          @JsonKey(name: 'reserve_balance') String? reserve_balance,
          @JsonKey(name: 'last_updated_at') String? last_updated_at) =
      _$_HomeWalletBalance;

  factory _HomeWalletBalance.fromJson(Map<String, dynamic> json) =
      _$_HomeWalletBalance.fromJson;

  @override
  @JsonKey(name: 'user_id')
  int? get user_id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'ewallet_id')
  String? get ewallet_id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'currency')
  String? get currency => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'alias')
  String? get alias => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'balance')
  double? get balance => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'received_balance')
  String? get received_balance => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'on_hold_balance')
  String? get on_hold_balance => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'reserve_balance')
  String? get reserve_balance => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'last_updated_at')
  String? get last_updated_at => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$HomeWalletBalanceCopyWith<_HomeWalletBalance> get copyWith =>
      throw _privateConstructorUsedError;
}

HomeWalletTransactionDetails _$HomeWalletTransactionDetailsFromJson(
    Map<String, dynamic> json) {
  return _HomeWalletTransactionDetails.fromJson(json);
}

/// @nodoc
class _$HomeWalletTransactionDetailsTearOff {
  const _$HomeWalletTransactionDetailsTearOff();

  _HomeWalletTransactionDetails call(
      @JsonKey(name: 'user_id') int? user_id,
      @JsonKey(name: 'transaction_id') String? transaction_id,
      @JsonKey(name: 'currency') String? currency,
      @JsonKey(name: 'amount') String? amount,
      @JsonKey(name: 'transaction_status') String? transaction_status,
      @JsonKey(name: 'payment_status') String? payment_status,
      @JsonKey(name: 'created_at') String? created_at,
      @JsonKey(name: 'description') String? description) {
    return _HomeWalletTransactionDetails(
      user_id,
      transaction_id,
      currency,
      amount,
      transaction_status,
      payment_status,
      created_at,
      description,
    );
  }

  HomeWalletTransactionDetails fromJson(Map<String, Object> json) {
    return HomeWalletTransactionDetails.fromJson(json);
  }
}

/// @nodoc
const $HomeWalletTransactionDetails = _$HomeWalletTransactionDetailsTearOff();

/// @nodoc
mixin _$HomeWalletTransactionDetails {
  @JsonKey(name: 'user_id')
  int? get user_id => throw _privateConstructorUsedError;
  @JsonKey(name: 'transaction_id')
  String? get transaction_id => throw _privateConstructorUsedError;
  @JsonKey(name: 'currency')
  String? get currency => throw _privateConstructorUsedError;
  @JsonKey(name: 'amount')
  String? get amount => throw _privateConstructorUsedError;
  @JsonKey(name: 'transaction_status')
  String? get transaction_status => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_status')
  String? get payment_status => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get created_at => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomeWalletTransactionDetailsCopyWith<HomeWalletTransactionDetails>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeWalletTransactionDetailsCopyWith<$Res> {
  factory $HomeWalletTransactionDetailsCopyWith(
          HomeWalletTransactionDetails value,
          $Res Function(HomeWalletTransactionDetails) then) =
      _$HomeWalletTransactionDetailsCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'user_id') int? user_id,
      @JsonKey(name: 'transaction_id') String? transaction_id,
      @JsonKey(name: 'currency') String? currency,
      @JsonKey(name: 'amount') String? amount,
      @JsonKey(name: 'transaction_status') String? transaction_status,
      @JsonKey(name: 'payment_status') String? payment_status,
      @JsonKey(name: 'created_at') String? created_at,
      @JsonKey(name: 'description') String? description});
}

/// @nodoc
class _$HomeWalletTransactionDetailsCopyWithImpl<$Res>
    implements $HomeWalletTransactionDetailsCopyWith<$Res> {
  _$HomeWalletTransactionDetailsCopyWithImpl(this._value, this._then);

  final HomeWalletTransactionDetails _value;
  // ignore: unused_field
  final $Res Function(HomeWalletTransactionDetails) _then;

  @override
  $Res call({
    Object? user_id = freezed,
    Object? transaction_id = freezed,
    Object? currency = freezed,
    Object? amount = freezed,
    Object? transaction_status = freezed,
    Object? payment_status = freezed,
    Object? created_at = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      user_id: user_id == freezed
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as int?,
      transaction_id: transaction_id == freezed
          ? _value.transaction_id
          : transaction_id // ignore: cast_nullable_to_non_nullable
              as String?,
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String?,
      transaction_status: transaction_status == freezed
          ? _value.transaction_status
          : transaction_status // ignore: cast_nullable_to_non_nullable
              as String?,
      payment_status: payment_status == freezed
          ? _value.payment_status
          : payment_status // ignore: cast_nullable_to_non_nullable
              as String?,
      created_at: created_at == freezed
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$HomeWalletTransactionDetailsCopyWith<$Res>
    implements $HomeWalletTransactionDetailsCopyWith<$Res> {
  factory _$HomeWalletTransactionDetailsCopyWith(
          _HomeWalletTransactionDetails value,
          $Res Function(_HomeWalletTransactionDetails) then) =
      __$HomeWalletTransactionDetailsCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'user_id') int? user_id,
      @JsonKey(name: 'transaction_id') String? transaction_id,
      @JsonKey(name: 'currency') String? currency,
      @JsonKey(name: 'amount') String? amount,
      @JsonKey(name: 'transaction_status') String? transaction_status,
      @JsonKey(name: 'payment_status') String? payment_status,
      @JsonKey(name: 'created_at') String? created_at,
      @JsonKey(name: 'description') String? description});
}

/// @nodoc
class __$HomeWalletTransactionDetailsCopyWithImpl<$Res>
    extends _$HomeWalletTransactionDetailsCopyWithImpl<$Res>
    implements _$HomeWalletTransactionDetailsCopyWith<$Res> {
  __$HomeWalletTransactionDetailsCopyWithImpl(
      _HomeWalletTransactionDetails _value,
      $Res Function(_HomeWalletTransactionDetails) _then)
      : super(_value, (v) => _then(v as _HomeWalletTransactionDetails));

  @override
  _HomeWalletTransactionDetails get _value =>
      super._value as _HomeWalletTransactionDetails;

  @override
  $Res call({
    Object? user_id = freezed,
    Object? transaction_id = freezed,
    Object? currency = freezed,
    Object? amount = freezed,
    Object? transaction_status = freezed,
    Object? payment_status = freezed,
    Object? created_at = freezed,
    Object? description = freezed,
  }) {
    return _then(_HomeWalletTransactionDetails(
      user_id == freezed
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as int?,
      transaction_id == freezed
          ? _value.transaction_id
          : transaction_id // ignore: cast_nullable_to_non_nullable
              as String?,
      currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String?,
      transaction_status == freezed
          ? _value.transaction_status
          : transaction_status // ignore: cast_nullable_to_non_nullable
              as String?,
      payment_status == freezed
          ? _value.payment_status
          : payment_status // ignore: cast_nullable_to_non_nullable
              as String?,
      created_at == freezed
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String?,
      description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HomeWalletTransactionDetails implements _HomeWalletTransactionDetails {
  const _$_HomeWalletTransactionDetails(
      @JsonKey(name: 'user_id') this.user_id,
      @JsonKey(name: 'transaction_id') this.transaction_id,
      @JsonKey(name: 'currency') this.currency,
      @JsonKey(name: 'amount') this.amount,
      @JsonKey(name: 'transaction_status') this.transaction_status,
      @JsonKey(name: 'payment_status') this.payment_status,
      @JsonKey(name: 'created_at') this.created_at,
      @JsonKey(name: 'description') this.description);

  factory _$_HomeWalletTransactionDetails.fromJson(Map<String, dynamic> json) =>
      _$$_HomeWalletTransactionDetailsFromJson(json);

  @override
  @JsonKey(name: 'user_id')
  final int? user_id;
  @override
  @JsonKey(name: 'transaction_id')
  final String? transaction_id;
  @override
  @JsonKey(name: 'currency')
  final String? currency;
  @override
  @JsonKey(name: 'amount')
  final String? amount;
  @override
  @JsonKey(name: 'transaction_status')
  final String? transaction_status;
  @override
  @JsonKey(name: 'payment_status')
  final String? payment_status;
  @override
  @JsonKey(name: 'created_at')
  final String? created_at;
  @override
  @JsonKey(name: 'description')
  final String? description;

  @override
  String toString() {
    return 'HomeWalletTransactionDetails(user_id: $user_id, transaction_id: $transaction_id, currency: $currency, amount: $amount, transaction_status: $transaction_status, payment_status: $payment_status, created_at: $created_at, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HomeWalletTransactionDetails &&
            (identical(other.user_id, user_id) ||
                const DeepCollectionEquality()
                    .equals(other.user_id, user_id)) &&
            (identical(other.transaction_id, transaction_id) ||
                const DeepCollectionEquality()
                    .equals(other.transaction_id, transaction_id)) &&
            (identical(other.currency, currency) ||
                const DeepCollectionEquality()
                    .equals(other.currency, currency)) &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.transaction_status, transaction_status) ||
                const DeepCollectionEquality()
                    .equals(other.transaction_status, transaction_status)) &&
            (identical(other.payment_status, payment_status) ||
                const DeepCollectionEquality()
                    .equals(other.payment_status, payment_status)) &&
            (identical(other.created_at, created_at) ||
                const DeepCollectionEquality()
                    .equals(other.created_at, created_at)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(user_id) ^
      const DeepCollectionEquality().hash(transaction_id) ^
      const DeepCollectionEquality().hash(currency) ^
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(transaction_status) ^
      const DeepCollectionEquality().hash(payment_status) ^
      const DeepCollectionEquality().hash(created_at) ^
      const DeepCollectionEquality().hash(description);

  @JsonKey(ignore: true)
  @override
  _$HomeWalletTransactionDetailsCopyWith<_HomeWalletTransactionDetails>
      get copyWith => __$HomeWalletTransactionDetailsCopyWithImpl<
          _HomeWalletTransactionDetails>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HomeWalletTransactionDetailsToJson(this);
  }
}

abstract class _HomeWalletTransactionDetails
    implements HomeWalletTransactionDetails {
  const factory _HomeWalletTransactionDetails(
          @JsonKey(name: 'user_id') int? user_id,
          @JsonKey(name: 'transaction_id') String? transaction_id,
          @JsonKey(name: 'currency') String? currency,
          @JsonKey(name: 'amount') String? amount,
          @JsonKey(name: 'transaction_status') String? transaction_status,
          @JsonKey(name: 'payment_status') String? payment_status,
          @JsonKey(name: 'created_at') String? created_at,
          @JsonKey(name: 'description') String? description) =
      _$_HomeWalletTransactionDetails;

  factory _HomeWalletTransactionDetails.fromJson(Map<String, dynamic> json) =
      _$_HomeWalletTransactionDetails.fromJson;

  @override
  @JsonKey(name: 'user_id')
  int? get user_id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'transaction_id')
  String? get transaction_id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'currency')
  String? get currency => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'amount')
  String? get amount => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'transaction_status')
  String? get transaction_status => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'payment_status')
  String? get payment_status => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'created_at')
  String? get created_at => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$HomeWalletTransactionDetailsCopyWith<_HomeWalletTransactionDetails>
      get copyWith => throw _privateConstructorUsedError;
}
