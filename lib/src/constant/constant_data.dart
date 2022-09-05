import 'package:flutter/material.dart';

import '../../src/language/language_data.dart';

class ConstanceData {
  static const primarycolor = Color(0XFF3D87FF);
  static const secondarycolor = Color(0XFF34C98E);

  static const baseImageUrl = 'assets/';

  static const appShareLink = ' https://africa.xenio.in';

  // navigation icons & labels
  static const String dashboard = "assets/images/dashboard.png";
  static const String bank = "assets/images/bank.png";
  static const String card = "assets/images/card.png";
  static const String crypto = "assets/images/crypto.png";
  static const String scanner = "assets/images/scanner.png";

  static const String dashboardTitle = "Dashboard";
  static const String cardTitle = "Card";
  static const String scannerTitle = "Scanner";
  static const String cryptoTitle = "Crypto";
  static const String bankTitle = "Bank";

  //!Get started page
  static const String getStartedInfo = "All Your Finances Inside";

  static const logo = "assets/png_logo.png";
  static const logo1 = "assets/logo1.jpeg";
  static const creditCard = "assets/credit_card.png";

  static const dashboardCurve = "assets/dashboard_curve.png";
  static const whiteLogo = "assets/logowhite.png";
  static const qrCodePlaceholder = "assets/qr-code.png";

  static const aboutUs =
      "XENIO is a financial solution provider offering neobanking products for financial companies. With XENIO you can start your neobanking services in a matter of hours.";

  static const mastercard = "assets/mastercard.png";
  static const visa = "assets/visa.png";

  static const p1 = "${baseImageUrl}p1.png";

  static const p2 = "${baseImageUrl}p2.png";
  static const p3 = "${baseImageUrl}p3.png";
  static const p4 = "${baseImageUrl}p4.png";
  static const verify = "${baseImageUrl}verify.png";

  static const xenioLogo = "${baseImageUrl}icons/xenio.jpeg";

  static Image? getImageByType(String? type, Size _size) {
    switch (type) {
      case 'mastercard':
        return Image.asset(
          mastercard,
          height: _size.height * 0.045,
          width: _size.width * 0.14,
          fit: BoxFit.fill,
        );

      case 'visa':
        return Image.asset(
          visa,
          height: _size.height * 0.045,
          width: _size.width * 0.14,
          fit: BoxFit.fill,
        );

      default:
        return null;
    }
  }

  //App Name
  static const appName = "Xenio";

}

AllTextData allTextData = AllTextData(allText: []);

var primarycolorString = '#3D87FF';
var secondaryColorString = '#34C98E';

class ColorsModel {
  final List<Color> colors;
  ColorsModel(this.colors);
}
