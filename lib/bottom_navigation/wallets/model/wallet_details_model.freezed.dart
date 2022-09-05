// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'wallet_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WalletDetails _$WalletDetailsFromJson(Map<String, dynamic> json) {
  return _WalletDetails.fromJson(json);
}

/// @nodoc
class _$WalletDetailsTearOff {
  const _$WalletDetailsTearOff();

  _WalletDetails call(Status? status, List<Transaction> transactions,
      List<Balance> balance, List<Subscription> subscription) {
    return _WalletDetails(
      status,
      transactions,
      balance,
      subscription,
    );
  }

  WalletDetails fromJson(Map<String, Object> json) {
    return WalletDetails.fromJson(json);
  }
}

/// @nodoc
const $WalletDetails = _$WalletDetailsTearOff();

/// @nodoc
mixin _$WalletDetails {
  Status? get status => throw _privateConstructorUsedError;
  List<Transaction> get transactions => throw _privateConstructorUsedError;
  List<Balance> get balance => throw _privateConstructorUsedError;
  List<Subscription> get subscription => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WalletDetailsCopyWith<WalletDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletDetailsCopyWith<$Res> {
  factory $WalletDetailsCopyWith(
          WalletDetails value, $Res Function(WalletDetails) then) =
      _$WalletDetailsCopyWithImpl<$Res>;
  $Res call(
      {Status? status,
      List<Transaction> transactions,
      List<Balance> balance,
      List<Subscription> subscription});

  $StatusCopyWith<$Res>? get status;
}

/// @nodoc
class _$WalletDetailsCopyWithImpl<$Res>
    implements $WalletDetailsCopyWith<$Res> {
  _$WalletDetailsCopyWithImpl(this._value, this._then);

  final WalletDetails _value;
  // ignore: unused_field
  final $Res Function(WalletDetails) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? transactions = freezed,
    Object? balance = freezed,
    Object? subscription = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status?,
      transactions: transactions == freezed
          ? _value.transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<Transaction>,
      balance: balance == freezed
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as List<Balance>,
      subscription: subscription == freezed
          ? _value.subscription
          : subscription // ignore: cast_nullable_to_non_nullable
              as List<Subscription>,
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
abstract class _$WalletDetailsCopyWith<$Res>
    implements $WalletDetailsCopyWith<$Res> {
  factory _$WalletDetailsCopyWith(
          _WalletDetails value, $Res Function(_WalletDetails) then) =
      __$WalletDetailsCopyWithImpl<$Res>;
  @override
  $Res call(
      {Status? status,
      List<Transaction> transactions,
      List<Balance> balance,
      List<Subscription> subscription});

  @override
  $StatusCopyWith<$Res>? get status;
}

/// @nodoc
class __$WalletDetailsCopyWithImpl<$Res>
    extends _$WalletDetailsCopyWithImpl<$Res>
    implements _$WalletDetailsCopyWith<$Res> {
  __$WalletDetailsCopyWithImpl(
      _WalletDetails _value, $Res Function(_WalletDetails) _then)
      : super(_value, (v) => _then(v as _WalletDetails));

  @override
  _WalletDetails get _value => super._value as _WalletDetails;

  @override
  $Res call({
    Object? status = freezed,
    Object? transactions = freezed,
    Object? balance = freezed,
    Object? subscription = freezed,
  }) {
    return _then(_WalletDetails(
      status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status?,
      transactions == freezed
          ? _value.transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<Transaction>,
      balance == freezed
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as List<Balance>,
      subscription == freezed
          ? _value.subscription
          : subscription // ignore: cast_nullable_to_non_nullable
              as List<Subscription>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WalletDetails implements _WalletDetails {
  const _$_WalletDetails(
      this.status, this.transactions, this.balance, this.subscription);

  factory _$_WalletDetails.fromJson(Map<String, dynamic> json) =>
      _$$_WalletDetailsFromJson(json);

  @override
  final Status? status;
  @override
  final List<Transaction> transactions;
  @override
  final List<Balance> balance;
  @override
  final List<Subscription> subscription;

  @override
  String toString() {
    return 'WalletDetails(status: $status, transactions: $transactions, balance: $balance, subscription: $subscription)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WalletDetails &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.transactions, transactions) ||
                const DeepCollectionEquality()
                    .equals(other.transactions, transactions)) &&
            (identical(other.balance, balance) ||
                const DeepCollectionEquality()
                    .equals(other.balance, balance)) &&
            (identical(other.subscription, subscription) ||
                const DeepCollectionEquality()
                    .equals(other.subscription, subscription)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(transactions) ^
      const DeepCollectionEquality().hash(balance) ^
      const DeepCollectionEquality().hash(subscription);

  @JsonKey(ignore: true)
  @override
  _$WalletDetailsCopyWith<_WalletDetails> get copyWith =>
      __$WalletDetailsCopyWithImpl<_WalletDetails>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WalletDetailsToJson(this);
  }
}

abstract class _WalletDetails implements WalletDetails {
  const factory _WalletDetails(
      Status? status,
      List<Transaction> transactions,
      List<Balance> balance,
      List<Subscription> subscription) = _$_WalletDetails;

  factory _WalletDetails.fromJson(Map<String, dynamic> json) =
      _$_WalletDetails.fromJson;

  @override
  Status? get status => throw _privateConstructorUsedError;
  @override
  List<Transaction> get transactions => throw _privateConstructorUsedError;
  @override
  List<Balance> get balance => throw _privateConstructorUsedError;
  @override
  List<Subscription> get subscription => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$WalletDetailsCopyWith<_WalletDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

Balance _$BalanceFromJson(Map<String, dynamic> json) {
  return _Balance.fromJson(json);
}

/// @nodoc
class _$BalanceTearOff {
  const _$BalanceTearOff();

  _Balance call(
      String? alias,
      String? user_id,
      String? ewallet_id,
      String? balance,
      String? on_hold_balance,
      String? received_balance,
      String? reserve_balance,
      String? currency,
      String? last_updated_at) {
    return _Balance(
      alias,
      user_id,
      ewallet_id,
      balance,
      on_hold_balance,
      received_balance,
      reserve_balance,
      currency,
      last_updated_at,
    );
  }

  Balance fromJson(Map<String, Object> json) {
    return Balance.fromJson(json);
  }
}

/// @nodoc
const $Balance = _$BalanceTearOff();

/// @nodoc
mixin _$Balance {
  String? get alias => throw _privateConstructorUsedError;
  String? get user_id => throw _privateConstructorUsedError;
  String? get ewallet_id => throw _privateConstructorUsedError;
  String? get balance => throw _privateConstructorUsedError;
  String? get on_hold_balance => throw _privateConstructorUsedError;
  String? get received_balance => throw _privateConstructorUsedError;
  String? get reserve_balance => throw _privateConstructorUsedError;
  String? get currency => throw _privateConstructorUsedError;
  String? get last_updated_at => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BalanceCopyWith<Balance> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BalanceCopyWith<$Res> {
  factory $BalanceCopyWith(Balance value, $Res Function(Balance) then) =
      _$BalanceCopyWithImpl<$Res>;
  $Res call(
      {String? alias,
      String? user_id,
      String? ewallet_id,
      String? balance,
      String? on_hold_balance,
      String? received_balance,
      String? reserve_balance,
      String? currency,
      String? last_updated_at});
}

/// @nodoc
class _$BalanceCopyWithImpl<$Res> implements $BalanceCopyWith<$Res> {
  _$BalanceCopyWithImpl(this._value, this._then);

  final Balance _value;
  // ignore: unused_field
  final $Res Function(Balance) _then;

  @override
  $Res call({
    Object? alias = freezed,
    Object? user_id = freezed,
    Object? ewallet_id = freezed,
    Object? balance = freezed,
    Object? on_hold_balance = freezed,
    Object? received_balance = freezed,
    Object? reserve_balance = freezed,
    Object? currency = freezed,
    Object? last_updated_at = freezed,
  }) {
    return _then(_value.copyWith(
      alias: alias == freezed
          ? _value.alias
          : alias // ignore: cast_nullable_to_non_nullable
              as String?,
      user_id: user_id == freezed
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as String?,
      ewallet_id: ewallet_id == freezed
          ? _value.ewallet_id
          : ewallet_id // ignore: cast_nullable_to_non_nullable
              as String?,
      balance: balance == freezed
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as String?,
      on_hold_balance: on_hold_balance == freezed
          ? _value.on_hold_balance
          : on_hold_balance // ignore: cast_nullable_to_non_nullable
              as String?,
      received_balance: received_balance == freezed
          ? _value.received_balance
          : received_balance // ignore: cast_nullable_to_non_nullable
              as String?,
      reserve_balance: reserve_balance == freezed
          ? _value.reserve_balance
          : reserve_balance // ignore: cast_nullable_to_non_nullable
              as String?,
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      last_updated_at: last_updated_at == freezed
          ? _value.last_updated_at
          : last_updated_at // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$BalanceCopyWith<$Res> implements $BalanceCopyWith<$Res> {
  factory _$BalanceCopyWith(_Balance value, $Res Function(_Balance) then) =
      __$BalanceCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? alias,
      String? user_id,
      String? ewallet_id,
      String? balance,
      String? on_hold_balance,
      String? received_balance,
      String? reserve_balance,
      String? currency,
      String? last_updated_at});
}

/// @nodoc
class __$BalanceCopyWithImpl<$Res> extends _$BalanceCopyWithImpl<$Res>
    implements _$BalanceCopyWith<$Res> {
  __$BalanceCopyWithImpl(_Balance _value, $Res Function(_Balance) _then)
      : super(_value, (v) => _then(v as _Balance));

  @override
  _Balance get _value => super._value as _Balance;

  @override
  $Res call({
    Object? alias = freezed,
    Object? user_id = freezed,
    Object? ewallet_id = freezed,
    Object? balance = freezed,
    Object? on_hold_balance = freezed,
    Object? received_balance = freezed,
    Object? reserve_balance = freezed,
    Object? currency = freezed,
    Object? last_updated_at = freezed,
  }) {
    return _then(_Balance(
      alias == freezed
          ? _value.alias
          : alias // ignore: cast_nullable_to_non_nullable
              as String?,
      user_id == freezed
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as String?,
      ewallet_id == freezed
          ? _value.ewallet_id
          : ewallet_id // ignore: cast_nullable_to_non_nullable
              as String?,
      balance == freezed
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as String?,
      on_hold_balance == freezed
          ? _value.on_hold_balance
          : on_hold_balance // ignore: cast_nullable_to_non_nullable
              as String?,
      received_balance == freezed
          ? _value.received_balance
          : received_balance // ignore: cast_nullable_to_non_nullable
              as String?,
      reserve_balance == freezed
          ? _value.reserve_balance
          : reserve_balance // ignore: cast_nullable_to_non_nullable
              as String?,
      currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
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
class _$_Balance implements _Balance {
  const _$_Balance(
      this.alias,
      this.user_id,
      this.ewallet_id,
      this.balance,
      this.on_hold_balance,
      this.received_balance,
      this.reserve_balance,
      this.currency,
      this.last_updated_at);

  factory _$_Balance.fromJson(Map<String, dynamic> json) =>
      _$$_BalanceFromJson(json);

  @override
  final String? alias;
  @override
  final String? user_id;
  @override
  final String? ewallet_id;
  @override
  final String? balance;
  @override
  final String? on_hold_balance;
  @override
  final String? received_balance;
  @override
  final String? reserve_balance;
  @override
  final String? currency;
  @override
  final String? last_updated_at;

  @override
  String toString() {
    return 'Balance(alias: $alias, user_id: $user_id, ewallet_id: $ewallet_id, balance: $balance, on_hold_balance: $on_hold_balance, received_balance: $received_balance, reserve_balance: $reserve_balance, currency: $currency, last_updated_at: $last_updated_at)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Balance &&
            (identical(other.alias, alias) ||
                const DeepCollectionEquality().equals(other.alias, alias)) &&
            (identical(other.user_id, user_id) ||
                const DeepCollectionEquality()
                    .equals(other.user_id, user_id)) &&
            (identical(other.ewallet_id, ewallet_id) ||
                const DeepCollectionEquality()
                    .equals(other.ewallet_id, ewallet_id)) &&
            (identical(other.balance, balance) ||
                const DeepCollectionEquality()
                    .equals(other.balance, balance)) &&
            (identical(other.on_hold_balance, on_hold_balance) ||
                const DeepCollectionEquality()
                    .equals(other.on_hold_balance, on_hold_balance)) &&
            (identical(other.received_balance, received_balance) ||
                const DeepCollectionEquality()
                    .equals(other.received_balance, received_balance)) &&
            (identical(other.reserve_balance, reserve_balance) ||
                const DeepCollectionEquality()
                    .equals(other.reserve_balance, reserve_balance)) &&
            (identical(other.currency, currency) ||
                const DeepCollectionEquality()
                    .equals(other.currency, currency)) &&
            (identical(other.last_updated_at, last_updated_at) ||
                const DeepCollectionEquality()
                    .equals(other.last_updated_at, last_updated_at)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(alias) ^
      const DeepCollectionEquality().hash(user_id) ^
      const DeepCollectionEquality().hash(ewallet_id) ^
      const DeepCollectionEquality().hash(balance) ^
      const DeepCollectionEquality().hash(on_hold_balance) ^
      const DeepCollectionEquality().hash(received_balance) ^
      const DeepCollectionEquality().hash(reserve_balance) ^
      const DeepCollectionEquality().hash(currency) ^
      const DeepCollectionEquality().hash(last_updated_at);

  @JsonKey(ignore: true)
  @override
  _$BalanceCopyWith<_Balance> get copyWith =>
      __$BalanceCopyWithImpl<_Balance>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BalanceToJson(this);
  }
}

abstract class _Balance implements Balance {
  const factory _Balance(
      String? alias,
      String? user_id,
      String? ewallet_id,
      String? balance,
      String? on_hold_balance,
      String? received_balance,
      String? reserve_balance,
      String? currency,
      String? last_updated_at) = _$_Balance;

  factory _Balance.fromJson(Map<String, dynamic> json) = _$_Balance.fromJson;

  @override
  String? get alias => throw _privateConstructorUsedError;
  @override
  String? get user_id => throw _privateConstructorUsedError;
  @override
  String? get ewallet_id => throw _privateConstructorUsedError;
  @override
  String? get balance => throw _privateConstructorUsedError;
  @override
  String? get on_hold_balance => throw _privateConstructorUsedError;
  @override
  String? get received_balance => throw _privateConstructorUsedError;
  @override
  String? get reserve_balance => throw _privateConstructorUsedError;
  @override
  String? get currency => throw _privateConstructorUsedError;
  @override
  String? get last_updated_at => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BalanceCopyWith<_Balance> get copyWith =>
      throw _privateConstructorUsedError;
}

Subscription _$SubscriptionFromJson(Map<String, dynamic> json) {
  return _Subscription.fromJson(json);
}

/// @nodoc
class _$SubscriptionTearOff {
  const _$SubscriptionTearOff();

  _Subscription call(
      String? email_id,
      String? user_id,
      String? ewallet_id,
      String? id,
      String? plan_id,
      String? plan_name,
      String? plan_type,
      String? plan_currency,
      String? plan_price,
      String? start_date,
      String? end_date,
      String? transaction_id,
      String? coupon) {
    return _Subscription(
      email_id,
      user_id,
      ewallet_id,
      id,
      plan_id,
      plan_name,
      plan_type,
      plan_currency,
      plan_price,
      start_date,
      end_date,
      transaction_id,
      coupon,
    );
  }

  Subscription fromJson(Map<String, Object> json) {
    return Subscription.fromJson(json);
  }
}

/// @nodoc
const $Subscription = _$SubscriptionTearOff();

/// @nodoc
mixin _$Subscription {
  String? get email_id => throw _privateConstructorUsedError;
  String? get user_id => throw _privateConstructorUsedError;
  String? get ewallet_id => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  String? get plan_id => throw _privateConstructorUsedError;
  String? get plan_name => throw _privateConstructorUsedError;
  String? get plan_type => throw _privateConstructorUsedError;
  String? get plan_currency => throw _privateConstructorUsedError;
  String? get plan_price => throw _privateConstructorUsedError;
  String? get start_date => throw _privateConstructorUsedError;
  String? get end_date => throw _privateConstructorUsedError;
  String? get transaction_id => throw _privateConstructorUsedError;
  String? get coupon => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubscriptionCopyWith<Subscription> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscriptionCopyWith<$Res> {
  factory $SubscriptionCopyWith(
          Subscription value, $Res Function(Subscription) then) =
      _$SubscriptionCopyWithImpl<$Res>;
  $Res call(
      {String? email_id,
      String? user_id,
      String? ewallet_id,
      String? id,
      String? plan_id,
      String? plan_name,
      String? plan_type,
      String? plan_currency,
      String? plan_price,
      String? start_date,
      String? end_date,
      String? transaction_id,
      String? coupon});
}

/// @nodoc
class _$SubscriptionCopyWithImpl<$Res> implements $SubscriptionCopyWith<$Res> {
  _$SubscriptionCopyWithImpl(this._value, this._then);

  final Subscription _value;
  // ignore: unused_field
  final $Res Function(Subscription) _then;

  @override
  $Res call({
    Object? email_id = freezed,
    Object? user_id = freezed,
    Object? ewallet_id = freezed,
    Object? id = freezed,
    Object? plan_id = freezed,
    Object? plan_name = freezed,
    Object? plan_type = freezed,
    Object? plan_currency = freezed,
    Object? plan_price = freezed,
    Object? start_date = freezed,
    Object? end_date = freezed,
    Object? transaction_id = freezed,
    Object? coupon = freezed,
  }) {
    return _then(_value.copyWith(
      email_id: email_id == freezed
          ? _value.email_id
          : email_id // ignore: cast_nullable_to_non_nullable
              as String?,
      user_id: user_id == freezed
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as String?,
      ewallet_id: ewallet_id == freezed
          ? _value.ewallet_id
          : ewallet_id // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      plan_id: plan_id == freezed
          ? _value.plan_id
          : plan_id // ignore: cast_nullable_to_non_nullable
              as String?,
      plan_name: plan_name == freezed
          ? _value.plan_name
          : plan_name // ignore: cast_nullable_to_non_nullable
              as String?,
      plan_type: plan_type == freezed
          ? _value.plan_type
          : plan_type // ignore: cast_nullable_to_non_nullable
              as String?,
      plan_currency: plan_currency == freezed
          ? _value.plan_currency
          : plan_currency // ignore: cast_nullable_to_non_nullable
              as String?,
      plan_price: plan_price == freezed
          ? _value.plan_price
          : plan_price // ignore: cast_nullable_to_non_nullable
              as String?,
      start_date: start_date == freezed
          ? _value.start_date
          : start_date // ignore: cast_nullable_to_non_nullable
              as String?,
      end_date: end_date == freezed
          ? _value.end_date
          : end_date // ignore: cast_nullable_to_non_nullable
              as String?,
      transaction_id: transaction_id == freezed
          ? _value.transaction_id
          : transaction_id // ignore: cast_nullable_to_non_nullable
              as String?,
      coupon: coupon == freezed
          ? _value.coupon
          : coupon // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$SubscriptionCopyWith<$Res>
    implements $SubscriptionCopyWith<$Res> {
  factory _$SubscriptionCopyWith(
          _Subscription value, $Res Function(_Subscription) then) =
      __$SubscriptionCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? email_id,
      String? user_id,
      String? ewallet_id,
      String? id,
      String? plan_id,
      String? plan_name,
      String? plan_type,
      String? plan_currency,
      String? plan_price,
      String? start_date,
      String? end_date,
      String? transaction_id,
      String? coupon});
}

/// @nodoc
class __$SubscriptionCopyWithImpl<$Res> extends _$SubscriptionCopyWithImpl<$Res>
    implements _$SubscriptionCopyWith<$Res> {
  __$SubscriptionCopyWithImpl(
      _Subscription _value, $Res Function(_Subscription) _then)
      : super(_value, (v) => _then(v as _Subscription));

  @override
  _Subscription get _value => super._value as _Subscription;

  @override
  $Res call({
    Object? email_id = freezed,
    Object? user_id = freezed,
    Object? ewallet_id = freezed,
    Object? id = freezed,
    Object? plan_id = freezed,
    Object? plan_name = freezed,
    Object? plan_type = freezed,
    Object? plan_currency = freezed,
    Object? plan_price = freezed,
    Object? start_date = freezed,
    Object? end_date = freezed,
    Object? transaction_id = freezed,
    Object? coupon = freezed,
  }) {
    return _then(_Subscription(
      email_id == freezed
          ? _value.email_id
          : email_id // ignore: cast_nullable_to_non_nullable
              as String?,
      user_id == freezed
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as String?,
      ewallet_id == freezed
          ? _value.ewallet_id
          : ewallet_id // ignore: cast_nullable_to_non_nullable
              as String?,
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      plan_id == freezed
          ? _value.plan_id
          : plan_id // ignore: cast_nullable_to_non_nullable
              as String?,
      plan_name == freezed
          ? _value.plan_name
          : plan_name // ignore: cast_nullable_to_non_nullable
              as String?,
      plan_type == freezed
          ? _value.plan_type
          : plan_type // ignore: cast_nullable_to_non_nullable
              as String?,
      plan_currency == freezed
          ? _value.plan_currency
          : plan_currency // ignore: cast_nullable_to_non_nullable
              as String?,
      plan_price == freezed
          ? _value.plan_price
          : plan_price // ignore: cast_nullable_to_non_nullable
              as String?,
      start_date == freezed
          ? _value.start_date
          : start_date // ignore: cast_nullable_to_non_nullable
              as String?,
      end_date == freezed
          ? _value.end_date
          : end_date // ignore: cast_nullable_to_non_nullable
              as String?,
      transaction_id == freezed
          ? _value.transaction_id
          : transaction_id // ignore: cast_nullable_to_non_nullable
              as String?,
      coupon == freezed
          ? _value.coupon
          : coupon // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Subscription implements _Subscription {
  const _$_Subscription(
      this.email_id,
      this.user_id,
      this.ewallet_id,
      this.id,
      this.plan_id,
      this.plan_name,
      this.plan_type,
      this.plan_currency,
      this.plan_price,
      this.start_date,
      this.end_date,
      this.transaction_id,
      this.coupon);

  factory _$_Subscription.fromJson(Map<String, dynamic> json) =>
      _$$_SubscriptionFromJson(json);

  @override
  final String? email_id;
  @override
  final String? user_id;
  @override
  final String? ewallet_id;
  @override
  final String? id;
  @override
  final String? plan_id;
  @override
  final String? plan_name;
  @override
  final String? plan_type;
  @override
  final String? plan_currency;
  @override
  final String? plan_price;
  @override
  final String? start_date;
  @override
  final String? end_date;
  @override
  final String? transaction_id;
  @override
  final String? coupon;

  @override
  String toString() {
    return 'Subscription(email_id: $email_id, user_id: $user_id, ewallet_id: $ewallet_id, id: $id, plan_id: $plan_id, plan_name: $plan_name, plan_type: $plan_type, plan_currency: $plan_currency, plan_price: $plan_price, start_date: $start_date, end_date: $end_date, transaction_id: $transaction_id, coupon: $coupon)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Subscription &&
            (identical(other.email_id, email_id) ||
                const DeepCollectionEquality()
                    .equals(other.email_id, email_id)) &&
            (identical(other.user_id, user_id) ||
                const DeepCollectionEquality()
                    .equals(other.user_id, user_id)) &&
            (identical(other.ewallet_id, ewallet_id) ||
                const DeepCollectionEquality()
                    .equals(other.ewallet_id, ewallet_id)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.plan_id, plan_id) ||
                const DeepCollectionEquality()
                    .equals(other.plan_id, plan_id)) &&
            (identical(other.plan_name, plan_name) ||
                const DeepCollectionEquality()
                    .equals(other.plan_name, plan_name)) &&
            (identical(other.plan_type, plan_type) ||
                const DeepCollectionEquality()
                    .equals(other.plan_type, plan_type)) &&
            (identical(other.plan_currency, plan_currency) ||
                const DeepCollectionEquality()
                    .equals(other.plan_currency, plan_currency)) &&
            (identical(other.plan_price, plan_price) ||
                const DeepCollectionEquality()
                    .equals(other.plan_price, plan_price)) &&
            (identical(other.start_date, start_date) ||
                const DeepCollectionEquality()
                    .equals(other.start_date, start_date)) &&
            (identical(other.end_date, end_date) ||
                const DeepCollectionEquality()
                    .equals(other.end_date, end_date)) &&
            (identical(other.transaction_id, transaction_id) ||
                const DeepCollectionEquality()
                    .equals(other.transaction_id, transaction_id)) &&
            (identical(other.coupon, coupon) ||
                const DeepCollectionEquality().equals(other.coupon, coupon)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(email_id) ^
      const DeepCollectionEquality().hash(user_id) ^
      const DeepCollectionEquality().hash(ewallet_id) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(plan_id) ^
      const DeepCollectionEquality().hash(plan_name) ^
      const DeepCollectionEquality().hash(plan_type) ^
      const DeepCollectionEquality().hash(plan_currency) ^
      const DeepCollectionEquality().hash(plan_price) ^
      const DeepCollectionEquality().hash(start_date) ^
      const DeepCollectionEquality().hash(end_date) ^
      const DeepCollectionEquality().hash(transaction_id) ^
      const DeepCollectionEquality().hash(coupon);

  @JsonKey(ignore: true)
  @override
  _$SubscriptionCopyWith<_Subscription> get copyWith =>
      __$SubscriptionCopyWithImpl<_Subscription>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SubscriptionToJson(this);
  }
}

abstract class _Subscription implements Subscription {
  const factory _Subscription(
      String? email_id,
      String? user_id,
      String? ewallet_id,
      String? id,
      String? plan_id,
      String? plan_name,
      String? plan_type,
      String? plan_currency,
      String? plan_price,
      String? start_date,
      String? end_date,
      String? transaction_id,
      String? coupon) = _$_Subscription;

  factory _Subscription.fromJson(Map<String, dynamic> json) =
      _$_Subscription.fromJson;

  @override
  String? get email_id => throw _privateConstructorUsedError;
  @override
  String? get user_id => throw _privateConstructorUsedError;
  @override
  String? get ewallet_id => throw _privateConstructorUsedError;
  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  String? get plan_id => throw _privateConstructorUsedError;
  @override
  String? get plan_name => throw _privateConstructorUsedError;
  @override
  String? get plan_type => throw _privateConstructorUsedError;
  @override
  String? get plan_currency => throw _privateConstructorUsedError;
  @override
  String? get plan_price => throw _privateConstructorUsedError;
  @override
  String? get start_date => throw _privateConstructorUsedError;
  @override
  String? get end_date => throw _privateConstructorUsedError;
  @override
  String? get transaction_id => throw _privateConstructorUsedError;
  @override
  String? get coupon => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SubscriptionCopyWith<_Subscription> get copyWith =>
      throw _privateConstructorUsedError;
}

Transaction _$TransactionFromJson(Map<String, dynamic> json) {
  return _Transaction.fromJson(json);
}

/// @nodoc
class _$TransactionTearOff {
  const _$TransactionTearOff();

  _Transaction call(
      String? transaction_id,
      String? user_id,
      String? transaction_status,
      String? amount,
      String? payment_status,
      String? created_at,
      String? description,
      String? currency) {
    return _Transaction(
      transaction_id,
      user_id,
      transaction_status,
      amount,
      payment_status,
      created_at,
      description,
      currency,
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
  String? get transaction_id => throw _privateConstructorUsedError;
  String? get user_id => throw _privateConstructorUsedError;
  String? get transaction_status => throw _privateConstructorUsedError;
  String? get amount => throw _privateConstructorUsedError;
  String? get payment_status => throw _privateConstructorUsedError;
  String? get created_at => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get currency => throw _privateConstructorUsedError;

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
      {String? transaction_id,
      String? user_id,
      String? transaction_status,
      String? amount,
      String? payment_status,
      String? created_at,
      String? description,
      String? currency});
}

/// @nodoc
class _$TransactionCopyWithImpl<$Res> implements $TransactionCopyWith<$Res> {
  _$TransactionCopyWithImpl(this._value, this._then);

  final Transaction _value;
  // ignore: unused_field
  final $Res Function(Transaction) _then;

  @override
  $Res call({
    Object? transaction_id = freezed,
    Object? user_id = freezed,
    Object? transaction_status = freezed,
    Object? amount = freezed,
    Object? payment_status = freezed,
    Object? created_at = freezed,
    Object? description = freezed,
    Object? currency = freezed,
  }) {
    return _then(_value.copyWith(
      transaction_id: transaction_id == freezed
          ? _value.transaction_id
          : transaction_id // ignore: cast_nullable_to_non_nullable
              as String?,
      user_id: user_id == freezed
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as String?,
      transaction_status: transaction_status == freezed
          ? _value.transaction_status
          : transaction_status // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
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
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
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
      {String? transaction_id,
      String? user_id,
      String? transaction_status,
      String? amount,
      String? payment_status,
      String? created_at,
      String? description,
      String? currency});
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
    Object? transaction_id = freezed,
    Object? user_id = freezed,
    Object? transaction_status = freezed,
    Object? amount = freezed,
    Object? payment_status = freezed,
    Object? created_at = freezed,
    Object? description = freezed,
    Object? currency = freezed,
  }) {
    return _then(_Transaction(
      transaction_id == freezed
          ? _value.transaction_id
          : transaction_id // ignore: cast_nullable_to_non_nullable
              as String?,
      user_id == freezed
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as String?,
      transaction_status == freezed
          ? _value.transaction_status
          : transaction_status // ignore: cast_nullable_to_non_nullable
              as String?,
      amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
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
      currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Transaction implements _Transaction {
  const _$_Transaction(
      this.transaction_id,
      this.user_id,
      this.transaction_status,
      this.amount,
      this.payment_status,
      this.created_at,
      this.description,
      this.currency);

  factory _$_Transaction.fromJson(Map<String, dynamic> json) =>
      _$$_TransactionFromJson(json);

  @override
  final String? transaction_id;
  @override
  final String? user_id;
  @override
  final String? transaction_status;
  @override
  final String? amount;
  @override
  final String? payment_status;
  @override
  final String? created_at;
  @override
  final String? description;
  @override
  final String? currency;

  @override
  String toString() {
    return 'Transaction(transaction_id: $transaction_id, user_id: $user_id, transaction_status: $transaction_status, amount: $amount, payment_status: $payment_status, created_at: $created_at, description: $description, currency: $currency)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Transaction &&
            (identical(other.transaction_id, transaction_id) ||
                const DeepCollectionEquality()
                    .equals(other.transaction_id, transaction_id)) &&
            (identical(other.user_id, user_id) ||
                const DeepCollectionEquality()
                    .equals(other.user_id, user_id)) &&
            (identical(other.transaction_status, transaction_status) ||
                const DeepCollectionEquality()
                    .equals(other.transaction_status, transaction_status)) &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.payment_status, payment_status) ||
                const DeepCollectionEquality()
                    .equals(other.payment_status, payment_status)) &&
            (identical(other.created_at, created_at) ||
                const DeepCollectionEquality()
                    .equals(other.created_at, created_at)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.currency, currency) ||
                const DeepCollectionEquality()
                    .equals(other.currency, currency)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(transaction_id) ^
      const DeepCollectionEquality().hash(user_id) ^
      const DeepCollectionEquality().hash(transaction_status) ^
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(payment_status) ^
      const DeepCollectionEquality().hash(created_at) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(currency);

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
  const factory _Transaction(
      String? transaction_id,
      String? user_id,
      String? transaction_status,
      String? amount,
      String? payment_status,
      String? created_at,
      String? description,
      String? currency) = _$_Transaction;

  factory _Transaction.fromJson(Map<String, dynamic> json) =
      _$_Transaction.fromJson;

  @override
  String? get transaction_id => throw _privateConstructorUsedError;
  @override
  String? get user_id => throw _privateConstructorUsedError;
  @override
  String? get transaction_status => throw _privateConstructorUsedError;
  @override
  String? get amount => throw _privateConstructorUsedError;
  @override
  String? get payment_status => throw _privateConstructorUsedError;
  @override
  String? get created_at => throw _privateConstructorUsedError;
  @override
  String? get description => throw _privateConstructorUsedError;
  @override
  String? get currency => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TransactionCopyWith<_Transaction> get copyWith =>
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
