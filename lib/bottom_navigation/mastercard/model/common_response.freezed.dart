// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'common_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CommonResponseModel _$CommonResponseModelFromJson(Map<String, dynamic> json) {
  return _CommonResponseModel.fromJson(json);
}

/// @nodoc
class _$CommonResponseModelTearOff {
  const _$CommonResponseModelTearOff();

  _CommonResponseModel call(
      String? result, String? status, int code, String message, String? fee) {
    return _CommonResponseModel(
      result,
      status,
      code,
      message,
      fee,
    );
  }

  CommonResponseModel fromJson(Map<String, Object> json) {
    return CommonResponseModel.fromJson(json);
  }
}

/// @nodoc
const $CommonResponseModel = _$CommonResponseModelTearOff();

/// @nodoc
mixin _$CommonResponseModel {
  String? get result => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  int get code => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  String? get fee => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommonResponseModelCopyWith<CommonResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommonResponseModelCopyWith<$Res> {
  factory $CommonResponseModelCopyWith(
          CommonResponseModel value, $Res Function(CommonResponseModel) then) =
      _$CommonResponseModelCopyWithImpl<$Res>;
  $Res call(
      {String? result, String? status, int code, String message, String? fee});
}

/// @nodoc
class _$CommonResponseModelCopyWithImpl<$Res>
    implements $CommonResponseModelCopyWith<$Res> {
  _$CommonResponseModelCopyWithImpl(this._value, this._then);

  final CommonResponseModel _value;
  // ignore: unused_field
  final $Res Function(CommonResponseModel) _then;

  @override
  $Res call({
    Object? result = freezed,
    Object? status = freezed,
    Object? code = freezed,
    Object? message = freezed,
    Object? fee = freezed,
  }) {
    return _then(_value.copyWith(
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      fee: fee == freezed
          ? _value.fee
          : fee // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$CommonResponseModelCopyWith<$Res>
    implements $CommonResponseModelCopyWith<$Res> {
  factory _$CommonResponseModelCopyWith(_CommonResponseModel value,
          $Res Function(_CommonResponseModel) then) =
      __$CommonResponseModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? result, String? status, int code, String message, String? fee});
}

/// @nodoc
class __$CommonResponseModelCopyWithImpl<$Res>
    extends _$CommonResponseModelCopyWithImpl<$Res>
    implements _$CommonResponseModelCopyWith<$Res> {
  __$CommonResponseModelCopyWithImpl(
      _CommonResponseModel _value, $Res Function(_CommonResponseModel) _then)
      : super(_value, (v) => _then(v as _CommonResponseModel));

  @override
  _CommonResponseModel get _value => super._value as _CommonResponseModel;

  @override
  $Res call({
    Object? result = freezed,
    Object? status = freezed,
    Object? code = freezed,
    Object? message = freezed,
    Object? fee = freezed,
  }) {
    return _then(_CommonResponseModel(
      result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String?,
      status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      fee == freezed
          ? _value.fee
          : fee // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CommonResponseModel implements _CommonResponseModel {
  const _$_CommonResponseModel(
      this.result, this.status, this.code, this.message, this.fee);

  factory _$_CommonResponseModel.fromJson(Map<String, dynamic> json) =>
      _$$_CommonResponseModelFromJson(json);

  @override
  final String? result;
  @override
  final String? status;
  @override
  final int code;
  @override
  final String message;
  @override
  final String? fee;

  @override
  String toString() {
    return 'CommonResponseModel(result: $result, status: $status, code: $code, message: $message, fee: $fee)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CommonResponseModel &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.fee, fee) ||
                const DeepCollectionEquality().equals(other.fee, fee)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(result) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(fee);

  @JsonKey(ignore: true)
  @override
  _$CommonResponseModelCopyWith<_CommonResponseModel> get copyWith =>
      __$CommonResponseModelCopyWithImpl<_CommonResponseModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CommonResponseModelToJson(this);
  }
}

abstract class _CommonResponseModel implements CommonResponseModel {
  const factory _CommonResponseModel(String? result, String? status, int code,
      String message, String? fee) = _$_CommonResponseModel;

  factory _CommonResponseModel.fromJson(Map<String, dynamic> json) =
      _$_CommonResponseModel.fromJson;

  @override
  String? get result => throw _privateConstructorUsedError;
  @override
  String? get status => throw _privateConstructorUsedError;
  @override
  int get code => throw _privateConstructorUsedError;
  @override
  String get message => throw _privateConstructorUsedError;
  @override
  String? get fee => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CommonResponseModelCopyWith<_CommonResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

MasterCardDetails _$MasterCardDetailsFromJson(Map<String, dynamic> json) {
  return _MasterCardDetails.fromJson(json);
}

/// @nodoc
class _$MasterCardDetailsTearOff {
  const _$MasterCardDetailsTearOff();

  _MasterCardDetails call(
      String result,
      int code,
      String? message,
      String? fee,
      String? weavrtoken,
      String? cardNumber,
      String? uikey,
      String? cvv,
      String? name_on_card,
      String? expiration,
      String? webview_url) {
    return _MasterCardDetails(
      result,
      code,
      message,
      fee,
      weavrtoken,
      cardNumber,
      uikey,
      cvv,
      name_on_card,
      expiration,
      webview_url,
    );
  }

  MasterCardDetails fromJson(Map<String, Object> json) {
    return MasterCardDetails.fromJson(json);
  }
}

/// @nodoc
const $MasterCardDetails = _$MasterCardDetailsTearOff();

/// @nodoc
mixin _$MasterCardDetails {
  String get result => throw _privateConstructorUsedError;
  int get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  String? get fee => throw _privateConstructorUsedError;
  String? get weavrtoken => throw _privateConstructorUsedError;
  String? get cardNumber => throw _privateConstructorUsedError;
  String? get uikey => throw _privateConstructorUsedError;
  String? get cvv => throw _privateConstructorUsedError;
  String? get name_on_card => throw _privateConstructorUsedError;
  String? get expiration => throw _privateConstructorUsedError;
  String? get webview_url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MasterCardDetailsCopyWith<MasterCardDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MasterCardDetailsCopyWith<$Res> {
  factory $MasterCardDetailsCopyWith(
          MasterCardDetails value, $Res Function(MasterCardDetails) then) =
      _$MasterCardDetailsCopyWithImpl<$Res>;
  $Res call(
      {String result,
      int code,
      String? message,
      String? fee,
      String? weavrtoken,
      String? cardNumber,
      String? uikey,
      String? cvv,
      String? name_on_card,
      String? expiration,
      String? webview_url});
}

/// @nodoc
class _$MasterCardDetailsCopyWithImpl<$Res>
    implements $MasterCardDetailsCopyWith<$Res> {
  _$MasterCardDetailsCopyWithImpl(this._value, this._then);

  final MasterCardDetails _value;
  // ignore: unused_field
  final $Res Function(MasterCardDetails) _then;

  @override
  $Res call({
    Object? result = freezed,
    Object? code = freezed,
    Object? message = freezed,
    Object? fee = freezed,
    Object? weavrtoken = freezed,
    Object? cardNumber = freezed,
    Object? uikey = freezed,
    Object? cvv = freezed,
    Object? name_on_card = freezed,
    Object? expiration = freezed,
    Object? webview_url = freezed,
  }) {
    return _then(_value.copyWith(
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      fee: fee == freezed
          ? _value.fee
          : fee // ignore: cast_nullable_to_non_nullable
              as String?,
      weavrtoken: weavrtoken == freezed
          ? _value.weavrtoken
          : weavrtoken // ignore: cast_nullable_to_non_nullable
              as String?,
      cardNumber: cardNumber == freezed
          ? _value.cardNumber
          : cardNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      uikey: uikey == freezed
          ? _value.uikey
          : uikey // ignore: cast_nullable_to_non_nullable
              as String?,
      cvv: cvv == freezed
          ? _value.cvv
          : cvv // ignore: cast_nullable_to_non_nullable
              as String?,
      name_on_card: name_on_card == freezed
          ? _value.name_on_card
          : name_on_card // ignore: cast_nullable_to_non_nullable
              as String?,
      expiration: expiration == freezed
          ? _value.expiration
          : expiration // ignore: cast_nullable_to_non_nullable
              as String?,
      webview_url: webview_url == freezed
          ? _value.webview_url
          : webview_url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$MasterCardDetailsCopyWith<$Res>
    implements $MasterCardDetailsCopyWith<$Res> {
  factory _$MasterCardDetailsCopyWith(
          _MasterCardDetails value, $Res Function(_MasterCardDetails) then) =
      __$MasterCardDetailsCopyWithImpl<$Res>;
  @override
  $Res call(
      {String result,
      int code,
      String? message,
      String? fee,
      String? weavrtoken,
      String? cardNumber,
      String? uikey,
      String? cvv,
      String? name_on_card,
      String? expiration,
      String? webview_url});
}

/// @nodoc
class __$MasterCardDetailsCopyWithImpl<$Res>
    extends _$MasterCardDetailsCopyWithImpl<$Res>
    implements _$MasterCardDetailsCopyWith<$Res> {
  __$MasterCardDetailsCopyWithImpl(
      _MasterCardDetails _value, $Res Function(_MasterCardDetails) _then)
      : super(_value, (v) => _then(v as _MasterCardDetails));

  @override
  _MasterCardDetails get _value => super._value as _MasterCardDetails;

  @override
  $Res call({
    Object? result = freezed,
    Object? code = freezed,
    Object? message = freezed,
    Object? fee = freezed,
    Object? weavrtoken = freezed,
    Object? cardNumber = freezed,
    Object? uikey = freezed,
    Object? cvv = freezed,
    Object? name_on_card = freezed,
    Object? expiration = freezed,
    Object? webview_url = freezed,
  }) {
    return _then(_MasterCardDetails(
      result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
      code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      fee == freezed
          ? _value.fee
          : fee // ignore: cast_nullable_to_non_nullable
              as String?,
      weavrtoken == freezed
          ? _value.weavrtoken
          : weavrtoken // ignore: cast_nullable_to_non_nullable
              as String?,
      cardNumber == freezed
          ? _value.cardNumber
          : cardNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      uikey == freezed
          ? _value.uikey
          : uikey // ignore: cast_nullable_to_non_nullable
              as String?,
      cvv == freezed
          ? _value.cvv
          : cvv // ignore: cast_nullable_to_non_nullable
              as String?,
      name_on_card == freezed
          ? _value.name_on_card
          : name_on_card // ignore: cast_nullable_to_non_nullable
              as String?,
      expiration == freezed
          ? _value.expiration
          : expiration // ignore: cast_nullable_to_non_nullable
              as String?,
      webview_url == freezed
          ? _value.webview_url
          : webview_url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MasterCardDetails implements _MasterCardDetails {
  const _$_MasterCardDetails(
      this.result,
      this.code,
      this.message,
      this.fee,
      this.weavrtoken,
      this.cardNumber,
      this.uikey,
      this.cvv,
      this.name_on_card,
      this.expiration,
      this.webview_url);

  factory _$_MasterCardDetails.fromJson(Map<String, dynamic> json) =>
      _$$_MasterCardDetailsFromJson(json);

  @override
  final String result;
  @override
  final int code;
  @override
  final String? message;
  @override
  final String? fee;
  @override
  final String? weavrtoken;
  @override
  final String? cardNumber;
  @override
  final String? uikey;
  @override
  final String? cvv;
  @override
  final String? name_on_card;
  @override
  final String? expiration;
  @override
  final String? webview_url;

  @override
  String toString() {
    return 'MasterCardDetails(result: $result, code: $code, message: $message, fee: $fee, weavrtoken: $weavrtoken, cardNumber: $cardNumber, uikey: $uikey, cvv: $cvv, name_on_card: $name_on_card, expiration: $expiration, webview_url: $webview_url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MasterCardDetails &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.fee, fee) ||
                const DeepCollectionEquality().equals(other.fee, fee)) &&
            (identical(other.weavrtoken, weavrtoken) ||
                const DeepCollectionEquality()
                    .equals(other.weavrtoken, weavrtoken)) &&
            (identical(other.cardNumber, cardNumber) ||
                const DeepCollectionEquality()
                    .equals(other.cardNumber, cardNumber)) &&
            (identical(other.uikey, uikey) ||
                const DeepCollectionEquality().equals(other.uikey, uikey)) &&
            (identical(other.cvv, cvv) ||
                const DeepCollectionEquality().equals(other.cvv, cvv)) &&
            (identical(other.name_on_card, name_on_card) ||
                const DeepCollectionEquality()
                    .equals(other.name_on_card, name_on_card)) &&
            (identical(other.expiration, expiration) ||
                const DeepCollectionEquality()
                    .equals(other.expiration, expiration)) &&
            (identical(other.webview_url, webview_url) ||
                const DeepCollectionEquality()
                    .equals(other.webview_url, webview_url)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(result) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(fee) ^
      const DeepCollectionEquality().hash(weavrtoken) ^
      const DeepCollectionEquality().hash(cardNumber) ^
      const DeepCollectionEquality().hash(uikey) ^
      const DeepCollectionEquality().hash(cvv) ^
      const DeepCollectionEquality().hash(name_on_card) ^
      const DeepCollectionEquality().hash(expiration) ^
      const DeepCollectionEquality().hash(webview_url);

  @JsonKey(ignore: true)
  @override
  _$MasterCardDetailsCopyWith<_MasterCardDetails> get copyWith =>
      __$MasterCardDetailsCopyWithImpl<_MasterCardDetails>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MasterCardDetailsToJson(this);
  }
}

abstract class _MasterCardDetails implements MasterCardDetails {
  const factory _MasterCardDetails(
      String result,
      int code,
      String? message,
      String? fee,
      String? weavrtoken,
      String? cardNumber,
      String? uikey,
      String? cvv,
      String? name_on_card,
      String? expiration,
      String? webview_url) = _$_MasterCardDetails;

  factory _MasterCardDetails.fromJson(Map<String, dynamic> json) =
      _$_MasterCardDetails.fromJson;

  @override
  String get result => throw _privateConstructorUsedError;
  @override
  int get code => throw _privateConstructorUsedError;
  @override
  String? get message => throw _privateConstructorUsedError;
  @override
  String? get fee => throw _privateConstructorUsedError;
  @override
  String? get weavrtoken => throw _privateConstructorUsedError;
  @override
  String? get cardNumber => throw _privateConstructorUsedError;
  @override
  String? get uikey => throw _privateConstructorUsedError;
  @override
  String? get cvv => throw _privateConstructorUsedError;
  @override
  String? get name_on_card => throw _privateConstructorUsedError;
  @override
  String? get expiration => throw _privateConstructorUsedError;
  @override
  String? get webview_url => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MasterCardDetailsCopyWith<_MasterCardDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

TransactionDetails _$TransactionDetailsFromJson(Map<String, dynamic> json) {
  return _TransactionDetails.fromJson(json);
}

/// @nodoc
class _$TransactionDetailsTearOff {
  const _$TransactionDetailsTearOff();

  _TransactionDetails call(String result, int code, EntryData data) {
    return _TransactionDetails(
      result,
      code,
      data,
    );
  }

  TransactionDetails fromJson(Map<String, Object> json) {
    return TransactionDetails.fromJson(json);
  }
}

/// @nodoc
const $TransactionDetails = _$TransactionDetailsTearOff();

/// @nodoc
mixin _$TransactionDetails {
  String get result => throw _privateConstructorUsedError;
  int get code => throw _privateConstructorUsedError;
  EntryData get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionDetailsCopyWith<TransactionDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionDetailsCopyWith<$Res> {
  factory $TransactionDetailsCopyWith(
          TransactionDetails value, $Res Function(TransactionDetails) then) =
      _$TransactionDetailsCopyWithImpl<$Res>;
  $Res call({String result, int code, EntryData data});

  $EntryDataCopyWith<$Res> get data;
}

/// @nodoc
class _$TransactionDetailsCopyWithImpl<$Res>
    implements $TransactionDetailsCopyWith<$Res> {
  _$TransactionDetailsCopyWithImpl(this._value, this._then);

  final TransactionDetails _value;
  // ignore: unused_field
  final $Res Function(TransactionDetails) _then;

  @override
  $Res call({
    Object? result = freezed,
    Object? code = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as EntryData,
    ));
  }

  @override
  $EntryDataCopyWith<$Res> get data {
    return $EntryDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$TransactionDetailsCopyWith<$Res>
    implements $TransactionDetailsCopyWith<$Res> {
  factory _$TransactionDetailsCopyWith(
          _TransactionDetails value, $Res Function(_TransactionDetails) then) =
      __$TransactionDetailsCopyWithImpl<$Res>;
  @override
  $Res call({String result, int code, EntryData data});

  @override
  $EntryDataCopyWith<$Res> get data;
}

/// @nodoc
class __$TransactionDetailsCopyWithImpl<$Res>
    extends _$TransactionDetailsCopyWithImpl<$Res>
    implements _$TransactionDetailsCopyWith<$Res> {
  __$TransactionDetailsCopyWithImpl(
      _TransactionDetails _value, $Res Function(_TransactionDetails) _then)
      : super(_value, (v) => _then(v as _TransactionDetails));

  @override
  _TransactionDetails get _value => super._value as _TransactionDetails;

  @override
  $Res call({
    Object? result = freezed,
    Object? code = freezed,
    Object? data = freezed,
  }) {
    return _then(_TransactionDetails(
      result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
      code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as EntryData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TransactionDetails implements _TransactionDetails {
  const _$_TransactionDetails(this.result, this.code, this.data);

  factory _$_TransactionDetails.fromJson(Map<String, dynamic> json) =>
      _$$_TransactionDetailsFromJson(json);

  @override
  final String result;
  @override
  final int code;
  @override
  final EntryData data;

  @override
  String toString() {
    return 'TransactionDetails(result: $result, code: $code, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TransactionDetails &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(result) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$TransactionDetailsCopyWith<_TransactionDetails> get copyWith =>
      __$TransactionDetailsCopyWithImpl<_TransactionDetails>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TransactionDetailsToJson(this);
  }
}

abstract class _TransactionDetails implements TransactionDetails {
  const factory _TransactionDetails(String result, int code, EntryData data) =
      _$_TransactionDetails;

  factory _TransactionDetails.fromJson(Map<String, dynamic> json) =
      _$_TransactionDetails.fromJson;

  @override
  String get result => throw _privateConstructorUsedError;
  @override
  int get code => throw _privateConstructorUsedError;
  @override
  EntryData get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TransactionDetailsCopyWith<_TransactionDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

EntryData _$EntryDataFromJson(Map<String, dynamic> json) {
  return _EntryData.fromJson(json);
}

/// @nodoc
class _$EntryDataTearOff {
  const _$EntryDataTearOff();

  _EntryData call(EntryResponse response, int code) {
    return _EntryData(
      response,
      code,
    );
  }

  EntryData fromJson(Map<String, Object> json) {
    return EntryData.fromJson(json);
  }
}

/// @nodoc
const $EntryData = _$EntryDataTearOff();

/// @nodoc
mixin _$EntryData {
  EntryResponse get response => throw _privateConstructorUsedError;
  int get code => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EntryDataCopyWith<EntryData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EntryDataCopyWith<$Res> {
  factory $EntryDataCopyWith(EntryData value, $Res Function(EntryData) then) =
      _$EntryDataCopyWithImpl<$Res>;
  $Res call({EntryResponse response, int code});

  $EntryResponseCopyWith<$Res> get response;
}

/// @nodoc
class _$EntryDataCopyWithImpl<$Res> implements $EntryDataCopyWith<$Res> {
  _$EntryDataCopyWithImpl(this._value, this._then);

  final EntryData _value;
  // ignore: unused_field
  final $Res Function(EntryData) _then;

  @override
  $Res call({
    Object? response = freezed,
    Object? code = freezed,
  }) {
    return _then(_value.copyWith(
      response: response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as EntryResponse,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  $EntryResponseCopyWith<$Res> get response {
    return $EntryResponseCopyWith<$Res>(_value.response, (value) {
      return _then(_value.copyWith(response: value));
    });
  }
}

/// @nodoc
abstract class _$EntryDataCopyWith<$Res> implements $EntryDataCopyWith<$Res> {
  factory _$EntryDataCopyWith(
          _EntryData value, $Res Function(_EntryData) then) =
      __$EntryDataCopyWithImpl<$Res>;
  @override
  $Res call({EntryResponse response, int code});

  @override
  $EntryResponseCopyWith<$Res> get response;
}

/// @nodoc
class __$EntryDataCopyWithImpl<$Res> extends _$EntryDataCopyWithImpl<$Res>
    implements _$EntryDataCopyWith<$Res> {
  __$EntryDataCopyWithImpl(_EntryData _value, $Res Function(_EntryData) _then)
      : super(_value, (v) => _then(v as _EntryData));

  @override
  _EntryData get _value => super._value as _EntryData;

  @override
  $Res call({
    Object? response = freezed,
    Object? code = freezed,
  }) {
    return _then(_EntryData(
      response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as EntryResponse,
      code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EntryData implements _EntryData {
  const _$_EntryData(this.response, this.code);

  factory _$_EntryData.fromJson(Map<String, dynamic> json) =>
      _$$_EntryDataFromJson(json);

  @override
  final EntryResponse response;
  @override
  final int code;

  @override
  String toString() {
    return 'EntryData(response: $response, code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EntryData &&
            (identical(other.response, response) ||
                const DeepCollectionEquality()
                    .equals(other.response, response)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(response) ^
      const DeepCollectionEquality().hash(code);

  @JsonKey(ignore: true)
  @override
  _$EntryDataCopyWith<_EntryData> get copyWith =>
      __$EntryDataCopyWithImpl<_EntryData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EntryDataToJson(this);
  }
}

abstract class _EntryData implements EntryData {
  const factory _EntryData(EntryResponse response, int code) = _$_EntryData;

  factory _EntryData.fromJson(Map<String, dynamic> json) =
      _$_EntryData.fromJson;

  @override
  EntryResponse get response => throw _privateConstructorUsedError;
  @override
  int get code => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$EntryDataCopyWith<_EntryData> get copyWith =>
      throw _privateConstructorUsedError;
}

EntryResponse _$EntryResponseFromJson(Map<String, dynamic> json) {
  return _EntryResponse.fromJson(json);
}

/// @nodoc
class _$EntryResponseTearOff {
  const _$EntryResponseTearOff();

  _EntryResponse call(List<Entry> entry, int count, int responseCount) {
    return _EntryResponse(
      entry,
      count,
      responseCount,
    );
  }

  EntryResponse fromJson(Map<String, Object> json) {
    return EntryResponse.fromJson(json);
  }
}

/// @nodoc
const $EntryResponse = _$EntryResponseTearOff();

/// @nodoc
mixin _$EntryResponse {
  List<Entry> get entry => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;
  int get responseCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EntryResponseCopyWith<EntryResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EntryResponseCopyWith<$Res> {
  factory $EntryResponseCopyWith(
          EntryResponse value, $Res Function(EntryResponse) then) =
      _$EntryResponseCopyWithImpl<$Res>;
  $Res call({List<Entry> entry, int count, int responseCount});
}

/// @nodoc
class _$EntryResponseCopyWithImpl<$Res>
    implements $EntryResponseCopyWith<$Res> {
  _$EntryResponseCopyWithImpl(this._value, this._then);

  final EntryResponse _value;
  // ignore: unused_field
  final $Res Function(EntryResponse) _then;

  @override
  $Res call({
    Object? entry = freezed,
    Object? count = freezed,
    Object? responseCount = freezed,
  }) {
    return _then(_value.copyWith(
      entry: entry == freezed
          ? _value.entry
          : entry // ignore: cast_nullable_to_non_nullable
              as List<Entry>,
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      responseCount: responseCount == freezed
          ? _value.responseCount
          : responseCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$EntryResponseCopyWith<$Res>
    implements $EntryResponseCopyWith<$Res> {
  factory _$EntryResponseCopyWith(
          _EntryResponse value, $Res Function(_EntryResponse) then) =
      __$EntryResponseCopyWithImpl<$Res>;
  @override
  $Res call({List<Entry> entry, int count, int responseCount});
}

/// @nodoc
class __$EntryResponseCopyWithImpl<$Res>
    extends _$EntryResponseCopyWithImpl<$Res>
    implements _$EntryResponseCopyWith<$Res> {
  __$EntryResponseCopyWithImpl(
      _EntryResponse _value, $Res Function(_EntryResponse) _then)
      : super(_value, (v) => _then(v as _EntryResponse));

  @override
  _EntryResponse get _value => super._value as _EntryResponse;

  @override
  $Res call({
    Object? entry = freezed,
    Object? count = freezed,
    Object? responseCount = freezed,
  }) {
    return _then(_EntryResponse(
      entry == freezed
          ? _value.entry
          : entry // ignore: cast_nullable_to_non_nullable
              as List<Entry>,
      count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      responseCount == freezed
          ? _value.responseCount
          : responseCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EntryResponse implements _EntryResponse {
  const _$_EntryResponse(this.entry, this.count, this.responseCount);

  factory _$_EntryResponse.fromJson(Map<String, dynamic> json) =>
      _$$_EntryResponseFromJson(json);

  @override
  final List<Entry> entry;
  @override
  final int count;
  @override
  final int responseCount;

  @override
  String toString() {
    return 'EntryResponse(entry: $entry, count: $count, responseCount: $responseCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EntryResponse &&
            (identical(other.entry, entry) ||
                const DeepCollectionEquality().equals(other.entry, entry)) &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)) &&
            (identical(other.responseCount, responseCount) ||
                const DeepCollectionEquality()
                    .equals(other.responseCount, responseCount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(entry) ^
      const DeepCollectionEquality().hash(count) ^
      const DeepCollectionEquality().hash(responseCount);

  @JsonKey(ignore: true)
  @override
  _$EntryResponseCopyWith<_EntryResponse> get copyWith =>
      __$EntryResponseCopyWithImpl<_EntryResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EntryResponseToJson(this);
  }
}

abstract class _EntryResponse implements EntryResponse {
  const factory _EntryResponse(
      List<Entry> entry, int count, int responseCount) = _$_EntryResponse;

  factory _EntryResponse.fromJson(Map<String, dynamic> json) =
      _$_EntryResponse.fromJson;

  @override
  List<Entry> get entry => throw _privateConstructorUsedError;
  @override
  int get count => throw _privateConstructorUsedError;
  @override
  int get responseCount => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$EntryResponseCopyWith<_EntryResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

Entry _$EntryFromJson(Map<String, dynamic> json) {
  return _Entry.fromJson(json);
}

/// @nodoc
class _$EntryTearOff {
  const _$EntryTearOff();

  _Entry call(
      TransactionId? txId,
      TransactionAmount? transactionAmount,
      BalanceAfter? balanceAfter,
      CardholderFee? cardholderFee,
      String? processedTimestamp,
      String? statementEntryState,
      String? transactionState,
      SourceAmount? sourceAmount,
      AdditionalFields? additionalFields,
      ActualBalanceAfter? actualBalanceAfter,
      ActualBalanceAdjustment? actualBalanceAdjustment,
      AvailableBalanceAfter? availableBalanceAfter,
      AvailableBalanceAdjustment? availableBalanceAdjustment) {
    return _Entry(
      txId,
      transactionAmount,
      balanceAfter,
      cardholderFee,
      processedTimestamp,
      statementEntryState,
      transactionState,
      sourceAmount,
      additionalFields,
      actualBalanceAfter,
      actualBalanceAdjustment,
      availableBalanceAfter,
      availableBalanceAdjustment,
    );
  }

  Entry fromJson(Map<String, Object> json) {
    return Entry.fromJson(json);
  }
}

/// @nodoc
const $Entry = _$EntryTearOff();

/// @nodoc
mixin _$Entry {
  TransactionId? get txId => throw _privateConstructorUsedError;
  TransactionAmount? get transactionAmount =>
      throw _privateConstructorUsedError;
  BalanceAfter? get balanceAfter => throw _privateConstructorUsedError;
  CardholderFee? get cardholderFee => throw _privateConstructorUsedError;
  String? get processedTimestamp => throw _privateConstructorUsedError;
  String? get statementEntryState => throw _privateConstructorUsedError;
  String? get transactionState => throw _privateConstructorUsedError;
  SourceAmount? get sourceAmount => throw _privateConstructorUsedError;
  AdditionalFields? get additionalFields => throw _privateConstructorUsedError;
  ActualBalanceAfter? get actualBalanceAfter =>
      throw _privateConstructorUsedError;
  ActualBalanceAdjustment? get actualBalanceAdjustment =>
      throw _privateConstructorUsedError;
  AvailableBalanceAfter? get availableBalanceAfter =>
      throw _privateConstructorUsedError;
  AvailableBalanceAdjustment? get availableBalanceAdjustment =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EntryCopyWith<Entry> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EntryCopyWith<$Res> {
  factory $EntryCopyWith(Entry value, $Res Function(Entry) then) =
      _$EntryCopyWithImpl<$Res>;
  $Res call(
      {TransactionId? txId,
      TransactionAmount? transactionAmount,
      BalanceAfter? balanceAfter,
      CardholderFee? cardholderFee,
      String? processedTimestamp,
      String? statementEntryState,
      String? transactionState,
      SourceAmount? sourceAmount,
      AdditionalFields? additionalFields,
      ActualBalanceAfter? actualBalanceAfter,
      ActualBalanceAdjustment? actualBalanceAdjustment,
      AvailableBalanceAfter? availableBalanceAfter,
      AvailableBalanceAdjustment? availableBalanceAdjustment});

  $TransactionIdCopyWith<$Res>? get txId;
  $TransactionAmountCopyWith<$Res>? get transactionAmount;
  $BalanceAfterCopyWith<$Res>? get balanceAfter;
  $CardholderFeeCopyWith<$Res>? get cardholderFee;
  $SourceAmountCopyWith<$Res>? get sourceAmount;
  $AdditionalFieldsCopyWith<$Res>? get additionalFields;
  $ActualBalanceAfterCopyWith<$Res>? get actualBalanceAfter;
  $ActualBalanceAdjustmentCopyWith<$Res>? get actualBalanceAdjustment;
  $AvailableBalanceAfterCopyWith<$Res>? get availableBalanceAfter;
  $AvailableBalanceAdjustmentCopyWith<$Res>? get availableBalanceAdjustment;
}

/// @nodoc
class _$EntryCopyWithImpl<$Res> implements $EntryCopyWith<$Res> {
  _$EntryCopyWithImpl(this._value, this._then);

  final Entry _value;
  // ignore: unused_field
  final $Res Function(Entry) _then;

  @override
  $Res call({
    Object? txId = freezed,
    Object? transactionAmount = freezed,
    Object? balanceAfter = freezed,
    Object? cardholderFee = freezed,
    Object? processedTimestamp = freezed,
    Object? statementEntryState = freezed,
    Object? transactionState = freezed,
    Object? sourceAmount = freezed,
    Object? additionalFields = freezed,
    Object? actualBalanceAfter = freezed,
    Object? actualBalanceAdjustment = freezed,
    Object? availableBalanceAfter = freezed,
    Object? availableBalanceAdjustment = freezed,
  }) {
    return _then(_value.copyWith(
      txId: txId == freezed
          ? _value.txId
          : txId // ignore: cast_nullable_to_non_nullable
              as TransactionId?,
      transactionAmount: transactionAmount == freezed
          ? _value.transactionAmount
          : transactionAmount // ignore: cast_nullable_to_non_nullable
              as TransactionAmount?,
      balanceAfter: balanceAfter == freezed
          ? _value.balanceAfter
          : balanceAfter // ignore: cast_nullable_to_non_nullable
              as BalanceAfter?,
      cardholderFee: cardholderFee == freezed
          ? _value.cardholderFee
          : cardholderFee // ignore: cast_nullable_to_non_nullable
              as CardholderFee?,
      processedTimestamp: processedTimestamp == freezed
          ? _value.processedTimestamp
          : processedTimestamp // ignore: cast_nullable_to_non_nullable
              as String?,
      statementEntryState: statementEntryState == freezed
          ? _value.statementEntryState
          : statementEntryState // ignore: cast_nullable_to_non_nullable
              as String?,
      transactionState: transactionState == freezed
          ? _value.transactionState
          : transactionState // ignore: cast_nullable_to_non_nullable
              as String?,
      sourceAmount: sourceAmount == freezed
          ? _value.sourceAmount
          : sourceAmount // ignore: cast_nullable_to_non_nullable
              as SourceAmount?,
      additionalFields: additionalFields == freezed
          ? _value.additionalFields
          : additionalFields // ignore: cast_nullable_to_non_nullable
              as AdditionalFields?,
      actualBalanceAfter: actualBalanceAfter == freezed
          ? _value.actualBalanceAfter
          : actualBalanceAfter // ignore: cast_nullable_to_non_nullable
              as ActualBalanceAfter?,
      actualBalanceAdjustment: actualBalanceAdjustment == freezed
          ? _value.actualBalanceAdjustment
          : actualBalanceAdjustment // ignore: cast_nullable_to_non_nullable
              as ActualBalanceAdjustment?,
      availableBalanceAfter: availableBalanceAfter == freezed
          ? _value.availableBalanceAfter
          : availableBalanceAfter // ignore: cast_nullable_to_non_nullable
              as AvailableBalanceAfter?,
      availableBalanceAdjustment: availableBalanceAdjustment == freezed
          ? _value.availableBalanceAdjustment
          : availableBalanceAdjustment // ignore: cast_nullable_to_non_nullable
              as AvailableBalanceAdjustment?,
    ));
  }

  @override
  $TransactionIdCopyWith<$Res>? get txId {
    if (_value.txId == null) {
      return null;
    }

    return $TransactionIdCopyWith<$Res>(_value.txId!, (value) {
      return _then(_value.copyWith(txId: value));
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
  $SourceAmountCopyWith<$Res>? get sourceAmount {
    if (_value.sourceAmount == null) {
      return null;
    }

    return $SourceAmountCopyWith<$Res>(_value.sourceAmount!, (value) {
      return _then(_value.copyWith(sourceAmount: value));
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
  $AvailableBalanceAdjustmentCopyWith<$Res>? get availableBalanceAdjustment {
    if (_value.availableBalanceAdjustment == null) {
      return null;
    }

    return $AvailableBalanceAdjustmentCopyWith<$Res>(
        _value.availableBalanceAdjustment!, (value) {
      return _then(_value.copyWith(availableBalanceAdjustment: value));
    });
  }
}

/// @nodoc
abstract class _$EntryCopyWith<$Res> implements $EntryCopyWith<$Res> {
  factory _$EntryCopyWith(_Entry value, $Res Function(_Entry) then) =
      __$EntryCopyWithImpl<$Res>;
  @override
  $Res call(
      {TransactionId? txId,
      TransactionAmount? transactionAmount,
      BalanceAfter? balanceAfter,
      CardholderFee? cardholderFee,
      String? processedTimestamp,
      String? statementEntryState,
      String? transactionState,
      SourceAmount? sourceAmount,
      AdditionalFields? additionalFields,
      ActualBalanceAfter? actualBalanceAfter,
      ActualBalanceAdjustment? actualBalanceAdjustment,
      AvailableBalanceAfter? availableBalanceAfter,
      AvailableBalanceAdjustment? availableBalanceAdjustment});

  @override
  $TransactionIdCopyWith<$Res>? get txId;
  @override
  $TransactionAmountCopyWith<$Res>? get transactionAmount;
  @override
  $BalanceAfterCopyWith<$Res>? get balanceAfter;
  @override
  $CardholderFeeCopyWith<$Res>? get cardholderFee;
  @override
  $SourceAmountCopyWith<$Res>? get sourceAmount;
  @override
  $AdditionalFieldsCopyWith<$Res>? get additionalFields;
  @override
  $ActualBalanceAfterCopyWith<$Res>? get actualBalanceAfter;
  @override
  $ActualBalanceAdjustmentCopyWith<$Res>? get actualBalanceAdjustment;
  @override
  $AvailableBalanceAfterCopyWith<$Res>? get availableBalanceAfter;
  @override
  $AvailableBalanceAdjustmentCopyWith<$Res>? get availableBalanceAdjustment;
}

/// @nodoc
class __$EntryCopyWithImpl<$Res> extends _$EntryCopyWithImpl<$Res>
    implements _$EntryCopyWith<$Res> {
  __$EntryCopyWithImpl(_Entry _value, $Res Function(_Entry) _then)
      : super(_value, (v) => _then(v as _Entry));

  @override
  _Entry get _value => super._value as _Entry;

  @override
  $Res call({
    Object? txId = freezed,
    Object? transactionAmount = freezed,
    Object? balanceAfter = freezed,
    Object? cardholderFee = freezed,
    Object? processedTimestamp = freezed,
    Object? statementEntryState = freezed,
    Object? transactionState = freezed,
    Object? sourceAmount = freezed,
    Object? additionalFields = freezed,
    Object? actualBalanceAfter = freezed,
    Object? actualBalanceAdjustment = freezed,
    Object? availableBalanceAfter = freezed,
    Object? availableBalanceAdjustment = freezed,
  }) {
    return _then(_Entry(
      txId == freezed
          ? _value.txId
          : txId // ignore: cast_nullable_to_non_nullable
              as TransactionId?,
      transactionAmount == freezed
          ? _value.transactionAmount
          : transactionAmount // ignore: cast_nullable_to_non_nullable
              as TransactionAmount?,
      balanceAfter == freezed
          ? _value.balanceAfter
          : balanceAfter // ignore: cast_nullable_to_non_nullable
              as BalanceAfter?,
      cardholderFee == freezed
          ? _value.cardholderFee
          : cardholderFee // ignore: cast_nullable_to_non_nullable
              as CardholderFee?,
      processedTimestamp == freezed
          ? _value.processedTimestamp
          : processedTimestamp // ignore: cast_nullable_to_non_nullable
              as String?,
      statementEntryState == freezed
          ? _value.statementEntryState
          : statementEntryState // ignore: cast_nullable_to_non_nullable
              as String?,
      transactionState == freezed
          ? _value.transactionState
          : transactionState // ignore: cast_nullable_to_non_nullable
              as String?,
      sourceAmount == freezed
          ? _value.sourceAmount
          : sourceAmount // ignore: cast_nullable_to_non_nullable
              as SourceAmount?,
      additionalFields == freezed
          ? _value.additionalFields
          : additionalFields // ignore: cast_nullable_to_non_nullable
              as AdditionalFields?,
      actualBalanceAfter == freezed
          ? _value.actualBalanceAfter
          : actualBalanceAfter // ignore: cast_nullable_to_non_nullable
              as ActualBalanceAfter?,
      actualBalanceAdjustment == freezed
          ? _value.actualBalanceAdjustment
          : actualBalanceAdjustment // ignore: cast_nullable_to_non_nullable
              as ActualBalanceAdjustment?,
      availableBalanceAfter == freezed
          ? _value.availableBalanceAfter
          : availableBalanceAfter // ignore: cast_nullable_to_non_nullable
              as AvailableBalanceAfter?,
      availableBalanceAdjustment == freezed
          ? _value.availableBalanceAdjustment
          : availableBalanceAdjustment // ignore: cast_nullable_to_non_nullable
              as AvailableBalanceAdjustment?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Entry implements _Entry {
  const _$_Entry(
      this.txId,
      this.transactionAmount,
      this.balanceAfter,
      this.cardholderFee,
      this.processedTimestamp,
      this.statementEntryState,
      this.transactionState,
      this.sourceAmount,
      this.additionalFields,
      this.actualBalanceAfter,
      this.actualBalanceAdjustment,
      this.availableBalanceAfter,
      this.availableBalanceAdjustment);

  factory _$_Entry.fromJson(Map<String, dynamic> json) =>
      _$$_EntryFromJson(json);

  @override
  final TransactionId? txId;
  @override
  final TransactionAmount? transactionAmount;
  @override
  final BalanceAfter? balanceAfter;
  @override
  final CardholderFee? cardholderFee;
  @override
  final String? processedTimestamp;
  @override
  final String? statementEntryState;
  @override
  final String? transactionState;
  @override
  final SourceAmount? sourceAmount;
  @override
  final AdditionalFields? additionalFields;
  @override
  final ActualBalanceAfter? actualBalanceAfter;
  @override
  final ActualBalanceAdjustment? actualBalanceAdjustment;
  @override
  final AvailableBalanceAfter? availableBalanceAfter;
  @override
  final AvailableBalanceAdjustment? availableBalanceAdjustment;

  @override
  String toString() {
    return 'Entry(txId: $txId, transactionAmount: $transactionAmount, balanceAfter: $balanceAfter, cardholderFee: $cardholderFee, processedTimestamp: $processedTimestamp, statementEntryState: $statementEntryState, transactionState: $transactionState, sourceAmount: $sourceAmount, additionalFields: $additionalFields, actualBalanceAfter: $actualBalanceAfter, actualBalanceAdjustment: $actualBalanceAdjustment, availableBalanceAfter: $availableBalanceAfter, availableBalanceAdjustment: $availableBalanceAdjustment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Entry &&
            (identical(other.txId, txId) ||
                const DeepCollectionEquality().equals(other.txId, txId)) &&
            (identical(other.transactionAmount, transactionAmount) ||
                const DeepCollectionEquality()
                    .equals(other.transactionAmount, transactionAmount)) &&
            (identical(other.balanceAfter, balanceAfter) ||
                const DeepCollectionEquality()
                    .equals(other.balanceAfter, balanceAfter)) &&
            (identical(other.cardholderFee, cardholderFee) ||
                const DeepCollectionEquality()
                    .equals(other.cardholderFee, cardholderFee)) &&
            (identical(other.processedTimestamp, processedTimestamp) ||
                const DeepCollectionEquality()
                    .equals(other.processedTimestamp, processedTimestamp)) &&
            (identical(other.statementEntryState, statementEntryState) ||
                const DeepCollectionEquality()
                    .equals(other.statementEntryState, statementEntryState)) &&
            (identical(other.transactionState, transactionState) ||
                const DeepCollectionEquality()
                    .equals(other.transactionState, transactionState)) &&
            (identical(other.sourceAmount, sourceAmount) ||
                const DeepCollectionEquality()
                    .equals(other.sourceAmount, sourceAmount)) &&
            (identical(other.additionalFields, additionalFields) ||
                const DeepCollectionEquality()
                    .equals(other.additionalFields, additionalFields)) &&
            (identical(other.actualBalanceAfter, actualBalanceAfter) ||
                const DeepCollectionEquality()
                    .equals(other.actualBalanceAfter, actualBalanceAfter)) &&
            (identical(
                    other.actualBalanceAdjustment, actualBalanceAdjustment) ||
                const DeepCollectionEquality().equals(
                    other.actualBalanceAdjustment, actualBalanceAdjustment)) &&
            (identical(other.availableBalanceAfter, availableBalanceAfter) ||
                const DeepCollectionEquality().equals(
                    other.availableBalanceAfter, availableBalanceAfter)) &&
            (identical(other.availableBalanceAdjustment,
                    availableBalanceAdjustment) ||
                const DeepCollectionEquality().equals(
                    other.availableBalanceAdjustment,
                    availableBalanceAdjustment)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(txId) ^
      const DeepCollectionEquality().hash(transactionAmount) ^
      const DeepCollectionEquality().hash(balanceAfter) ^
      const DeepCollectionEquality().hash(cardholderFee) ^
      const DeepCollectionEquality().hash(processedTimestamp) ^
      const DeepCollectionEquality().hash(statementEntryState) ^
      const DeepCollectionEquality().hash(transactionState) ^
      const DeepCollectionEquality().hash(sourceAmount) ^
      const DeepCollectionEquality().hash(additionalFields) ^
      const DeepCollectionEquality().hash(actualBalanceAfter) ^
      const DeepCollectionEquality().hash(actualBalanceAdjustment) ^
      const DeepCollectionEquality().hash(availableBalanceAfter) ^
      const DeepCollectionEquality().hash(availableBalanceAdjustment);

  @JsonKey(ignore: true)
  @override
  _$EntryCopyWith<_Entry> get copyWith =>
      __$EntryCopyWithImpl<_Entry>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EntryToJson(this);
  }
}

abstract class _Entry implements Entry {
  const factory _Entry(
      TransactionId? txId,
      TransactionAmount? transactionAmount,
      BalanceAfter? balanceAfter,
      CardholderFee? cardholderFee,
      String? processedTimestamp,
      String? statementEntryState,
      String? transactionState,
      SourceAmount? sourceAmount,
      AdditionalFields? additionalFields,
      ActualBalanceAfter? actualBalanceAfter,
      ActualBalanceAdjustment? actualBalanceAdjustment,
      AvailableBalanceAfter? availableBalanceAfter,
      AvailableBalanceAdjustment? availableBalanceAdjustment) = _$_Entry;

  factory _Entry.fromJson(Map<String, dynamic> json) = _$_Entry.fromJson;

  @override
  TransactionId? get txId => throw _privateConstructorUsedError;
  @override
  TransactionAmount? get transactionAmount =>
      throw _privateConstructorUsedError;
  @override
  BalanceAfter? get balanceAfter => throw _privateConstructorUsedError;
  @override
  CardholderFee? get cardholderFee => throw _privateConstructorUsedError;
  @override
  String? get processedTimestamp => throw _privateConstructorUsedError;
  @override
  String? get statementEntryState => throw _privateConstructorUsedError;
  @override
  String? get transactionState => throw _privateConstructorUsedError;
  @override
  SourceAmount? get sourceAmount => throw _privateConstructorUsedError;
  @override
  AdditionalFields? get additionalFields => throw _privateConstructorUsedError;
  @override
  ActualBalanceAfter? get actualBalanceAfter =>
      throw _privateConstructorUsedError;
  @override
  ActualBalanceAdjustment? get actualBalanceAdjustment =>
      throw _privateConstructorUsedError;
  @override
  AvailableBalanceAfter? get availableBalanceAfter =>
      throw _privateConstructorUsedError;
  @override
  AvailableBalanceAdjustment? get availableBalanceAdjustment =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$EntryCopyWith<_Entry> get copyWith => throw _privateConstructorUsedError;
}

TransactionId _$TransactionIdFromJson(Map<String, dynamic> json) {
  return _TransactionId.fromJson(json);
}

/// @nodoc
class _$TransactionIdTearOff {
  const _$TransactionIdTearOff();

  _TransactionId call(String type, String id) {
    return _TransactionId(
      type,
      id,
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
  String get type => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;

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
  $Res call({String type, String id});
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
    Object? type = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
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
  $Res call({String type, String id});
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
    Object? type = freezed,
    Object? id = freezed,
  }) {
    return _then(_TransactionId(
      type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TransactionId implements _TransactionId {
  const _$_TransactionId(this.type, this.id);

  factory _$_TransactionId.fromJson(Map<String, dynamic> json) =>
      _$$_TransactionIdFromJson(json);

  @override
  final String type;
  @override
  final String id;

  @override
  String toString() {
    return 'TransactionId(type: $type, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TransactionId &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(id);

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
  const factory _TransactionId(String type, String id) = _$_TransactionId;

  factory _TransactionId.fromJson(Map<String, dynamic> json) =
      _$_TransactionId.fromJson;

  @override
  String get type => throw _privateConstructorUsedError;
  @override
  String get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TransactionIdCopyWith<_TransactionId> get copyWith =>
      throw _privateConstructorUsedError;
}

TransactionAmount _$TransactionAmountFromJson(Map<String, dynamic> json) {
  return _TransactionAmount.fromJson(json);
}

/// @nodoc
class _$TransactionAmountTearOff {
  const _$TransactionAmountTearOff();

  _TransactionAmount call(String currency, String amount) {
    return _TransactionAmount(
      currency,
      amount,
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
  String get currency => throw _privateConstructorUsedError;
  String get amount => throw _privateConstructorUsedError;

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
  $Res call({String currency, String amount});
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
    Object? currency = freezed,
    Object? amount = freezed,
  }) {
    return _then(_value.copyWith(
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
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
  $Res call({String currency, String amount});
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
    Object? currency = freezed,
    Object? amount = freezed,
  }) {
    return _then(_TransactionAmount(
      currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TransactionAmount implements _TransactionAmount {
  const _$_TransactionAmount(this.currency, this.amount);

  factory _$_TransactionAmount.fromJson(Map<String, dynamic> json) =>
      _$$_TransactionAmountFromJson(json);

  @override
  final String currency;
  @override
  final String amount;

  @override
  String toString() {
    return 'TransactionAmount(currency: $currency, amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TransactionAmount &&
            (identical(other.currency, currency) ||
                const DeepCollectionEquality()
                    .equals(other.currency, currency)) &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(currency) ^
      const DeepCollectionEquality().hash(amount);

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
  const factory _TransactionAmount(String currency, String amount) =
      _$_TransactionAmount;

  factory _TransactionAmount.fromJson(Map<String, dynamic> json) =
      _$_TransactionAmount.fromJson;

  @override
  String get currency => throw _privateConstructorUsedError;
  @override
  String get amount => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TransactionAmountCopyWith<_TransactionAmount> get copyWith =>
      throw _privateConstructorUsedError;
}

BalanceAfter _$BalanceAfterFromJson(Map<String, dynamic> json) {
  return _BalanceAfter.fromJson(json);
}

/// @nodoc
class _$BalanceAfterTearOff {
  const _$BalanceAfterTearOff();

  _BalanceAfter call(String currency, String amount) {
    return _BalanceAfter(
      currency,
      amount,
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
  String get currency => throw _privateConstructorUsedError;
  String get amount => throw _privateConstructorUsedError;

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
  $Res call({String currency, String amount});
}

/// @nodoc
class _$BalanceAfterCopyWithImpl<$Res> implements $BalanceAfterCopyWith<$Res> {
  _$BalanceAfterCopyWithImpl(this._value, this._then);

  final BalanceAfter _value;
  // ignore: unused_field
  final $Res Function(BalanceAfter) _then;

  @override
  $Res call({
    Object? currency = freezed,
    Object? amount = freezed,
  }) {
    return _then(_value.copyWith(
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
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
  $Res call({String currency, String amount});
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
    Object? currency = freezed,
    Object? amount = freezed,
  }) {
    return _then(_BalanceAfter(
      currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BalanceAfter implements _BalanceAfter {
  const _$_BalanceAfter(this.currency, this.amount);

  factory _$_BalanceAfter.fromJson(Map<String, dynamic> json) =>
      _$$_BalanceAfterFromJson(json);

  @override
  final String currency;
  @override
  final String amount;

  @override
  String toString() {
    return 'BalanceAfter(currency: $currency, amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BalanceAfter &&
            (identical(other.currency, currency) ||
                const DeepCollectionEquality()
                    .equals(other.currency, currency)) &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(currency) ^
      const DeepCollectionEquality().hash(amount);

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
  const factory _BalanceAfter(String currency, String amount) = _$_BalanceAfter;

  factory _BalanceAfter.fromJson(Map<String, dynamic> json) =
      _$_BalanceAfter.fromJson;

  @override
  String get currency => throw _privateConstructorUsedError;
  @override
  String get amount => throw _privateConstructorUsedError;
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

  _CardholderFee call(String currency, String amount) {
    return _CardholderFee(
      currency,
      amount,
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
  String get currency => throw _privateConstructorUsedError;
  String get amount => throw _privateConstructorUsedError;

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
  $Res call({String currency, String amount});
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
    Object? currency = freezed,
    Object? amount = freezed,
  }) {
    return _then(_value.copyWith(
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
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
  $Res call({String currency, String amount});
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
    Object? currency = freezed,
    Object? amount = freezed,
  }) {
    return _then(_CardholderFee(
      currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CardholderFee implements _CardholderFee {
  const _$_CardholderFee(this.currency, this.amount);

  factory _$_CardholderFee.fromJson(Map<String, dynamic> json) =>
      _$$_CardholderFeeFromJson(json);

  @override
  final String currency;
  @override
  final String amount;

  @override
  String toString() {
    return 'CardholderFee(currency: $currency, amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CardholderFee &&
            (identical(other.currency, currency) ||
                const DeepCollectionEquality()
                    .equals(other.currency, currency)) &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(currency) ^
      const DeepCollectionEquality().hash(amount);

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
  const factory _CardholderFee(String currency, String amount) =
      _$_CardholderFee;

  factory _CardholderFee.fromJson(Map<String, dynamic> json) =
      _$_CardholderFee.fromJson;

  @override
  String get currency => throw _privateConstructorUsedError;
  @override
  String get amount => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CardholderFeeCopyWith<_CardholderFee> get copyWith =>
      throw _privateConstructorUsedError;
}

SourceAmount _$SourceAmountFromJson(Map<String, dynamic> json) {
  return _SourceAmount.fromJson(json);
}

/// @nodoc
class _$SourceAmountTearOff {
  const _$SourceAmountTearOff();

  _SourceAmount call(String currency, String amount) {
    return _SourceAmount(
      currency,
      amount,
    );
  }

  SourceAmount fromJson(Map<String, Object> json) {
    return SourceAmount.fromJson(json);
  }
}

/// @nodoc
const $SourceAmount = _$SourceAmountTearOff();

/// @nodoc
mixin _$SourceAmount {
  String get currency => throw _privateConstructorUsedError;
  String get amount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SourceAmountCopyWith<SourceAmount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SourceAmountCopyWith<$Res> {
  factory $SourceAmountCopyWith(
          SourceAmount value, $Res Function(SourceAmount) then) =
      _$SourceAmountCopyWithImpl<$Res>;
  $Res call({String currency, String amount});
}

/// @nodoc
class _$SourceAmountCopyWithImpl<$Res> implements $SourceAmountCopyWith<$Res> {
  _$SourceAmountCopyWithImpl(this._value, this._then);

  final SourceAmount _value;
  // ignore: unused_field
  final $Res Function(SourceAmount) _then;

  @override
  $Res call({
    Object? currency = freezed,
    Object? amount = freezed,
  }) {
    return _then(_value.copyWith(
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$SourceAmountCopyWith<$Res>
    implements $SourceAmountCopyWith<$Res> {
  factory _$SourceAmountCopyWith(
          _SourceAmount value, $Res Function(_SourceAmount) then) =
      __$SourceAmountCopyWithImpl<$Res>;
  @override
  $Res call({String currency, String amount});
}

/// @nodoc
class __$SourceAmountCopyWithImpl<$Res> extends _$SourceAmountCopyWithImpl<$Res>
    implements _$SourceAmountCopyWith<$Res> {
  __$SourceAmountCopyWithImpl(
      _SourceAmount _value, $Res Function(_SourceAmount) _then)
      : super(_value, (v) => _then(v as _SourceAmount));

  @override
  _SourceAmount get _value => super._value as _SourceAmount;

  @override
  $Res call({
    Object? currency = freezed,
    Object? amount = freezed,
  }) {
    return _then(_SourceAmount(
      currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SourceAmount implements _SourceAmount {
  const _$_SourceAmount(this.currency, this.amount);

  factory _$_SourceAmount.fromJson(Map<String, dynamic> json) =>
      _$$_SourceAmountFromJson(json);

  @override
  final String currency;
  @override
  final String amount;

  @override
  String toString() {
    return 'SourceAmount(currency: $currency, amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SourceAmount &&
            (identical(other.currency, currency) ||
                const DeepCollectionEquality()
                    .equals(other.currency, currency)) &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(currency) ^
      const DeepCollectionEquality().hash(amount);

  @JsonKey(ignore: true)
  @override
  _$SourceAmountCopyWith<_SourceAmount> get copyWith =>
      __$SourceAmountCopyWithImpl<_SourceAmount>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SourceAmountToJson(this);
  }
}

abstract class _SourceAmount implements SourceAmount {
  const factory _SourceAmount(String currency, String amount) = _$_SourceAmount;

  factory _SourceAmount.fromJson(Map<String, dynamic> json) =
      _$_SourceAmount.fromJson;

  @override
  String get currency => throw _privateConstructorUsedError;
  @override
  String get amount => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SourceAmountCopyWith<_SourceAmount> get copyWith =>
      throw _privateConstructorUsedError;
}

AvailableBalanceAdjustment _$AvailableBalanceAdjustmentFromJson(
    Map<String, dynamic> json) {
  return _AvailableBalanceAdjustment.fromJson(json);
}

/// @nodoc
class _$AvailableBalanceAdjustmentTearOff {
  const _$AvailableBalanceAdjustmentTearOff();

  _AvailableBalanceAdjustment call(String currency, String amount) {
    return _AvailableBalanceAdjustment(
      currency,
      amount,
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
  String get currency => throw _privateConstructorUsedError;
  String get amount => throw _privateConstructorUsedError;

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
  $Res call({String currency, String amount});
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
    Object? currency = freezed,
    Object? amount = freezed,
  }) {
    return _then(_value.copyWith(
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
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
  $Res call({String currency, String amount});
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
    Object? currency = freezed,
    Object? amount = freezed,
  }) {
    return _then(_AvailableBalanceAdjustment(
      currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AvailableBalanceAdjustment implements _AvailableBalanceAdjustment {
  const _$_AvailableBalanceAdjustment(this.currency, this.amount);

  factory _$_AvailableBalanceAdjustment.fromJson(Map<String, dynamic> json) =>
      _$$_AvailableBalanceAdjustmentFromJson(json);

  @override
  final String currency;
  @override
  final String amount;

  @override
  String toString() {
    return 'AvailableBalanceAdjustment(currency: $currency, amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AvailableBalanceAdjustment &&
            (identical(other.currency, currency) ||
                const DeepCollectionEquality()
                    .equals(other.currency, currency)) &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(currency) ^
      const DeepCollectionEquality().hash(amount);

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
  const factory _AvailableBalanceAdjustment(String currency, String amount) =
      _$_AvailableBalanceAdjustment;

  factory _AvailableBalanceAdjustment.fromJson(Map<String, dynamic> json) =
      _$_AvailableBalanceAdjustment.fromJson;

  @override
  String get currency => throw _privateConstructorUsedError;
  @override
  String get amount => throw _privateConstructorUsedError;
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

  _AvailableBalanceAfter call(String currency, String amount) {
    return _AvailableBalanceAfter(
      currency,
      amount,
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
  String get currency => throw _privateConstructorUsedError;
  String get amount => throw _privateConstructorUsedError;

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
  $Res call({String currency, String amount});
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
    Object? currency = freezed,
    Object? amount = freezed,
  }) {
    return _then(_value.copyWith(
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
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
  $Res call({String currency, String amount});
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
    Object? currency = freezed,
    Object? amount = freezed,
  }) {
    return _then(_AvailableBalanceAfter(
      currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AvailableBalanceAfter implements _AvailableBalanceAfter {
  const _$_AvailableBalanceAfter(this.currency, this.amount);

  factory _$_AvailableBalanceAfter.fromJson(Map<String, dynamic> json) =>
      _$$_AvailableBalanceAfterFromJson(json);

  @override
  final String currency;
  @override
  final String amount;

  @override
  String toString() {
    return 'AvailableBalanceAfter(currency: $currency, amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AvailableBalanceAfter &&
            (identical(other.currency, currency) ||
                const DeepCollectionEquality()
                    .equals(other.currency, currency)) &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(currency) ^
      const DeepCollectionEquality().hash(amount);

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
  const factory _AvailableBalanceAfter(String currency, String amount) =
      _$_AvailableBalanceAfter;

  factory _AvailableBalanceAfter.fromJson(Map<String, dynamic> json) =
      _$_AvailableBalanceAfter.fromJson;

  @override
  String get currency => throw _privateConstructorUsedError;
  @override
  String get amount => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AvailableBalanceAfterCopyWith<_AvailableBalanceAfter> get copyWith =>
      throw _privateConstructorUsedError;
}

ActualBalanceAdjustment _$ActualBalanceAdjustmentFromJson(
    Map<String, dynamic> json) {
  return _ActualBalanceAdjustment.fromJson(json);
}

/// @nodoc
class _$ActualBalanceAdjustmentTearOff {
  const _$ActualBalanceAdjustmentTearOff();

  _ActualBalanceAdjustment call(String currency, String amount) {
    return _ActualBalanceAdjustment(
      currency,
      amount,
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
  String get currency => throw _privateConstructorUsedError;
  String get amount => throw _privateConstructorUsedError;

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
  $Res call({String currency, String amount});
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
    Object? currency = freezed,
    Object? amount = freezed,
  }) {
    return _then(_value.copyWith(
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
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
  $Res call({String currency, String amount});
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
    Object? currency = freezed,
    Object? amount = freezed,
  }) {
    return _then(_ActualBalanceAdjustment(
      currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ActualBalanceAdjustment implements _ActualBalanceAdjustment {
  const _$_ActualBalanceAdjustment(this.currency, this.amount);

  factory _$_ActualBalanceAdjustment.fromJson(Map<String, dynamic> json) =>
      _$$_ActualBalanceAdjustmentFromJson(json);

  @override
  final String currency;
  @override
  final String amount;

  @override
  String toString() {
    return 'ActualBalanceAdjustment(currency: $currency, amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ActualBalanceAdjustment &&
            (identical(other.currency, currency) ||
                const DeepCollectionEquality()
                    .equals(other.currency, currency)) &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(currency) ^
      const DeepCollectionEquality().hash(amount);

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
  const factory _ActualBalanceAdjustment(String currency, String amount) =
      _$_ActualBalanceAdjustment;

  factory _ActualBalanceAdjustment.fromJson(Map<String, dynamic> json) =
      _$_ActualBalanceAdjustment.fromJson;

  @override
  String get currency => throw _privateConstructorUsedError;
  @override
  String get amount => throw _privateConstructorUsedError;
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

  _ActualBalanceAfter call(String currency, String amount) {
    return _ActualBalanceAfter(
      currency,
      amount,
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
  String get currency => throw _privateConstructorUsedError;
  String get amount => throw _privateConstructorUsedError;

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
  $Res call({String currency, String amount});
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
    Object? currency = freezed,
    Object? amount = freezed,
  }) {
    return _then(_value.copyWith(
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
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
  $Res call({String currency, String amount});
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
    Object? currency = freezed,
    Object? amount = freezed,
  }) {
    return _then(_ActualBalanceAfter(
      currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ActualBalanceAfter implements _ActualBalanceAfter {
  const _$_ActualBalanceAfter(this.currency, this.amount);

  factory _$_ActualBalanceAfter.fromJson(Map<String, dynamic> json) =>
      _$$_ActualBalanceAfterFromJson(json);

  @override
  final String currency;
  @override
  final String amount;

  @override
  String toString() {
    return 'ActualBalanceAfter(currency: $currency, amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ActualBalanceAfter &&
            (identical(other.currency, currency) ||
                const DeepCollectionEquality()
                    .equals(other.currency, currency)) &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(currency) ^
      const DeepCollectionEquality().hash(amount);

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
  const factory _ActualBalanceAfter(String currency, String amount) =
      _$_ActualBalanceAfter;

  factory _ActualBalanceAfter.fromJson(Map<String, dynamic> json) =
      _$_ActualBalanceAfter.fromJson;

  @override
  String get currency => throw _privateConstructorUsedError;
  @override
  String get amount => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ActualBalanceAfterCopyWith<_ActualBalanceAfter> get copyWith =>
      throw _privateConstructorUsedError;
}

AdditionalFields _$AdditionalFieldsFromJson(Map<String, dynamic> json) {
  return _AdditionalFields.fromJson(json);
}

/// @nodoc
class _$AdditionalFieldsTearOff {
  const _$AdditionalFieldsTearOff();

  _AdditionalFields call(
      String? authorisationCode,
      String? forexFeeCurrency,
      String? forexFeeAmount,
      String? authorisationRelatedId,
      String? merchantTransactionType,
      String? merchantTerminalCountry,
      String? merchantCategoryCode,
      String? merchantId,
      String? merchantName,
      String? exchangeRate) {
    return _AdditionalFields(
      authorisationCode,
      forexFeeCurrency,
      forexFeeAmount,
      authorisationRelatedId,
      merchantTransactionType,
      merchantTerminalCountry,
      merchantCategoryCode,
      merchantId,
      merchantName,
      exchangeRate,
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
  String? get authorisationCode => throw _privateConstructorUsedError;
  String? get forexFeeCurrency => throw _privateConstructorUsedError;
  String? get forexFeeAmount => throw _privateConstructorUsedError;
  String? get authorisationRelatedId => throw _privateConstructorUsedError;
  String? get merchantTransactionType => throw _privateConstructorUsedError;
  String? get merchantTerminalCountry => throw _privateConstructorUsedError;
  String? get merchantCategoryCode => throw _privateConstructorUsedError;
  String? get merchantId => throw _privateConstructorUsedError;
  String? get merchantName => throw _privateConstructorUsedError;
  String? get exchangeRate => throw _privateConstructorUsedError;

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
      {String? authorisationCode,
      String? forexFeeCurrency,
      String? forexFeeAmount,
      String? authorisationRelatedId,
      String? merchantTransactionType,
      String? merchantTerminalCountry,
      String? merchantCategoryCode,
      String? merchantId,
      String? merchantName,
      String? exchangeRate});
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
    Object? authorisationCode = freezed,
    Object? forexFeeCurrency = freezed,
    Object? forexFeeAmount = freezed,
    Object? authorisationRelatedId = freezed,
    Object? merchantTransactionType = freezed,
    Object? merchantTerminalCountry = freezed,
    Object? merchantCategoryCode = freezed,
    Object? merchantId = freezed,
    Object? merchantName = freezed,
    Object? exchangeRate = freezed,
  }) {
    return _then(_value.copyWith(
      authorisationCode: authorisationCode == freezed
          ? _value.authorisationCode
          : authorisationCode // ignore: cast_nullable_to_non_nullable
              as String?,
      forexFeeCurrency: forexFeeCurrency == freezed
          ? _value.forexFeeCurrency
          : forexFeeCurrency // ignore: cast_nullable_to_non_nullable
              as String?,
      forexFeeAmount: forexFeeAmount == freezed
          ? _value.forexFeeAmount
          : forexFeeAmount // ignore: cast_nullable_to_non_nullable
              as String?,
      authorisationRelatedId: authorisationRelatedId == freezed
          ? _value.authorisationRelatedId
          : authorisationRelatedId // ignore: cast_nullable_to_non_nullable
              as String?,
      merchantTransactionType: merchantTransactionType == freezed
          ? _value.merchantTransactionType
          : merchantTransactionType // ignore: cast_nullable_to_non_nullable
              as String?,
      merchantTerminalCountry: merchantTerminalCountry == freezed
          ? _value.merchantTerminalCountry
          : merchantTerminalCountry // ignore: cast_nullable_to_non_nullable
              as String?,
      merchantCategoryCode: merchantCategoryCode == freezed
          ? _value.merchantCategoryCode
          : merchantCategoryCode // ignore: cast_nullable_to_non_nullable
              as String?,
      merchantId: merchantId == freezed
          ? _value.merchantId
          : merchantId // ignore: cast_nullable_to_non_nullable
              as String?,
      merchantName: merchantName == freezed
          ? _value.merchantName
          : merchantName // ignore: cast_nullable_to_non_nullable
              as String?,
      exchangeRate: exchangeRate == freezed
          ? _value.exchangeRate
          : exchangeRate // ignore: cast_nullable_to_non_nullable
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
      {String? authorisationCode,
      String? forexFeeCurrency,
      String? forexFeeAmount,
      String? authorisationRelatedId,
      String? merchantTransactionType,
      String? merchantTerminalCountry,
      String? merchantCategoryCode,
      String? merchantId,
      String? merchantName,
      String? exchangeRate});
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
    Object? authorisationCode = freezed,
    Object? forexFeeCurrency = freezed,
    Object? forexFeeAmount = freezed,
    Object? authorisationRelatedId = freezed,
    Object? merchantTransactionType = freezed,
    Object? merchantTerminalCountry = freezed,
    Object? merchantCategoryCode = freezed,
    Object? merchantId = freezed,
    Object? merchantName = freezed,
    Object? exchangeRate = freezed,
  }) {
    return _then(_AdditionalFields(
      authorisationCode == freezed
          ? _value.authorisationCode
          : authorisationCode // ignore: cast_nullable_to_non_nullable
              as String?,
      forexFeeCurrency == freezed
          ? _value.forexFeeCurrency
          : forexFeeCurrency // ignore: cast_nullable_to_non_nullable
              as String?,
      forexFeeAmount == freezed
          ? _value.forexFeeAmount
          : forexFeeAmount // ignore: cast_nullable_to_non_nullable
              as String?,
      authorisationRelatedId == freezed
          ? _value.authorisationRelatedId
          : authorisationRelatedId // ignore: cast_nullable_to_non_nullable
              as String?,
      merchantTransactionType == freezed
          ? _value.merchantTransactionType
          : merchantTransactionType // ignore: cast_nullable_to_non_nullable
              as String?,
      merchantTerminalCountry == freezed
          ? _value.merchantTerminalCountry
          : merchantTerminalCountry // ignore: cast_nullable_to_non_nullable
              as String?,
      merchantCategoryCode == freezed
          ? _value.merchantCategoryCode
          : merchantCategoryCode // ignore: cast_nullable_to_non_nullable
              as String?,
      merchantId == freezed
          ? _value.merchantId
          : merchantId // ignore: cast_nullable_to_non_nullable
              as String?,
      merchantName == freezed
          ? _value.merchantName
          : merchantName // ignore: cast_nullable_to_non_nullable
              as String?,
      exchangeRate == freezed
          ? _value.exchangeRate
          : exchangeRate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AdditionalFields implements _AdditionalFields {
  const _$_AdditionalFields(
      this.authorisationCode,
      this.forexFeeCurrency,
      this.forexFeeAmount,
      this.authorisationRelatedId,
      this.merchantTransactionType,
      this.merchantTerminalCountry,
      this.merchantCategoryCode,
      this.merchantId,
      this.merchantName,
      this.exchangeRate);

  factory _$_AdditionalFields.fromJson(Map<String, dynamic> json) =>
      _$$_AdditionalFieldsFromJson(json);

  @override
  final String? authorisationCode;
  @override
  final String? forexFeeCurrency;
  @override
  final String? forexFeeAmount;
  @override
  final String? authorisationRelatedId;
  @override
  final String? merchantTransactionType;
  @override
  final String? merchantTerminalCountry;
  @override
  final String? merchantCategoryCode;
  @override
  final String? merchantId;
  @override
  final String? merchantName;
  @override
  final String? exchangeRate;

  @override
  String toString() {
    return 'AdditionalFields(authorisationCode: $authorisationCode, forexFeeCurrency: $forexFeeCurrency, forexFeeAmount: $forexFeeAmount, authorisationRelatedId: $authorisationRelatedId, merchantTransactionType: $merchantTransactionType, merchantTerminalCountry: $merchantTerminalCountry, merchantCategoryCode: $merchantCategoryCode, merchantId: $merchantId, merchantName: $merchantName, exchangeRate: $exchangeRate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AdditionalFields &&
            (identical(other.authorisationCode, authorisationCode) ||
                const DeepCollectionEquality()
                    .equals(other.authorisationCode, authorisationCode)) &&
            (identical(other.forexFeeCurrency, forexFeeCurrency) ||
                const DeepCollectionEquality()
                    .equals(other.forexFeeCurrency, forexFeeCurrency)) &&
            (identical(other.forexFeeAmount, forexFeeAmount) ||
                const DeepCollectionEquality()
                    .equals(other.forexFeeAmount, forexFeeAmount)) &&
            (identical(other.authorisationRelatedId, authorisationRelatedId) ||
                const DeepCollectionEquality().equals(
                    other.authorisationRelatedId, authorisationRelatedId)) &&
            (identical(
                    other.merchantTransactionType, merchantTransactionType) ||
                const DeepCollectionEquality().equals(
                    other.merchantTransactionType, merchantTransactionType)) &&
            (identical(
                    other.merchantTerminalCountry, merchantTerminalCountry) ||
                const DeepCollectionEquality().equals(
                    other.merchantTerminalCountry, merchantTerminalCountry)) &&
            (identical(other.merchantCategoryCode, merchantCategoryCode) ||
                const DeepCollectionEquality().equals(
                    other.merchantCategoryCode, merchantCategoryCode)) &&
            (identical(other.merchantId, merchantId) ||
                const DeepCollectionEquality()
                    .equals(other.merchantId, merchantId)) &&
            (identical(other.merchantName, merchantName) ||
                const DeepCollectionEquality()
                    .equals(other.merchantName, merchantName)) &&
            (identical(other.exchangeRate, exchangeRate) ||
                const DeepCollectionEquality()
                    .equals(other.exchangeRate, exchangeRate)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(authorisationCode) ^
      const DeepCollectionEquality().hash(forexFeeCurrency) ^
      const DeepCollectionEquality().hash(forexFeeAmount) ^
      const DeepCollectionEquality().hash(authorisationRelatedId) ^
      const DeepCollectionEquality().hash(merchantTransactionType) ^
      const DeepCollectionEquality().hash(merchantTerminalCountry) ^
      const DeepCollectionEquality().hash(merchantCategoryCode) ^
      const DeepCollectionEquality().hash(merchantId) ^
      const DeepCollectionEquality().hash(merchantName) ^
      const DeepCollectionEquality().hash(exchangeRate);

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
      String? authorisationCode,
      String? forexFeeCurrency,
      String? forexFeeAmount,
      String? authorisationRelatedId,
      String? merchantTransactionType,
      String? merchantTerminalCountry,
      String? merchantCategoryCode,
      String? merchantId,
      String? merchantName,
      String? exchangeRate) = _$_AdditionalFields;

  factory _AdditionalFields.fromJson(Map<String, dynamic> json) =
      _$_AdditionalFields.fromJson;

  @override
  String? get authorisationCode => throw _privateConstructorUsedError;
  @override
  String? get forexFeeCurrency => throw _privateConstructorUsedError;
  @override
  String? get forexFeeAmount => throw _privateConstructorUsedError;
  @override
  String? get authorisationRelatedId => throw _privateConstructorUsedError;
  @override
  String? get merchantTransactionType => throw _privateConstructorUsedError;
  @override
  String? get merchantTerminalCountry => throw _privateConstructorUsedError;
  @override
  String? get merchantCategoryCode => throw _privateConstructorUsedError;
  @override
  String? get merchantId => throw _privateConstructorUsedError;
  @override
  String? get merchantName => throw _privateConstructorUsedError;
  @override
  String? get exchangeRate => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AdditionalFieldsCopyWith<_AdditionalFields> get copyWith =>
      throw _privateConstructorUsedError;
}
