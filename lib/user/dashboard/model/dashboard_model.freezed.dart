// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'dashboard_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DashboardModel _$DashboardModelFromJson(Map<String, dynamic> json) {
  return _DashboardModel.fromJson(json);
}

/// @nodoc
class _$DashboardModelTearOff {
  const _$DashboardModelTearOff();

  _DashboardModel call(
      @JsonKey(name: 'transactions')
          List<WalletTransactionDetails>? transactions,
      @JsonKey(name: 'wallet_balance')
          WalletBalance? wallet_balance,
      @JsonKey(name: 'cryptos')
          List<Cryptos>? cryptos,
      @JsonKey(name: 'currency')
          List<Currency>? currency,
      @JsonKey(name: 'status')
          Status? status) {
    return _DashboardModel(
      transactions,
      wallet_balance,
      cryptos,
      currency,
      status,
    );
  }

  DashboardModel fromJson(Map<String, Object> json) {
    return DashboardModel.fromJson(json);
  }
}

/// @nodoc
const $DashboardModel = _$DashboardModelTearOff();

/// @nodoc
mixin _$DashboardModel {
  @JsonKey(name: 'transactions')
  List<WalletTransactionDetails>? get transactions =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'wallet_balance')
  WalletBalance? get wallet_balance => throw _privateConstructorUsedError;
  @JsonKey(name: 'cryptos')
  List<Cryptos>? get cryptos => throw _privateConstructorUsedError;
  @JsonKey(name: 'currency')
  List<Currency>? get currency => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  Status? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DashboardModelCopyWith<DashboardModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardModelCopyWith<$Res> {
  factory $DashboardModelCopyWith(
          DashboardModel value, $Res Function(DashboardModel) then) =
      _$DashboardModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'transactions')
          List<WalletTransactionDetails>? transactions,
      @JsonKey(name: 'wallet_balance')
          WalletBalance? wallet_balance,
      @JsonKey(name: 'cryptos')
          List<Cryptos>? cryptos,
      @JsonKey(name: 'currency')
          List<Currency>? currency,
      @JsonKey(name: 'status')
          Status? status});

  $WalletBalanceCopyWith<$Res>? get wallet_balance;
  $StatusCopyWith<$Res>? get status;
}

/// @nodoc
class _$DashboardModelCopyWithImpl<$Res>
    implements $DashboardModelCopyWith<$Res> {
  _$DashboardModelCopyWithImpl(this._value, this._then);

  final DashboardModel _value;
  // ignore: unused_field
  final $Res Function(DashboardModel) _then;

  @override
  $Res call({
    Object? transactions = freezed,
    Object? wallet_balance = freezed,
    Object? cryptos = freezed,
    Object? currency = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      transactions: transactions == freezed
          ? _value.transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<WalletTransactionDetails>?,
      wallet_balance: wallet_balance == freezed
          ? _value.wallet_balance
          : wallet_balance // ignore: cast_nullable_to_non_nullable
              as WalletBalance?,
      cryptos: cryptos == freezed
          ? _value.cryptos
          : cryptos // ignore: cast_nullable_to_non_nullable
              as List<Cryptos>?,
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as List<Currency>?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status?,
    ));
  }

  @override
  $WalletBalanceCopyWith<$Res>? get wallet_balance {
    if (_value.wallet_balance == null) {
      return null;
    }

    return $WalletBalanceCopyWith<$Res>(_value.wallet_balance!, (value) {
      return _then(_value.copyWith(wallet_balance: value));
    });
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
abstract class _$DashboardModelCopyWith<$Res>
    implements $DashboardModelCopyWith<$Res> {
  factory _$DashboardModelCopyWith(
          _DashboardModel value, $Res Function(_DashboardModel) then) =
      __$DashboardModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'transactions')
          List<WalletTransactionDetails>? transactions,
      @JsonKey(name: 'wallet_balance')
          WalletBalance? wallet_balance,
      @JsonKey(name: 'cryptos')
          List<Cryptos>? cryptos,
      @JsonKey(name: 'currency')
          List<Currency>? currency,
      @JsonKey(name: 'status')
          Status? status});

  @override
  $WalletBalanceCopyWith<$Res>? get wallet_balance;
  @override
  $StatusCopyWith<$Res>? get status;
}

