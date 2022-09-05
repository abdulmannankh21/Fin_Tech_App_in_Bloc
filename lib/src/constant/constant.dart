import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

int colorsIndex = 0;
String locale = "en";

class Constant {
  static const firstTimeOpen = "first_time_open";

  static const helpCenterEmail = "support@xenio.in";

  static const defaultImageAvatr =
      "https://www.kindpng.com/picc/m/78-786207_user-avatar-png-user-avatar-icon-png-transparent.png";

  static const email = "email";
  static const logintoken = "logintoken";
  static const password = "password";
  static const cardid = "cardid";
  static const phone = "number";
  static const tokenExpired = "Login Screen";
  static const invalidToken = "Invalid Usertoken";
  static const selectedUserType = "selected_user_type";
  static const loginUserType = "type";
  static const parentId = "parent";
  static const profileImage = "image";
  static const ewalletId = "ewallet";
  static const name = "name";
  static const lastname = "lastname";
  ///Register user type
  static const userType = [
    'Person',
    'Company',
  ];

  static IconData getIconByName(String title) {
    switch (title) {
      case 'paid':
        return Icons.paid;

      case 'recharged':
        return FontAwesomeIcons.phoneSquare;

      case 'debited':
        return FontAwesomeIcons.moneyBill;

      case 'food':
        return Icons.food_bank;

      default:
        return Icons.account_balance;
    }
  }
}
