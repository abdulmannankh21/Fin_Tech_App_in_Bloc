import 'package:freezed_annotation/freezed_annotation.dart';

part 'card_details_model.freezed.dart';
part 'card_details_model.g.dart';

@freezed
abstract class CardDetailsModel with _$CardDetailsModel {
  const factory CardDetailsModel(

      int? code,
      String? status,
      UserCardDetails? data,
      ) = _CardDetailsModel;

  factory CardDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$CardDetailsModelFromJson(json);
}


@freezed
abstract class UserCardDetails with _$UserCardDetails{
  const factory UserCardDetails(
      String? card_pan,
      String? expiration,
      String? cvv,
      String? card_design,
      String? is_active,
      String? currency,
      String? name_on_cad,
      QrImage? qrimage,
      ) = _UserCardDetails;

  factory UserCardDetails.fromJson(Map<String, dynamic> json) =>
      _$UserCardDetailsFromJson(json);
}

@freezed
abstract class QrImage with _$QrImage{
  const factory QrImage(
      String? url,
      ImageData? data,
      ) = _QrImage;

  factory QrImage.fromJson(Map<String, dynamic> json) =>
      _$QrImageFromJson(json);
}

@freezed
abstract class ImageData with _$ImageData{
  const factory ImageData(
      String? expiration,
      String? name_on_card,
      String? cvv,
      String? card_hash,
      ) = _ImageData;

  factory ImageData.fromJson(Map<String, dynamic> json) =>
      _$ImageDataFromJson(json);
}




@freezed
abstract class Status with _$Status{
  const factory Status(
      String? result,
      String? message,
      ) = _Status;

  factory Status.fromJson(Map<String, dynamic> json) =>
      _$StatusFromJson(json);
}



