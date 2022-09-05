import 'package:flutter/material.dart';

class MyCustomQuadraticBezier extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double height = size.height;
    double width = size.width;

    var path = Path();
    path.lineTo(0, height * 0.9);
    path.quadraticBezierTo(width / 2, height / 2, width, height * 0.9);
    path.lineTo(width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