/// @nodoc
class __$DashboardModelCopyWithImpl<$Res>
    extends _$DashboardModelCopyWithImpl<$Res>
    implements _$DashboardModelCopyWith<$Res> {
  __$DashboardModelCopyWithImpl(
      _DashboardModel _value, $Res Function(_DashboardModel) _then)
      : super(_value, (v) => _then(v as _DashboardModel));

  @override
  _DashboardModel get _value => super._value as _DashboardModel;

  @override
  $Res call({
    Object? transactions = freezed,
    Object? wallet_balance = freezed,
    Object? cryptos = freezed,
    Object? currency = freezed,
    Object? status = freezed,
  }) {
    return _then(_DashboardModel(
      transactions == freezed
          ? _value.transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<WalletTransactionDetails>?,
      wallet_balance == freezed
          ? _value.wallet_balance
          : wallet_balance // ignore: cast_nullable_to_non_nullable
              as WalletBalance?,
      cryptos == freezed
          ? _value.cryptos
          : cryptos // ignore: cast_nullable_to_non_nullable
              as List<Cryptos>?,
      currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as List<Currency>?,
      status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DashboardModel implements _DashboardModel {
  const _$_DashboardModel(
      @JsonKey(name: 'transactions') this.transactions,
      @JsonKey(name: 'wallet_balance') this.wallet_balance,
      @JsonKey(name: 'cryptos') this.cryptos,
      @JsonKey(name: 'currency') this.currency,
      @JsonKey(name: 'status') this.status);

  factory _$_DashboardModel.fromJson(Map<String, dynamic> json) =>
      _$$_DashboardModelFromJson(json);

  @override
  @JsonKey(name: 'transactions')
  final List<WalletTransactionDetails>? transactions;
  @override
  @JsonKey(name: 'wallet_balance')
  final WalletBalance? wallet_balance;
  @override
  @JsonKey(name: 'cryptos')
  final List<Cryptos>? cryptos;
  @override
  @JsonKey(name: 'currency')
  final List<Currency>? currency;
  @override
  @JsonKey(name: 'status')
  final Status? status;

  @override
  String toString() {
    return 'DashboardModel(transactions: $transactions, wallet_balance: $wallet_balance, cryptos: $cryptos, currency: $currency, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DashboardModel &&
            (identical(other.transactions, transactions) ||
                const DeepCollectionEquality()
                    .equals(other.transactions, transactions)) &&
            (identical(other.wallet_balance, wallet_balance) ||
                const DeepCollectionEquality()
                    .equals(other.wallet_balance, wallet_balance)) &&
            (identical(other.cryptos, cryptos) ||
                const DeepCollectionEquality()
                    .equals(other.cryptos, cryptos)) &&
            (identical(other.currency, currency) ||
                const DeepCollectionEquality()
                    .equals(other.currency, currency)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(transactions) ^
      const DeepCollectionEquality().hash(wallet_balance) ^
      const DeepCollectionEquality().hash(cryptos) ^
      const DeepCollectionEquality().hash(currency) ^
      const DeepCollectionEquality().hash(status);

  @JsonKey(ignore: true)
  @override
  _$DashboardModelCopyWith<_DashboardModel> get copyWith =>
      __$DashboardModelCopyWithImpl<_DashboardModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DashboardModelToJson(this);
  }
}

abstract class _DashboardModel implements DashboardModel {
  const factory _DashboardModel(
      @JsonKey(name: 'transactions')
          List<WalletTransactionDetails>? transactions,
      @JsonKey(name: 'wallet_balance')
          WalletBalance? wallet_balance,
      @JsonKey(name: 'cryptos')
          List<Cryptos>? cryptos,
      @JsonKey(name: 'currency')
          List<Currency>? currency,
      @JsonKey(name: 'status')
          Status? status) = _$_DashboardModel;

  factory _DashboardModel.fromJson(Map<String, dynamic> json) =
      _$_DashboardModel.fromJson;

  @override
  @JsonKey(name: 'transactions')
  List<WalletTransactionDetails>? get transactions =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'wallet_balance')
  WalletBalance? get wallet_balance => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'cryptos')
  List<Cryptos>? get cryptos => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'currency')
  List<Currency>? get currency => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'status')
  Status? get status => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DashboardModelCopyWith<_DashboardModel> get copyWith =>
      throw _privateConstructorUsedError;
}

Cryptos _$CryptosFromJson(Map<String, dynamic> json) {
  return _Cryptos.fromJson(json);
}

/// @nodoc
class _$CryptosTearOff {
  const _$CryptosTearOff();

  _Cryptos call(@JsonKey(name: 'balance') String? balance,
      @JsonKey(name: 'code') String? code) {
    return _Cryptos(
      balance,
      code,
    );
  }

  Cryptos fromJson(Map<String, Object> json) {
    return Cryptos.fromJson(json);
  }
}

/// @nodoc
const $Cryptos = _$CryptosTearOff();

/// @nodoc
mixin _$Cryptos {
  @JsonKey(name: 'balance')
  String? get balance => throw _privateConstructorUsedError;
  @JsonKey(name: 'code')
  String? get code => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CryptosCopyWith<Cryptos> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CryptosCopyWith<$Res> {
  factory $CryptosCopyWith(Cryptos value, $Res Function(Cryptos) then) =
      _$CryptosCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'balance') String? balance,
      @JsonKey(name: 'code') String? code});
}

