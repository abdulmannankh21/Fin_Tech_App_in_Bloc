import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  factory User(
    String? name,
    String? email,
    @JsonKey(name: 'ewallet_id') String? ewalletId,
    int? ids,
    @JsonKey(name: 'phone_number') String? phoneNumber,
    @JsonKey(name: 'card_id') String? cardId,
    String? type,
    @JsonKey(name: 'entity_type') String? entityType,
    String? merchant_logo,
  ) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
