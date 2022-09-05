import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

extension ExString on String {
  String capitalize() {
    if (length > 0) {
      return "${this[0].toUpperCase()}${substring(1).toLowerCase()}";
    } else {
      return this;
    }
  }

  bool isValidPhoneNumer() {
    if (isEmpty) {
      return false;
    } else {
      String pattern = r'^(\+\d{1,3}[- ]?)?\d{10}$';
      final regex = RegExp(pattern);
      return regex.hasMatch(this);
    }
  }

  ///Minimum [eight characters], at least `one letter`, `one number`
  ///and `one special character`:
  ///
  bool isValidPassword() {
    if (isEmpty) {
      return false;
    } else {
      String pattern =
          r'(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{8,}';
      final regex = RegExp(pattern);
      return regex.hasMatch(this);
    }
  }

  void showSnackBar(BuildContext context, {int milliseconds = 1400}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(this),
        duration: Duration(
          milliseconds: milliseconds,
        ),
      ),
    );
  }

  String get getUniqueIdByName =>
      DateTime.now().millisecondsSinceEpoch.toString();

  String? validateEmail() {
    Pattern pattern =
        r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]"
        r"{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]"
        r"{0,253}[a-zA-Z0-9])?)*$";
    RegExp regex = RegExp(pattern as String);
    if (!regex.hasMatch(this)) return "Please enter a valid email";
    return null;
  }

  bool isValidEmail() {
    Pattern pattern =
        r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]"
        r"{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]"
        r"{0,253}[a-zA-Z0-9])?)*$";
    RegExp regex = RegExp(pattern as String);
    if (!regex.hasMatch(this)) return false;
    return true;
  }

  String formatDate({String defaultFormat = "yyyy-MM-dd"}) {
    try {
      final DateFormat formatter = DateFormat(defaultFormat);
      return formatter.format(DateTime.parse(this).toLocal());
    } on Exception {
      // debugPrint(e.toString());
      return "";
    }
  }

  Widget getImageByName({
    double imageHeight = 25,
    BoxFit boxFit = BoxFit.fitWidth,
    Color? color,
  }) {
    if (this.isNotEmpty)
      return Image.asset(
        this,
        height: imageHeight,
        fit: boxFit,
        color: color,
      );
    else
      return Image.asset(
        "",
        fit: boxFit,
      );
  }
}