/// @nodoc
class _$CryptosCopyWithImpl<$Res> implements $CryptosCopyWith<$Res> {
  _$CryptosCopyWithImpl(this._value, this._then);

  final Cryptos _value;
  // ignore: unused_field
  final $Res Function(Cryptos) _then;

  @override
  $Res call({
    Object? balance = freezed,
    Object? code = freezed,
  }) {
    return _then(_value.copyWith(
      balance: balance == freezed
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as String?,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$CryptosCopyWith<$Res> implements $CryptosCopyWith<$Res> {
  factory _$CryptosCopyWith(_Cryptos value, $Res Function(_Cryptos) then) =
      __$CryptosCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'balance') String? balance,
      @JsonKey(name: 'code') String? code});
}

/// @nodoc
class __$CryptosCopyWithImpl<$Res> extends _$CryptosCopyWithImpl<$Res>
    implements _$CryptosCopyWith<$Res> {
  __$CryptosCopyWithImpl(_Cryptos _value, $Res Function(_Cryptos) _then)
      : super(_value, (v) => _then(v as _Cryptos));

  @override
  _Cryptos get _value => super._value as _Cryptos;

  @override
  $Res call({
    Object? balance = freezed,
    Object? code = freezed,
  }) {
    return _then(_Cryptos(
      balance == freezed
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as String?,
      code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Cryptos implements _Cryptos {
  const _$_Cryptos(
      @JsonKey(name: 'balance') this.balance, @JsonKey(name: 'code') this.code);

  factory _$_Cryptos.fromJson(Map<String, dynamic> json) =>
      _$$_CryptosFromJson(json);

  @override
  @JsonKey(name: 'balance')
  final String? balance;
  @override
  @JsonKey(name: 'code')
  final String? code;

  @override
  String toString() {
    return 'Cryptos(balance: $balance, code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Cryptos &&
            (identical(other.balance, balance) ||
                const DeepCollectionEquality()
                    .equals(other.balance, balance)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(balance) ^
      const DeepCollectionEquality().hash(code);

  @JsonKey(ignore: true)
  @override
  _$CryptosCopyWith<_Cryptos> get copyWith =>
      __$CryptosCopyWithImpl<_Cryptos>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CryptosToJson(this);
  }
}

abstract class _Cryptos implements Cryptos {
  const factory _Cryptos(@JsonKey(name: 'balance') String? balance,
      @JsonKey(name: 'code') String? code) = _$_Cryptos;

  factory _Cryptos.fromJson(Map<String, dynamic> json) = _$_Cryptos.fromJson;

  @override
  @JsonKey(name: 'balance')
  String? get balance => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'code')
  String? get code => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CryptosCopyWith<_Cryptos> get copyWith =>
      throw _privateConstructorUsedError;
}

Currency _$CurrencyFromJson(Map<String, dynamic> json) {
  return _Currency.fromJson(json);
}

/// @nodoc
class _$CurrencyTearOff {
  const _$CurrencyTearOff();

  _Currency call(@JsonKey(name: 'balance') String? balance,
      @JsonKey(name: 'code') String? code) {
    return _Currency(
      balance,
      code,
    );
  }

  Currency fromJson(Map<String, Object> json) {
    return Currency.fromJson(json);
  }
}

/// @nodoc
const $Currency = _$CurrencyTearOff();

/// @nodoc
mixin _$Currency {
  @JsonKey(name: 'balance')
  String? get balance => throw _privateConstructorUsedError;
  @JsonKey(name: 'code')
  String? get code => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CurrencyCopyWith<Currency> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrencyCopyWith<$Res> {
  factory $CurrencyCopyWith(Currency value, $Res Function(Currency) then) =
      _$CurrencyCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'balance') String? balance,
      @JsonKey(name: 'code') String? code});
}

/// @nodoc
class _$CurrencyCopyWithImpl<$Res> implements $CurrencyCopyWith<$Res> {
  _$CurrencyCopyWithImpl(this._value, this._then);

  final Currency _value;
  // ignore: unused_field
  final $Res Function(Currency) _then;

  @override
  $Res call({
    Object? balance = freezed,
    Object? code = freezed,
  }) {
    return _then(_value.copyWith(
      balance: balance == freezed
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as String?,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$CurrencyCopyWith<$Res> implements $CurrencyCopyWith<$Res> {
  factory _$CurrencyCopyWith(_Currency value, $Res Function(_Currency) then) =
      __$CurrencyCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'balance') String? balance,
      @JsonKey(name: 'code') String? code});
}

/// @nodoc
class __$CurrencyCopyWithImpl<$Res> extends _$CurrencyCopyWithImpl<$Res>
    implements _$CurrencyCopyWith<$Res> {
  __$CurrencyCopyWithImpl(_Currency _value, $Res Function(_Currency) _then)
      : super(_value, (v) => _then(v as _Currency));

  @override
  _Currency get _value => super._value as _Currency;

  @override
  $Res call({
    Object? balance = freezed,
    Object? code = freezed,
  }) {
    return _then(_Currency(
      balance == freezed
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as String?,
      code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Currency implements _Currency {
  const _$_Currency(
      @JsonKey(name: 'balance') this.balance, @JsonKey(name: 'code') this.code);

  factory _$_Currency.fromJson(Map<String, dynamic> json) =>
      _$$_CurrencyFromJson(json);

  @override
  @JsonKey(name: 'balance')
  final String? balance;
  @override
  @JsonKey(name: 'code')
  final String? code;

  @override
  String toString() {
    return 'Currency(balance: $balance, code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Currency &&
            (identical(other.balance, balance) ||
                const DeepCollectionEquality()
                    .equals(other.balance, balance)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(balance) ^
      const DeepCollectionEquality().hash(code);

  @JsonKey(ignore: true)
  @override
  _$CurrencyCopyWith<_Currency> get copyWith =>
      __$CurrencyCopyWithImpl<_Currency>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CurrencyToJson(this);
  }
}

abstract class _Currency implements Currency {
  const factory _Currency(@JsonKey(name: 'balance') String? balance,
      @JsonKey(name: 'code') String? code) = _$_Currency;

  factory _Currency.fromJson(Map<String, dynamic> json) = _$_Currency.fromJson;

  @override
  @JsonKey(name: 'balance')
  String? get balance => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'code')
  String? get code => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CurrencyCopyWith<_Currency> get copyWith =>
      throw _privateConstructorUsedError;
}

WalletBalance _$WalletBalanceFromJson(Map<String, dynamic> json) {
  return _WalletBalance.fromJson(json);
}

/// @nodoc
class _$WalletBalanceTearOff {
  const _$WalletBalanceTearOff();

  _WalletBalance call(
      @JsonKey(name: 'user_id') int? user_id,
      @JsonKey(name: 'ewallet_id') String? ewallet_id,
      @JsonKey(name: 'currency') String? currency,
      @JsonKey(name: 'alias') String? alias,
      @JsonKey(name: 'balance') double? balance,
      @JsonKey(name: 'received_balance') String? received_balance,
      @JsonKey(name: 'on_hold_balance') String? on_hold_balance,
      @JsonKey(name: 'reserve_balance') String? reserve_balance,
      @JsonKey(name: 'last_updated_at') String? last_updated_at) {
    return _WalletBalance(
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

  WalletBalance fromJson(Map<String, Object> json) {
    return WalletBalance.fromJson(json);
  }
}

/// @nodoc
const $WalletBalance = _$WalletBalanceTearOff();

/// @nodoc
mixin _$WalletBalance {
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
  $WalletBalanceCopyWith<WalletBalance> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletBalanceCopyWith<$Res> {
  factory $WalletBalanceCopyWith(
          WalletBalance value, $Res Function(WalletBalance) then) =
      _$WalletBalanceCopyWithImpl<$Res>;
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
class _$WalletBalanceCopyWithImpl<$Res>
    implements $WalletBalanceCopyWith<$Res> {
  _$WalletBalanceCopyWithImpl(this._value, this._then);

  final WalletBalance _value;
  // ignore: unused_field
  final $Res Function(WalletBalance) _then;

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
abstract class _$WalletBalanceCopyWith<$Res>
    implements $WalletBalanceCopyWith<$Res> {
  factory _$WalletBalanceCopyWith(
          _WalletBalance value, $Res Function(_WalletBalance) then) =
      __$WalletBalanceCopyWithImpl<$Res>;
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
class __$WalletBalanceCopyWithImpl<$Res>
    extends _$WalletBalanceCopyWithImpl<$Res>
    implements _$WalletBalanceCopyWith<$Res> {
  __$WalletBalanceCopyWithImpl(
      _WalletBalance _value, $Res Function(_WalletBalance) _then)
      : super(_value, (v) => _then(v as _WalletBalance));

  @override
  _WalletBalance get _value => super._value as _WalletBalance;

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
    return _then(_WalletBalance(
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
class _$_WalletBalance implements _WalletBalance {
  const _$_WalletBalance(
      @JsonKey(name: 'user_id') this.user_id,
      @JsonKey(name: 'ewallet_id') this.ewallet_id,
      @JsonKey(name: 'currency') this.currency,
      @JsonKey(name: 'alias') this.alias,
      @JsonKey(name: 'balance') this.balance,
      @JsonKey(name: 'received_balance') this.received_balance,
      @JsonKey(name: 'on_hold_balance') this.on_hold_balance,
      @JsonKey(name: 'reserve_balance') this.reserve_balance,
      @JsonKey(name: 'last_updated_at') this.last_updated_at);

  factory _$_WalletBalance.fromJson(Map<String, dynamic> json) =>
      _$$_WalletBalanceFromJson(json);

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
    return 'WalletBalance(user_id: $user_id, ewallet_id: $ewallet_id, currency: $currency, alias: $alias, balance: $balance, received_balance: $received_balance, on_hold_balance: $on_hold_balance, reserve_balance: $reserve_balance, last_updated_at: $last_updated_at)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WalletBalance &&
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
  _$WalletBalanceCopyWith<_WalletBalance> get copyWith =>
      __$WalletBalanceCopyWithImpl<_WalletBalance>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WalletBalanceToJson(this);
  }
}

abstract class _WalletBalance implements WalletBalance {
  const factory _WalletBalance(
          @JsonKey(name: 'user_id') int? user_id,
          @JsonKey(name: 'ewallet_id') String? ewallet_id,
          @JsonKey(name: 'currency') String? currency,
          @JsonKey(name: 'alias') String? alias,
          @JsonKey(name: 'balance') double? balance,
          @JsonKey(name: 'received_balance') String? received_balance,
          @JsonKey(name: 'on_hold_balance') String? on_hold_balance,
          @JsonKey(name: 'reserve_balance') String? reserve_balance,
          @JsonKey(name: 'last_updated_at') String? last_updated_at) =
      _$_WalletBalance;

  factory _WalletBalance.fromJson(Map<String, dynamic> json) =
      _$_WalletBalance.fromJson;

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
  _$WalletBalanceCopyWith<_WalletBalance> get copyWith =>
      throw _privateConstructorUsedError;
}

Status _$StatusFromJson(Map<String, dynamic> json) {
  return _Status.fromJson(json);
}

/// @nodoc
class _$StatusTearOff {
  const _$StatusTearOff();

  _Status call(@JsonKey(name: 'result') String? result,
      @JsonKey(name: 'message') String? message) {
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
  @JsonKey(name: 'result')
  String? get result => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StatusCopyWith<Status> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatusCopyWith<$Res> {
  factory $StatusCopyWith(Status value, $Res Function(Status) then) =
      _$StatusCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'result') String? result,
      @JsonKey(name: 'message') String? message});
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
  $Res call(
      {@JsonKey(name: 'result') String? result,
      @JsonKey(name: 'message') String? message});
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
  const _$_Status(@JsonKey(name: 'result') this.result,
      @JsonKey(name: 'message') this.message);

  factory _$_Status.fromJson(Map<String, dynamic> json) =>
      _$$_StatusFromJson(json);

  @override
  @JsonKey(name: 'result')
  final String? result;
  @override
  @JsonKey(name: 'message')
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
  const factory _Status(@JsonKey(name: 'result') String? result,
      @JsonKey(name: 'message') String? message) = _$_Status;

  factory _Status.fromJson(Map<String, dynamic> json) = _$_Status.fromJson;

  @override
  @JsonKey(name: 'result')
  String? get result => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$StatusCopyWith<_Status> get copyWith => throw _privateConstructorUsedError;
}

WalletTransactionDetails _$WalletTransactionDetailsFromJson(
    Map<String, dynamic> json) {
  return _WalletTransactionDetails.fromJson(json);
}

/// @nodoc
class _$WalletTransactionDetailsTearOff {
  const _$WalletTransactionDetailsTearOff();

  _WalletTransactionDetails call(
      @JsonKey(name: 'user_id') int? user_id,
      @JsonKey(name: 'transaction_id') String? transaction_id,
      @JsonKey(name: 'currency') String? currency,
      @JsonKey(name: 'amount') String? amount,
      @JsonKey(name: 'transaction_status') String? transaction_status,
      @JsonKey(name: 'payment_status') String? payment_status,
      @JsonKey(name: 'created_at') String? created_at,
      @JsonKey(name: 'description') String? description) {
    return _WalletTransactionDetails(
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

  WalletTransactionDetails fromJson(Map<String, Object> json) {
    return WalletTransactionDetails.fromJson(json);
  }
}

/// @nodoc
const $WalletTransactionDetails = _$WalletTransactionDetailsTearOff();

/// @nodoc
mixin _$WalletTransactionDetails {
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
  $WalletTransactionDetailsCopyWith<WalletTransactionDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletTransactionDetailsCopyWith<$Res> {
  factory $WalletTransactionDetailsCopyWith(WalletTransactionDetails value,
          $Res Function(WalletTransactionDetails) then) =
      _$WalletTransactionDetailsCopyWithImpl<$Res>;
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
class _$WalletTransactionDetailsCopyWithImpl<$Res>
    implements $WalletTransactionDetailsCopyWith<$Res> {
  _$WalletTransactionDetailsCopyWithImpl(this._value, this._then);

  final WalletTransactionDetails _value;
  // ignore: unused_field
  final $Res Function(WalletTransactionDetails) _then;

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
abstract class _$WalletTransactionDetailsCopyWith<$Res>
    implements $WalletTransactionDetailsCopyWith<$Res> {
  factory _$WalletTransactionDetailsCopyWith(_WalletTransactionDetails value,
          $Res Function(_WalletTransactionDetails) then) =
      __$WalletTransactionDetailsCopyWithImpl<$Res>;
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
class __$WalletTransactionDetailsCopyWithImpl<$Res>
    extends _$WalletTransactionDetailsCopyWithImpl<$Res>
    implements _$WalletTransactionDetailsCopyWith<$Res> {
  __$WalletTransactionDetailsCopyWithImpl(_WalletTransactionDetails _value,
      $Res Function(_WalletTransactionDetails) _then)
      : super(_value, (v) => _then(v as _WalletTransactionDetails));

  @override
  _WalletTransactionDetails get _value =>
      super._value as _WalletTransactionDetails;

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
    return _then(_WalletTransactionDetails(
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
class _$_WalletTransactionDetails implements _WalletTransactionDetails {
  const _$_WalletTransactionDetails(
      @JsonKey(name: 'user_id') this.user_id,
      @JsonKey(name: 'transaction_id') this.transaction_id,
      @JsonKey(name: 'currency') this.currency,
      @JsonKey(name: 'amount') this.amount,
      @JsonKey(name: 'transaction_status') this.transaction_status,
      @JsonKey(name: 'payment_status') this.payment_status,
      @JsonKey(name: 'created_at') this.created_at,
      @JsonKey(name: 'description') this.description);

  factory _$_WalletTransactionDetails.fromJson(Map<String, dynamic> json) =>
      _$$_WalletTransactionDetailsFromJson(json);

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
    return 'WalletTransactionDetails(user_id: $user_id, transaction_id: $transaction_id, currency: $currency, amount: $amount, transaction_status: $transaction_status, payment_status: $payment_status, created_at: $created_at, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WalletTransactionDetails &&
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
  _$WalletTransactionDetailsCopyWith<_WalletTransactionDetails> get copyWith =>
      __$WalletTransactionDetailsCopyWithImpl<_WalletTransactionDetails>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WalletTransactionDetailsToJson(this);
  }
}

abstract class _WalletTransactionDetails implements WalletTransactionDetails {
  const factory _WalletTransactionDetails(
          @JsonKey(name: 'user_id') int? user_id,
          @JsonKey(name: 'transaction_id') String? transaction_id,
          @JsonKey(name: 'currency') String? currency,
          @JsonKey(name: 'amount') String? amount,
          @JsonKey(name: 'transaction_status') String? transaction_status,
          @JsonKey(name: 'payment_status') String? payment_status,
          @JsonKey(name: 'created_at') String? created_at,
          @JsonKey(name: 'description') String? description) =
      _$_WalletTransactionDetails;

  factory _WalletTransactionDetails.fromJson(Map<String, dynamic> json) =
      _$_WalletTransactionDetails.fromJson;

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
  _$WalletTransactionDetailsCopyWith<_WalletTransactionDetails> get copyWith =>
      throw _privateConstructorUsedError;
}
