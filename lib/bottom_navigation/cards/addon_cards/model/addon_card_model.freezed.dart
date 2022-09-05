// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'addon_card_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AddonCardModel _$AddonCardModelFromJson(Map<String, dynamic> json) {
  return _AddonCardModel.fromJson(json);
}

/// @nodoc
class _$AddonCardModelTearOff {
  const _$AddonCardModelTearOff();

  _AddonCardModel call(List<AddonCard> addon_cards, Data? status) {
    return _AddonCardModel(
      addon_cards,
      status,
    );
  }

  AddonCardModel fromJson(Map<String, Object> json) {
    return AddonCardModel.fromJson(json);
  }
}

/// @nodoc
const $AddonCardModel = _$AddonCardModelTearOff();

/// @nodoc
mixin _$AddonCardModel {
  List<AddonCard> get addon_cards => throw _privateConstructorUsedError;
  Data? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddonCardModelCopyWith<AddonCardModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddonCardModelCopyWith<$Res> {
  factory $AddonCardModelCopyWith(
          AddonCardModel value, $Res Function(AddonCardModel) then) =
      _$AddonCardModelCopyWithImpl<$Res>;
  $Res call({List<AddonCard> addon_cards, Data? status});

  $DataCopyWith<$Res>? get status;
}

/// @nodoc
class _$AddonCardModelCopyWithImpl<$Res>
    implements $AddonCardModelCopyWith<$Res> {
  _$AddonCardModelCopyWithImpl(this._value, this._then);

  final AddonCardModel _value;
  // ignore: unused_field
  final $Res Function(AddonCardModel) _then;

  @override
  $Res call({
    Object? addon_cards = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      addon_cards: addon_cards == freezed
          ? _value.addon_cards
          : addon_cards // ignore: cast_nullable_to_non_nullable
              as List<AddonCard>,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Data?,
    ));
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
abstract class _$AddonCardModelCopyWith<$Res>
    implements $AddonCardModelCopyWith<$Res> {
  factory _$AddonCardModelCopyWith(
          _AddonCardModel value, $Res Function(_AddonCardModel) then) =
      __$AddonCardModelCopyWithImpl<$Res>;
  @override
  $Res call({List<AddonCard> addon_cards, Data? status});

  @override
  $DataCopyWith<$Res>? get status;
}

/// @nodoc
class __$AddonCardModelCopyWithImpl<$Res>
    extends _$AddonCardModelCopyWithImpl<$Res>
    implements _$AddonCardModelCopyWith<$Res> {
  __$AddonCardModelCopyWithImpl(
      _AddonCardModel _value, $Res Function(_AddonCardModel) _then)
      : super(_value, (v) => _then(v as _AddonCardModel));

  @override
  _AddonCardModel get _value => super._value as _AddonCardModel;

  @override
  $Res call({
    Object? addon_cards = freezed,
    Object? status = freezed,
  }) {
    return _then(_AddonCardModel(
      addon_cards == freezed
          ? _value.addon_cards
          : addon_cards // ignore: cast_nullable_to_non_nullable
              as List<AddonCard>,
      status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Data?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AddonCardModel implements _AddonCardModel {
  const _$_AddonCardModel(this.addon_cards, this.status);

  factory _$_AddonCardModel.fromJson(Map<String, dynamic> json) =>
      _$$_AddonCardModelFromJson(json);

  @override
  final List<AddonCard> addon_cards;
  @override
  final Data? status;

  @override
  String toString() {
    return 'AddonCardModel(addon_cards: $addon_cards, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddonCardModel &&
            (identical(other.addon_cards, addon_cards) ||
                const DeepCollectionEquality()
                    .equals(other.addon_cards, addon_cards)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(addon_cards) ^
      const DeepCollectionEquality().hash(status);

  @JsonKey(ignore: true)
  @override
  _$AddonCardModelCopyWith<_AddonCardModel> get copyWith =>
      __$AddonCardModelCopyWithImpl<_AddonCardModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AddonCardModelToJson(this);
  }
}

abstract class _AddonCardModel implements AddonCardModel {
  const factory _AddonCardModel(List<AddonCard> addon_cards, Data? status) =
      _$_AddonCardModel;

  factory _AddonCardModel.fromJson(Map<String, dynamic> json) =
      _$_AddonCardModel.fromJson;

  @override
  List<AddonCard> get addon_cards => throw _privateConstructorUsedError;
  @override
  Data? get status => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AddonCardModelCopyWith<_AddonCardModel> get copyWith =>
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

AddonCard _$AddonCardFromJson(Map<String, dynamic> json) {
  return _AddonCard.fromJson(json);
}

/// @nodoc
class _$AddonCardTearOff {
  const _$AddonCardTearOff();

  _AddonCard call(
      String? id,
      String? user_id,
      String? email_id,
      String? ewallet_id,
      String? card_id,
      String? currency,
      String? nameoncard) {
    return _AddonCard(
      id,
      user_id,
      email_id,
      ewallet_id,
      card_id,
      currency,
      nameoncard,
    );
  }

  AddonCard fromJson(Map<String, Object> json) {
    return AddonCard.fromJson(json);
  }
}

/// @nodoc
const $AddonCard = _$AddonCardTearOff();

/// @nodoc
mixin _$AddonCard {
  String? get id => throw _privateConstructorUsedError;
  String? get user_id => throw _privateConstructorUsedError;
  String? get email_id => throw _privateConstructorUsedError;
  String? get ewallet_id => throw _privateConstructorUsedError;
  String? get card_id => throw _privateConstructorUsedError;
  String? get currency => throw _privateConstructorUsedError;
  String? get nameoncard => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddonCardCopyWith<AddonCard> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddonCardCopyWith<$Res> {
  factory $AddonCardCopyWith(AddonCard value, $Res Function(AddonCard) then) =
      _$AddonCardCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String? user_id,
      String? email_id,
      String? ewallet_id,
      String? card_id,
      String? currency,
      String? nameoncard});
}

/// @nodoc
class _$AddonCardCopyWithImpl<$Res> implements $AddonCardCopyWith<$Res> {
  _$AddonCardCopyWithImpl(this._value, this._then);

  final AddonCard _value;
  // ignore: unused_field
  final $Res Function(AddonCard) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? user_id = freezed,
    Object? email_id = freezed,
    Object? ewallet_id = freezed,
    Object? card_id = freezed,
    Object? currency = freezed,
    Object? nameoncard = freezed,
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
      email_id: email_id == freezed
          ? _value.email_id
          : email_id // ignore: cast_nullable_to_non_nullable
              as String?,
      ewallet_id: ewallet_id == freezed
          ? _value.ewallet_id
          : ewallet_id // ignore: cast_nullable_to_non_nullable
              as String?,
      card_id: card_id == freezed
          ? _value.card_id
          : card_id // ignore: cast_nullable_to_non_nullable
              as String?,
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      nameoncard: nameoncard == freezed
          ? _value.nameoncard
          : nameoncard // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$AddonCardCopyWith<$Res> implements $AddonCardCopyWith<$Res> {
  factory _$AddonCardCopyWith(
          _AddonCard value, $Res Function(_AddonCard) then) =
      __$AddonCardCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String? user_id,
      String? email_id,
      String? ewallet_id,
      String? card_id,
      String? currency,
      String? nameoncard});
}

/// @nodoc
class __$AddonCardCopyWithImpl<$Res> extends _$AddonCardCopyWithImpl<$Res>
    implements _$AddonCardCopyWith<$Res> {
  __$AddonCardCopyWithImpl(_AddonCard _value, $Res Function(_AddonCard) _then)
      : super(_value, (v) => _then(v as _AddonCard));

  @override
  _AddonCard get _value => super._value as _AddonCard;

  @override
  $Res call({
    Object? id = freezed,
    Object? user_id = freezed,
    Object? email_id = freezed,
    Object? ewallet_id = freezed,
    Object? card_id = freezed,
    Object? currency = freezed,
    Object? nameoncard = freezed,
  }) {
    return _then(_AddonCard(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      user_id == freezed
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as String?,
      email_id == freezed
          ? _value.email_id
          : email_id // ignore: cast_nullable_to_non_nullable
              as String?,
      ewallet_id == freezed
          ? _value.ewallet_id
          : ewallet_id // ignore: cast_nullable_to_non_nullable
              as String?,
      card_id == freezed
          ? _value.card_id
          : card_id // ignore: cast_nullable_to_non_nullable
              as String?,
      currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      nameoncard == freezed
          ? _value.nameoncard
          : nameoncard // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AddonCard implements _AddonCard {
  const _$_AddonCard(this.id, this.user_id, this.email_id, this.ewallet_id,
      this.card_id, this.currency, this.nameoncard);

  factory _$_AddonCard.fromJson(Map<String, dynamic> json) =>
      _$$_AddonCardFromJson(json);

  @override
  final String? id;
  @override
  final String? user_id;
  @override
  final String? email_id;
  @override
  final String? ewallet_id;
  @override
  final String? card_id;
  @override
  final String? currency;
  @override
  final String? nameoncard;

  @override
  String toString() {
    return 'AddonCard(id: $id, user_id: $user_id, email_id: $email_id, ewallet_id: $ewallet_id, card_id: $card_id, currency: $currency, nameoncard: $nameoncard)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddonCard &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.user_id, user_id) ||
                const DeepCollectionEquality()
                    .equals(other.user_id, user_id)) &&
            (identical(other.email_id, email_id) ||
                const DeepCollectionEquality()
                    .equals(other.email_id, email_id)) &&
            (identical(other.ewallet_id, ewallet_id) ||
                const DeepCollectionEquality()
                    .equals(other.ewallet_id, ewallet_id)) &&
            (identical(other.card_id, card_id) ||
                const DeepCollectionEquality()
                    .equals(other.card_id, card_id)) &&
            (identical(other.currency, currency) ||
                const DeepCollectionEquality()
                    .equals(other.currency, currency)) &&
            (identical(other.nameoncard, nameoncard) ||
                const DeepCollectionEquality()
                    .equals(other.nameoncard, nameoncard)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(user_id) ^
      const DeepCollectionEquality().hash(email_id) ^
      const DeepCollectionEquality().hash(ewallet_id) ^
      const DeepCollectionEquality().hash(card_id) ^
      const DeepCollectionEquality().hash(currency) ^
      const DeepCollectionEquality().hash(nameoncard);

  @JsonKey(ignore: true)
  @override
  _$AddonCardCopyWith<_AddonCard> get copyWith =>
      __$AddonCardCopyWithImpl<_AddonCard>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AddonCardToJson(this);
  }
}

abstract class _AddonCard implements AddonCard {
  const factory _AddonCard(
      String? id,
      String? user_id,
      String? email_id,
      String? ewallet_id,
      String? card_id,
      String? currency,
      String? nameoncard) = _$_AddonCard;

  factory _AddonCard.fromJson(Map<String, dynamic> json) =
      _$_AddonCard.fromJson;

  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  String? get user_id => throw _privateConstructorUsedError;
  @override
  String? get email_id => throw _privateConstructorUsedError;
  @override
  String? get ewallet_id => throw _privateConstructorUsedError;
  @override
  String? get card_id => throw _privateConstructorUsedError;
  @override
  String? get currency => throw _privateConstructorUsedError;
  @override
  String? get nameoncard => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AddonCardCopyWith<_AddonCard> get copyWith =>
      throw _privateConstructorUsedError;
}
