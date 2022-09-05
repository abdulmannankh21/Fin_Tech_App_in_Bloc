


import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_on_user_model.freezed.dart';
part 'add_on_user_model.g.dart';

@freezed
abstract class AddOnUserModel with _$AddOnUserModel {
  const factory AddOnUserModel(
      Status? status,
      List<User> users,

      ) = _AddOnUserModel;

  factory AddOnUserModel.fromJson(Map<String, dynamic> json) =>
      _$AddOnUserModelFromJson(json);
}
@freezed
abstract class User with _$User{
  const factory User(
      String? id,
      String? user_id,
      String? ewallet_id,
      String? email,
      String? first_name,
      String? last_name,
      String? accountid,
      String? cardid,
      String? image,
      ) = _User;

  factory User.fromJson(Map<String, dynamic> json) =>
      _$UserFromJson(json);
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



