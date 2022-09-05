// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'get_plans_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PlanModel _$PlanModelFromJson(Map<String, dynamic> json) {
  return _PlanModel.fromJson(json);
}

/// @nodoc
class _$PlanModelTearOff {
  const _$PlanModelTearOff();

  _PlanModel call(Status? status, List<Subscription> plans) {
    return _PlanModel(
      status,
      plans,
    );
  }

  PlanModel fromJson(Map<String, Object> json) {
    return PlanModel.fromJson(json);
  }
}

/// @nodoc
const $PlanModel = _$PlanModelTearOff();

/// @nodoc
mixin _$PlanModel {
  Status? get status => throw _privateConstructorUsedError;
  List<Subscription> get plans => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlanModelCopyWith<PlanModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlanModelCopyWith<$Res> {
  factory $PlanModelCopyWith(PlanModel value, $Res Function(PlanModel) then) =
      _$PlanModelCopyWithImpl<$Res>;
  $Res call({Status? status, List<Subscription> plans});

  $StatusCopyWith<$Res>? get status;
}

/// @nodoc
class _$PlanModelCopyWithImpl<$Res> implements $PlanModelCopyWith<$Res> {
  _$PlanModelCopyWithImpl(this._value, this._then);

  final PlanModel _value;
  // ignore: unused_field
  final $Res Function(PlanModel) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? plans = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status?,
      plans: plans == freezed
          ? _value.plans
          : plans // ignore: cast_nullable_to_non_nullable
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
abstract class _$PlanModelCopyWith<$Res> implements $PlanModelCopyWith<$Res> {
  factory _$PlanModelCopyWith(
          _PlanModel value, $Res Function(_PlanModel) then) =
      __$PlanModelCopyWithImpl<$Res>;
  @override
  $Res call({Status? status, List<Subscription> plans});

  @override
  $StatusCopyWith<$Res>? get status;
}

/// @nodoc
class __$PlanModelCopyWithImpl<$Res> extends _$PlanModelCopyWithImpl<$Res>
    implements _$PlanModelCopyWith<$Res> {
  __$PlanModelCopyWithImpl(_PlanModel _value, $Res Function(_PlanModel) _then)
      : super(_value, (v) => _then(v as _PlanModel));

  @override
  _PlanModel get _value => super._value as _PlanModel;

  @override
  $Res call({
    Object? status = freezed,
    Object? plans = freezed,
  }) {
    return _then(_PlanModel(
      status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status?,
      plans == freezed
          ? _value.plans
          : plans // ignore: cast_nullable_to_non_nullable
              as List<Subscription>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PlanModel implements _PlanModel {
  const _$_PlanModel(this.status, this.plans);

  factory _$_PlanModel.fromJson(Map<String, dynamic> json) =>
      _$$_PlanModelFromJson(json);

  @override
  final Status? status;
  @override
  final List<Subscription> plans;

  @override
  String toString() {
    return 'PlanModel(status: $status, plans: $plans)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PlanModel &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.plans, plans) ||
                const DeepCollectionEquality().equals(other.plans, plans)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(plans);

  @JsonKey(ignore: true)
  @override
  _$PlanModelCopyWith<_PlanModel> get copyWith =>
      __$PlanModelCopyWithImpl<_PlanModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PlanModelToJson(this);
  }
}

abstract class _PlanModel implements PlanModel {
  const factory _PlanModel(Status? status, List<Subscription> plans) =
      _$_PlanModel;

  factory _PlanModel.fromJson(Map<String, dynamic> json) =
      _$_PlanModel.fromJson;

  @override
  Status? get status => throw _privateConstructorUsedError;
  @override
  List<Subscription> get plans => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PlanModelCopyWith<_PlanModel> get copyWith =>
      throw _privateConstructorUsedError;
}

Subscription _$SubscriptionFromJson(Map<String, dynamic> json) {
  return _Subscription.fromJson(json);
}

/// @nodoc
class _$SubscriptionTearOff {
  const _$SubscriptionTearOff();

  _Subscription call(
      String? id,
      String? status,
      String? plan_name,
      String? plan_type,
      String? currency,
      String? plan_price,
      String? virtual_card,
      String? bank,
      String? created_at) {
    return _Subscription(
      id,
      status,
      plan_name,
      plan_type,
      currency,
      plan_price,
      virtual_card,
      bank,
      created_at,
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
  String? get id => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get plan_name => throw _privateConstructorUsedError;
  String? get plan_type => throw _privateConstructorUsedError;
  String? get currency => throw _privateConstructorUsedError;
  String? get plan_price => throw _privateConstructorUsedError;
  String? get virtual_card => throw _privateConstructorUsedError;
  String? get bank => throw _privateConstructorUsedError;
  String? get created_at => throw _privateConstructorUsedError;

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
      {String? id,
      String? status,
      String? plan_name,
      String? plan_type,
      String? currency,
      String? plan_price,
      String? virtual_card,
      String? bank,
      String? created_at});
}

/// @nodoc
class _$SubscriptionCopyWithImpl<$Res> implements $SubscriptionCopyWith<$Res> {
  _$SubscriptionCopyWithImpl(this._value, this._then);

  final Subscription _value;
  // ignore: unused_field
  final $Res Function(Subscription) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? status = freezed,
    Object? plan_name = freezed,
    Object? plan_type = freezed,
    Object? currency = freezed,
    Object? plan_price = freezed,
    Object? virtual_card = freezed,
    Object? bank = freezed,
    Object? created_at = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      plan_name: plan_name == freezed
          ? _value.plan_name
          : plan_name // ignore: cast_nullable_to_non_nullable
              as String?,
      plan_type: plan_type == freezed
          ? _value.plan_type
          : plan_type // ignore: cast_nullable_to_non_nullable
              as String?,
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      plan_price: plan_price == freezed
          ? _value.plan_price
          : plan_price // ignore: cast_nullable_to_non_nullable
              as String?,
      virtual_card: virtual_card == freezed
          ? _value.virtual_card
          : virtual_card // ignore: cast_nullable_to_non_nullable
              as String?,
      bank: bank == freezed
          ? _value.bank
          : bank // ignore: cast_nullable_to_non_nullable
              as String?,
      created_at: created_at == freezed
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
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
      {String? id,
      String? status,
      String? plan_name,
      String? plan_type,
      String? currency,
      String? plan_price,
      String? virtual_card,
      String? bank,
      String? created_at});
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
    Object? id = freezed,
    Object? status = freezed,
    Object? plan_name = freezed,
    Object? plan_type = freezed,
    Object? currency = freezed,
    Object? plan_price = freezed,
    Object? virtual_card = freezed,
    Object? bank = freezed,
    Object? created_at = freezed,
  }) {
    return _then(_Subscription(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      plan_name == freezed
          ? _value.plan_name
          : plan_name // ignore: cast_nullable_to_non_nullable
              as String?,
      plan_type == freezed
          ? _value.plan_type
          : plan_type // ignore: cast_nullable_to_non_nullable
              as String?,
      currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      plan_price == freezed
          ? _value.plan_price
          : plan_price // ignore: cast_nullable_to_non_nullable
              as String?,
      virtual_card == freezed
          ? _value.virtual_card
          : virtual_card // ignore: cast_nullable_to_non_nullable
              as String?,
      bank == freezed
          ? _value.bank
          : bank // ignore: cast_nullable_to_non_nullable
              as String?,
      created_at == freezed
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Subscription implements _Subscription {
  const _$_Subscription(
      this.id,
      this.status,
      this.plan_name,
      this.plan_type,
      this.currency,
      this.plan_price,
      this.virtual_card,
      this.bank,
      this.created_at);

  factory _$_Subscription.fromJson(Map<String, dynamic> json) =>
      _$$_SubscriptionFromJson(json);

  @override
  final String? id;
  @override
  final String? status;
  @override
  final String? plan_name;
  @override
  final String? plan_type;
  @override
  final String? currency;
  @override
  final String? plan_price;
  @override
  final String? virtual_card;
  @override
  final String? bank;
  @override
  final String? created_at;

  @override
  String toString() {
    return 'Subscription(id: $id, status: $status, plan_name: $plan_name, plan_type: $plan_type, currency: $currency, plan_price: $plan_price, virtual_card: $virtual_card, bank: $bank, created_at: $created_at)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Subscription &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.plan_name, plan_name) ||
                const DeepCollectionEquality()
                    .equals(other.plan_name, plan_name)) &&
            (identical(other.plan_type, plan_type) ||
                const DeepCollectionEquality()
                    .equals(other.plan_type, plan_type)) &&
            (identical(other.currency, currency) ||
                const DeepCollectionEquality()
                    .equals(other.currency, currency)) &&
            (identical(other.plan_price, plan_price) ||
                const DeepCollectionEquality()
                    .equals(other.plan_price, plan_price)) &&
            (identical(other.virtual_card, virtual_card) ||
                const DeepCollectionEquality()
                    .equals(other.virtual_card, virtual_card)) &&
            (identical(other.bank, bank) ||
                const DeepCollectionEquality().equals(other.bank, bank)) &&
            (identical(other.created_at, created_at) ||
                const DeepCollectionEquality()
                    .equals(other.created_at, created_at)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(plan_name) ^
      const DeepCollectionEquality().hash(plan_type) ^
      const DeepCollectionEquality().hash(currency) ^
      const DeepCollectionEquality().hash(plan_price) ^
      const DeepCollectionEquality().hash(virtual_card) ^
      const DeepCollectionEquality().hash(bank) ^
      const DeepCollectionEquality().hash(created_at);

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
      String? id,
      String? status,
      String? plan_name,
      String? plan_type,
      String? currency,
      String? plan_price,
      String? virtual_card,
      String? bank,
      String? created_at) = _$_Subscription;

  factory _Subscription.fromJson(Map<String, dynamic> json) =
      _$_Subscription.fromJson;

  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  String? get status => throw _privateConstructorUsedError;
  @override
  String? get plan_name => throw _privateConstructorUsedError;
  @override
  String? get plan_type => throw _privateConstructorUsedError;
  @override
  String? get currency => throw _privateConstructorUsedError;
  @override
  String? get plan_price => throw _privateConstructorUsedError;
  @override
  String? get virtual_card => throw _privateConstructorUsedError;
  @override
  String? get bank => throw _privateConstructorUsedError;
  @override
  String? get created_at => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SubscriptionCopyWith<_Subscription> get copyWith =>
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
