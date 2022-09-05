// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'card_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CardDetailsModel _$CardDetailsModelFromJson(Map<String, dynamic> json) {
  return _CardDetailsModel.fromJson(json);
}

/// @nodoc
class _$CardDetailsModelTearOff {
  const _$CardDetailsModelTearOff();

  _CardDetailsModel call(int? code, String? status, UserCardDetails? data) {
    return _CardDetailsModel(
      code,
      status,
      data,
    );
  }

  CardDetailsModel fromJson(Map<String, Object> json) {
    return CardDetailsModel.fromJson(json);
  }
}

/// @nodoc
const $CardDetailsModel = _$CardDetailsModelTearOff();

/// @nodoc
mixin _$CardDetailsModel {
  int? get code => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  UserCardDetails? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CardDetailsModelCopyWith<CardDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardDetailsModelCopyWith<$Res> {
  factory $CardDetailsModelCopyWith(
          CardDetailsModel value, $Res Function(CardDetailsModel) then) =
      _$CardDetailsModelCopyWithImpl<$Res>;
  $Res call({int? code, String? status, UserCardDetails? data});

  $UserCardDetailsCopyWith<$Res>? get data;
}

/// @nodoc
class _$CardDetailsModelCopyWithImpl<$Res>
    implements $CardDetailsModelCopyWith<$Res> {
  _$CardDetailsModelCopyWithImpl(this._value, this._then);

  final CardDetailsModel _value;
  // ignore: unused_field
  final $Res Function(CardDetailsModel) _then;

  @override
  $Res call({
    Object? code = freezed,
    Object? status = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as UserCardDetails?,
    ));
  }

  @override
  $UserCardDetailsCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $UserCardDetailsCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$CardDetailsModelCopyWith<$Res>
    implements $CardDetailsModelCopyWith<$Res> {
  factory _$CardDetailsModelCopyWith(
          _CardDetailsModel value, $Res Function(_CardDetailsModel) then) =
      __$CardDetailsModelCopyWithImpl<$Res>;
  @override
  $Res call({int? code, String? status, UserCardDetails? data});

  @override
  $UserCardDetailsCopyWith<$Res>? get data;
}

/// @nodoc
class __$CardDetailsModelCopyWithImpl<$Res>
    extends _$CardDetailsModelCopyWithImpl<$Res>
    implements _$CardDetailsModelCopyWith<$Res> {
  __$CardDetailsModelCopyWithImpl(
      _CardDetailsModel _value, $Res Function(_CardDetailsModel) _then)
      : super(_value, (v) => _then(v as _CardDetailsModel));

  @override
  _CardDetailsModel get _value => super._value as _CardDetailsModel;

  @override
  $Res call({
    Object? code = freezed,
    Object? status = freezed,
    Object? data = freezed,
  }) {
    return _then(_CardDetailsModel(
      code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as UserCardDetails?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CardDetailsModel implements _CardDetailsModel {
  const _$_CardDetailsModel(this.code, this.status, this.data);

  factory _$_CardDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$$_CardDetailsModelFromJson(json);

  @override
  final int? code;
  @override
  final String? status;
  @override
  final UserCardDetails? data;

  @override
  String toString() {
    return 'CardDetailsModel(code: $code, status: $status, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CardDetailsModel &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$CardDetailsModelCopyWith<_CardDetailsModel> get copyWith =>
      __$CardDetailsModelCopyWithImpl<_CardDetailsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CardDetailsModelToJson(this);
  }
}

abstract class _CardDetailsModel implements CardDetailsModel {
  const factory _CardDetailsModel(
      int? code, String? status, UserCardDetails? data) = _$_CardDetailsModel;

  factory _CardDetailsModel.fromJson(Map<String, dynamic> json) =
      _$_CardDetailsModel.fromJson;

  @override
  int? get code => throw _privateConstructorUsedError;
  @override
  String? get status => throw _privateConstructorUsedError;
  @override
  UserCardDetails? get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CardDetailsModelCopyWith<_CardDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

UserCardDetails _$UserCardDetailsFromJson(Map<String, dynamic> json) {
  return _UserCardDetails.fromJson(json);
}

/// @nodoc
class _$UserCardDetailsTearOff {
  const _$UserCardDetailsTearOff();

  _UserCardDetails call(
      String? card_pan,
      String? expiration,
      String? cvv,
      String? is_active,
      String? currency,
      String? name_on_cad,
      QrImage? qrimage) {
    return _UserCardDetails(
      card_pan,
      expiration,
      cvv,
      is_active,
      currency,
      name_on_cad,
      qrimage,
    );
  }

  UserCardDetails fromJson(Map<String, Object> json) {
    return UserCardDetails.fromJson(json);
  }
}

/// @nodoc
const $UserCardDetails = _$UserCardDetailsTearOff();

/// @nodoc
mixin _$UserCardDetails {
  String? get card_pan => throw _privateConstructorUsedError;
  String? get expiration => throw _privateConstructorUsedError;
  String? get cvv => throw _privateConstructorUsedError;
  String? get is_active => throw _privateConstructorUsedError;
  String? get currency => throw _privateConstructorUsedError;
  String? get name_on_cad => throw _privateConstructorUsedError;
  QrImage? get qrimage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCardDetailsCopyWith<UserCardDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCardDetailsCopyWith<$Res> {
  factory $UserCardDetailsCopyWith(
          UserCardDetails value, $Res Function(UserCardDetails) then) =
      _$UserCardDetailsCopyWithImpl<$Res>;
  $Res call(
      {String? card_pan,
      String? expiration,
      String? cvv,
      String? is_active,
      String? currency,
      String? name_on_cad,
      QrImage? qrimage});

  $QrImageCopyWith<$Res>? get qrimage;
}

/// @nodoc
class _$UserCardDetailsCopyWithImpl<$Res>
    implements $UserCardDetailsCopyWith<$Res> {
  _$UserCardDetailsCopyWithImpl(this._value, this._then);

  final UserCardDetails _value;
  // ignore: unused_field
  final $Res Function(UserCardDetails) _then;

  @override
  $Res call({
    Object? card_pan = freezed,
    Object? expiration = freezed,
    Object? cvv = freezed,
    Object? is_active = freezed,
    Object? currency = freezed,
    Object? name_on_cad = freezed,
    Object? qrimage = freezed,
  }) {
    return _then(_value.copyWith(
      card_pan: card_pan == freezed
          ? _value.card_pan
          : card_pan // ignore: cast_nullable_to_non_nullable
              as String?,
      expiration: expiration == freezed
          ? _value.expiration
          : expiration // ignore: cast_nullable_to_non_nullable
              as String?,
      cvv: cvv == freezed
          ? _value.cvv
          : cvv // ignore: cast_nullable_to_non_nullable
              as String?,
      is_active: is_active == freezed
          ? _value.is_active
          : is_active // ignore: cast_nullable_to_non_nullable
              as String?,
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      name_on_cad: name_on_cad == freezed
          ? _value.name_on_cad
          : name_on_cad // ignore: cast_nullable_to_non_nullable
              as String?,
      qrimage: qrimage == freezed
          ? _value.qrimage
          : qrimage // ignore: cast_nullable_to_non_nullable
              as QrImage?,
    ));
  }

  @override
  $QrImageCopyWith<$Res>? get qrimage {
    if (_value.qrimage == null) {
      return null;
    }

    return $QrImageCopyWith<$Res>(_value.qrimage!, (value) {
      return _then(_value.copyWith(qrimage: value));
    });
  }
}

/// @nodoc
abstract class _$UserCardDetailsCopyWith<$Res>
    implements $UserCardDetailsCopyWith<$Res> {
  factory _$UserCardDetailsCopyWith(
          _UserCardDetails value, $Res Function(_UserCardDetails) then) =
      __$UserCardDetailsCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? card_pan,
      String? expiration,
      String? cvv,
      String? is_active,
      String? currency,
      String? name_on_cad,
      QrImage? qrimage});

  @override
  $QrImageCopyWith<$Res>? get qrimage;
}

/// @nodoc
class __$UserCardDetailsCopyWithImpl<$Res>
    extends _$UserCardDetailsCopyWithImpl<$Res>
    implements _$UserCardDetailsCopyWith<$Res> {
  __$UserCardDetailsCopyWithImpl(
      _UserCardDetails _value, $Res Function(_UserCardDetails) _then)
      : super(_value, (v) => _then(v as _UserCardDetails));

  @override
  _UserCardDetails get _value => super._value as _UserCardDetails;

  @override
  $Res call({
    Object? card_pan = freezed,
    Object? expiration = freezed,
    Object? cvv = freezed,
    Object? is_active = freezed,
    Object? currency = freezed,
    Object? name_on_cad = freezed,
    Object? qrimage = freezed,
  }) {
    return _then(_UserCardDetails(
      card_pan == freezed
          ? _value.card_pan
          : card_pan // ignore: cast_nullable_to_non_nullable
              as String?,
      expiration == freezed
          ? _value.expiration
          : expiration // ignore: cast_nullable_to_non_nullable
              as String?,
      cvv == freezed
          ? _value.cvv
          : cvv // ignore: cast_nullable_to_non_nullable
              as String?,
      is_active == freezed
          ? _value.is_active
          : is_active // ignore: cast_nullable_to_non_nullable
              as String?,
      currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      name_on_cad == freezed
          ? _value.name_on_cad
          : name_on_cad // ignore: cast_nullable_to_non_nullable
              as String?,
      qrimage == freezed
          ? _value.qrimage
          : qrimage // ignore: cast_nullable_to_non_nullable
              as QrImage?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserCardDetails implements _UserCardDetails {
  const _$_UserCardDetails(this.card_pan, this.expiration, this.cvv,
      this.is_active, this.currency, this.name_on_cad, this.qrimage);

  factory _$_UserCardDetails.fromJson(Map<String, dynamic> json) =>
      _$$_UserCardDetailsFromJson(json);

  @override
  final String? card_pan;
  @override
  final String? expiration;
  @override
  final String? cvv;
  @override
  final String? is_active;
  @override
  final String? currency;
  @override
  final String? name_on_cad;
  @override
  final QrImage? qrimage;

  @override
  String toString() {
    return 'UserCardDetails(card_pan: $card_pan, expiration: $expiration, cvv: $cvv, is_active: $is_active, currency: $currency, name_on_cad: $name_on_cad, qrimage: $qrimage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserCardDetails &&
            (identical(other.card_pan, card_pan) ||
                const DeepCollectionEquality()
                    .equals(other.card_pan, card_pan)) &&
            (identical(other.expiration, expiration) ||
                const DeepCollectionEquality()
                    .equals(other.expiration, expiration)) &&
            (identical(other.cvv, cvv) ||
                const DeepCollectionEquality().equals(other.cvv, cvv)) &&
            (identical(other.is_active, is_active) ||
                const DeepCollectionEquality()
                    .equals(other.is_active, is_active)) &&
            (identical(other.currency, currency) ||
                const DeepCollectionEquality()
                    .equals(other.currency, currency)) &&
            (identical(other.name_on_cad, name_on_cad) ||
                const DeepCollectionEquality()
                    .equals(other.name_on_cad, name_on_cad)) &&
            (identical(other.qrimage, qrimage) ||
                const DeepCollectionEquality().equals(other.qrimage, qrimage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(card_pan) ^
      const DeepCollectionEquality().hash(expiration) ^
      const DeepCollectionEquality().hash(cvv) ^
      const DeepCollectionEquality().hash(is_active) ^
      const DeepCollectionEquality().hash(currency) ^
      const DeepCollectionEquality().hash(name_on_cad) ^
      const DeepCollectionEquality().hash(qrimage);

  @JsonKey(ignore: true)
  @override
  _$UserCardDetailsCopyWith<_UserCardDetails> get copyWith =>
      __$UserCardDetailsCopyWithImpl<_UserCardDetails>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserCardDetailsToJson(this);
  }
}

abstract class _UserCardDetails implements UserCardDetails {
  const factory _UserCardDetails(
      String? card_pan,
      String? expiration,
      String? cvv,
      String? is_active,
      String? currency,
      String? name_on_cad,
      QrImage? qrimage) = _$_UserCardDetails;

  factory _UserCardDetails.fromJson(Map<String, dynamic> json) =
      _$_UserCardDetails.fromJson;

  @override
  String? get card_pan => throw _privateConstructorUsedError;
  @override
  String? get expiration => throw _privateConstructorUsedError;
  @override
  String? get cvv => throw _privateConstructorUsedError;
  @override
  String? get is_active => throw _privateConstructorUsedError;
  @override
  String? get currency => throw _privateConstructorUsedError;
  @override
  String? get name_on_cad => throw _privateConstructorUsedError;
  @override
  QrImage? get qrimage => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserCardDetailsCopyWith<_UserCardDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

QrImage _$QrImageFromJson(Map<String, dynamic> json) {
  return _QrImage.fromJson(json);
}

/// @nodoc
class _$QrImageTearOff {
  const _$QrImageTearOff();

  _QrImage call(String? url, ImageData? data) {
    return _QrImage(
      url,
      data,
    );
  }

  QrImage fromJson(Map<String, Object> json) {
    return QrImage.fromJson(json);
  }
}

/// @nodoc
const $QrImage = _$QrImageTearOff();

/// @nodoc
mixin _$QrImage {
  String? get url => throw _privateConstructorUsedError;
  ImageData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QrImageCopyWith<QrImage> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QrImageCopyWith<$Res> {
  factory $QrImageCopyWith(QrImage value, $Res Function(QrImage) then) =
      _$QrImageCopyWithImpl<$Res>;
  $Res call({String? url, ImageData? data});

  $ImageDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$QrImageCopyWithImpl<$Res> implements $QrImageCopyWith<$Res> {
  _$QrImageCopyWithImpl(this._value, this._then);

  final QrImage _value;
  // ignore: unused_field
  final $Res Function(QrImage) _then;

  @override
  $Res call({
    Object? url = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ImageData?,
    ));
  }

  @override
  $ImageDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $ImageDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$QrImageCopyWith<$Res> implements $QrImageCopyWith<$Res> {
  factory _$QrImageCopyWith(_QrImage value, $Res Function(_QrImage) then) =
      __$QrImageCopyWithImpl<$Res>;
  @override
  $Res call({String? url, ImageData? data});

  @override
  $ImageDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$QrImageCopyWithImpl<$Res> extends _$QrImageCopyWithImpl<$Res>
    implements _$QrImageCopyWith<$Res> {
  __$QrImageCopyWithImpl(_QrImage _value, $Res Function(_QrImage) _then)
      : super(_value, (v) => _then(v as _QrImage));

  @override
  _QrImage get _value => super._value as _QrImage;

  @override
  $Res call({
    Object? url = freezed,
    Object? data = freezed,
  }) {
    return _then(_QrImage(
      url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ImageData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_QrImage implements _QrImage {
  const _$_QrImage(this.url, this.data);

  factory _$_QrImage.fromJson(Map<String, dynamic> json) =>
      _$$_QrImageFromJson(json);

  @override
  final String? url;
  @override
  final ImageData? data;

  @override
  String toString() {
    return 'QrImage(url: $url, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _QrImage &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$QrImageCopyWith<_QrImage> get copyWith =>
      __$QrImageCopyWithImpl<_QrImage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QrImageToJson(this);
  }
}

abstract class _QrImage implements QrImage {
  const factory _QrImage(String? url, ImageData? data) = _$_QrImage;

  factory _QrImage.fromJson(Map<String, dynamic> json) = _$_QrImage.fromJson;

  @override
  String? get url => throw _privateConstructorUsedError;
  @override
  ImageData? get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$QrImageCopyWith<_QrImage> get copyWith =>
      throw _privateConstructorUsedError;
}

ImageData _$ImageDataFromJson(Map<String, dynamic> json) {
  return _ImageData.fromJson(json);
}

/// @nodoc
class _$ImageDataTearOff {
  const _$ImageDataTearOff();

  _ImageData call(String? expiration, String? name_on_card, String? cvv,
      String? card_hash) {
    return _ImageData(
      expiration,
      name_on_card,
      cvv,
      card_hash,
    );
  }

  ImageData fromJson(Map<String, Object> json) {
    return ImageData.fromJson(json);
  }
}

/// @nodoc
const $ImageData = _$ImageDataTearOff();

/// @nodoc
mixin _$ImageData {
  String? get expiration => throw _privateConstructorUsedError;
  String? get name_on_card => throw _privateConstructorUsedError;
  String? get cvv => throw _privateConstructorUsedError;
  String? get card_hash => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageDataCopyWith<ImageData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageDataCopyWith<$Res> {
  factory $ImageDataCopyWith(ImageData value, $Res Function(ImageData) then) =
      _$ImageDataCopyWithImpl<$Res>;
  $Res call(
      {String? expiration,
      String? name_on_card,
      String? cvv,
      String? card_hash});
}

/// @nodoc
class _$ImageDataCopyWithImpl<$Res> implements $ImageDataCopyWith<$Res> {
  _$ImageDataCopyWithImpl(this._value, this._then);

  final ImageData _value;
  // ignore: unused_field
  final $Res Function(ImageData) _then;

  @override
  $Res call({
    Object? expiration = freezed,
    Object? name_on_card = freezed,
    Object? cvv = freezed,
    Object? card_hash = freezed,
  }) {
    return _then(_value.copyWith(
      expiration: expiration == freezed
          ? _value.expiration
          : expiration // ignore: cast_nullable_to_non_nullable
              as String?,
      name_on_card: name_on_card == freezed
          ? _value.name_on_card
          : name_on_card // ignore: cast_nullable_to_non_nullable
              as String?,
      cvv: cvv == freezed
          ? _value.cvv
          : cvv // ignore: cast_nullable_to_non_nullable
              as String?,
      card_hash: card_hash == freezed
          ? _value.card_hash
          : card_hash // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$ImageDataCopyWith<$Res> implements $ImageDataCopyWith<$Res> {
  factory _$ImageDataCopyWith(
          _ImageData value, $Res Function(_ImageData) then) =
      __$ImageDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? expiration,
      String? name_on_card,
      String? cvv,
      String? card_hash});
}

/// @nodoc
class __$ImageDataCopyWithImpl<$Res> extends _$ImageDataCopyWithImpl<$Res>
    implements _$ImageDataCopyWith<$Res> {
  __$ImageDataCopyWithImpl(_ImageData _value, $Res Function(_ImageData) _then)
      : super(_value, (v) => _then(v as _ImageData));

  @override
  _ImageData get _value => super._value as _ImageData;

  @override
  $Res call({
    Object? expiration = freezed,
    Object? name_on_card = freezed,
    Object? cvv = freezed,
    Object? card_hash = freezed,
  }) {
    return _then(_ImageData(
      expiration == freezed
          ? _value.expiration
          : expiration // ignore: cast_nullable_to_non_nullable
              as String?,
      name_on_card == freezed
          ? _value.name_on_card
          : name_on_card // ignore: cast_nullable_to_non_nullable
              as String?,
      cvv == freezed
          ? _value.cvv
          : cvv // ignore: cast_nullable_to_non_nullable
              as String?,
      card_hash == freezed
          ? _value.card_hash
          : card_hash // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ImageData implements _ImageData {
  const _$_ImageData(
      this.expiration, this.name_on_card, this.cvv, this.card_hash);

  factory _$_ImageData.fromJson(Map<String, dynamic> json) =>
      _$$_ImageDataFromJson(json);

  @override
  final String? expiration;
  @override
  final String? name_on_card;
  @override
  final String? cvv;
  @override
  final String? card_hash;

  @override
  String toString() {
    return 'ImageData(expiration: $expiration, name_on_card: $name_on_card, cvv: $cvv, card_hash: $card_hash)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ImageData &&
            (identical(other.expiration, expiration) ||
                const DeepCollectionEquality()
                    .equals(other.expiration, expiration)) &&
            (identical(other.name_on_card, name_on_card) ||
                const DeepCollectionEquality()
                    .equals(other.name_on_card, name_on_card)) &&
            (identical(other.cvv, cvv) ||
                const DeepCollectionEquality().equals(other.cvv, cvv)) &&
            (identical(other.card_hash, card_hash) ||
                const DeepCollectionEquality()
                    .equals(other.card_hash, card_hash)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(expiration) ^
      const DeepCollectionEquality().hash(name_on_card) ^
      const DeepCollectionEquality().hash(cvv) ^
      const DeepCollectionEquality().hash(card_hash);

  @JsonKey(ignore: true)
  @override
  _$ImageDataCopyWith<_ImageData> get copyWith =>
      __$ImageDataCopyWithImpl<_ImageData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ImageDataToJson(this);
  }
}

abstract class _ImageData implements ImageData {
  const factory _ImageData(String? expiration, String? name_on_card,
      String? cvv, String? card_hash) = _$_ImageData;

  factory _ImageData.fromJson(Map<String, dynamic> json) =
      _$_ImageData.fromJson;

  @override
  String? get expiration => throw _privateConstructorUsedError;
  @override
  String? get name_on_card => throw _privateConstructorUsedError;
  @override
  String? get cvv => throw _privateConstructorUsedError;
  @override
  String? get card_hash => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ImageDataCopyWith<_ImageData> get copyWith =>
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
