import 'package:flutter_app/user/login/data/login_model/api/api.dart';
import 'package:flutter_app/user/login/data/login_model/user/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  factory UserModel(
    String? result,
    String? message,
    String? token,
    @JsonKey(name: 'user') User? user,
    String? isagent,
  ) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
