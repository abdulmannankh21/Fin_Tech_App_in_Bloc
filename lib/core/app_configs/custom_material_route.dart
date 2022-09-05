import 'dart:io';

import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class CustomMaterialRoute {
  final Widget child;
  final PageTransitionType type;
  final RouteSettings settings;

  CustomMaterialRoute({
    required this.child,
    required this.settings,
    this.type = PageTransitionType.rightToLeft,
  });
  PageRoute makeRoute() {
    return Platform.isIOS
        ? MaterialPageRoute(
            settings: settings,
            builder: (context) => child,
          )
        : PageTransition(
            settings: settings,
            type: type,
            child: child,
          );
  }
}
