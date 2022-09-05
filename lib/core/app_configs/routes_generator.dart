import 'package:flutter/material.dart';
import 'package:flutter_app/bottom_navigation/bottom_navigation_home.dart';
import 'package:flutter_app/bottom_navigation/cards/transaction/card_transaction_screen.dart';
import 'package:flutter_app/bottom_navigation/cards/transaction/cubit/card_transaction_cubit.dart';
import 'package:flutter_app/core/app_configs/screen_names.dart';
import 'package:flutter_app/src/pages/error_screen/error_screen.dart';
import 'package:flutter_app/src/splash/splash_screen.dart';
import 'package:flutter_app/src/web_view_builder/web_view_builder.dart';
import 'package:flutter_app/user/create_business/ui/create_business_Screen.dart';
import 'package:flutter_app/user/create_wallet/ui/create_wallet_screen.dart';
import 'package:flutter_app/user/dashboard/cubit/dashboard_cubit.dart';
import 'package:flutter_app/user/login/ui/pages/login.dart';
import 'package:flutter_app/user/login/ui/pages/start_page_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter_app/user/dashboard/repository/dashboard_repository.dart';
import 'package:page_transition/page_transition.dart';
import 'package:flutter_app/bottom_navigation/cards/transaction/repository/card_transaction_repository.dart';

import 'custom_material_route.dart';

Route<dynamic> generate(RouteSettings settings) {
  switch (settings.name) {
    case ScreenNames.webViewWidgetBuilder:
      Map<String, dynamic> args = settings.arguments as Map<String, dynamic>;
      return CustomMaterialRoute(
        child: WebViewWidgetBuilder(
          appbarTitle: args["appbarTitle"],
          initialUrl: args["initialUrl"],
        ),
        settings: settings,
      ).makeRoute();

    case ScreenNames.splash:
      return CustomMaterialRoute(
        child: SplashScreen(),
        settings: settings,
      ).makeRoute();

    case ScreenNames.login:
      return CustomMaterialRoute(
        child: const Login(),
        settings: settings,
      ).makeRoute();

    case ScreenNames.bottomNavigationHome:
      Map<String, dynamic>? arg = settings.arguments as Map<String, dynamic>?;
      return CustomMaterialRoute(
        child: BlocProvider<DashboardCubit>(
          create: (context) => DashboardCubit(
            repository: GetIt.I<DashboardRepository>(),
          ),
          child: BottomNavigationHome(currentIndex: arg?['currentIndex'] ?? 0),
        ),
        settings: settings,
      ).makeRoute();
    // case ScreenNames.cardTransactionScreen:
    //   return CustomMaterialRoute(
    //     child: BlocProvider<CardTransactionCubit>(
    //       create: (context) => CardTransactionCubit(
    //         repository: GetIt.I<CardTransactionRepository>(),
    //       ),
    //       child: const CardTransactionScreen(cardid: null),
    //     ),
    //     settings: settings,
    //   ).makeRoute();
    case ScreenNames.startPageScreen:
      return CustomMaterialRoute(
        child: const StartPageScreen(),
        settings: settings,
      ).makeRoute();

    case ScreenNames.createWalletScreen:
      final Map<String, dynamic> arg =
      settings.arguments as Map<String, dynamic>;
      return CustomMaterialRoute(
        child: CreateWalletScreen(
          registerArgumentModel: arg['registerArgumentModel'],
        ),
        settings: settings,
      ).makeRoute();

    case ScreenNames.createBusinessScreen:
      final Map<String, dynamic> arg =
      settings.arguments as Map<String, dynamic>;
      return CustomMaterialRoute(
        child: CreateBusinessScreen(
          registerArgumentModel: arg['registerArgumentModel'],
        ),
        settings: settings,
      ).makeRoute();

    default:
      return CustomMaterialRoute(
        child: const ErrorScreen(),
        type: PageTransitionType.bottomToTop,
        settings: settings,
      ).makeRoute();
  }
}

PageRoute errorScreen(RouteSettings settings) {
  return CustomMaterialRoute(
    child: const ErrorScreen(),
    settings: settings,
  ).makeRoute();
}
