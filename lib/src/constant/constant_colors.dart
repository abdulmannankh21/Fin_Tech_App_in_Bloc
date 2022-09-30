import 'package:flutter/material.dart';

class ConstantColors {
  static const primaryCyan = Color(0XFF37C8C3);
  // static const primaryCyan = Color(0XFF2743FD);
  static const primaryLightCyan = Color(0XFF15C2D1);
  static const secondaryCyanDark = Color(0XFF21A7B3);

  static const welcome_sign_up_text_color = Color(0XFF2743FD);
  static const welcome_sign_up_border_color = Color(0XFF4960F9);
  static const welcome_sign_in_first_circle = Color(0XFF31DEC2);
  static const welcome_sign_in_second_circle = Color(0XFFFC4B00);
  static const appBar = Color(0XFF009FE3);
  static const success = Color(0XFF20C968);
  static const success_left_corner_circle = Color(0XFFFC3100);
  static const success_right_corner_circle = Color(0XFF43BEF4);

  static const otp_first_circle = Color(0XFFFC4900);

  // static const primaryBackgournd = Color(0XFFEBF5F5);
  // static const scaffoldBackgournd = Color(0XFFD4E2E2);

  static const thirdDarkCyan = Color(0XFF3AD3CE);

  static const primaryGradientBackground = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    stops: [0.6, 0.7, 0.8],
    colors: [
      ConstantColors.primaryLightCyan,
      ConstantColors.primaryCyan,
      ConstantColors.secondaryCyanDark,
    ],
  );
}
