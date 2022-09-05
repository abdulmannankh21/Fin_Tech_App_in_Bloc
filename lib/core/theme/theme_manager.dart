import 'package:flutter/material.dart';
import 'package:flutter_app/core/theme/storage_manager.dart';

class ThemeNotifier with ChangeNotifier {
  final darkTheme = ThemeData(
    primarySwatch: Colors.grey,
    colorScheme: const ColorScheme.dark().copyWith(
      background: const Color(0xff222831),
      onPrimary: const Color(0xff222831),
      secondary: const Color(0xff393E46),
      brightness: Brightness.dark,
      onSurface: const Color(0xffF5F5F5),
      onSecondary: const Color(0xffEEEEEE),
    ),
    focusColor: Colors.white,
    primaryColor: Colors.indigo,
    brightness: Brightness.dark,

    ///[This color for transaction container background]
    disabledColor: Colors.black26,
    backgroundColor: const Color(0xFF212121),
    dividerColor: Colors.black12,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedItemColor: Color(0xffD3E4CD),
      unselectedItemColor: Colors.grey,
    ),
  );

  final lightTheme = ThemeData(
    ///[This color for transaction container background]
    disabledColor: const Color(0XFFEBF5F5),
    focusColor: Colors.indigo,
    primarySwatch: Colors.grey,
    brightness: Brightness.light,
    backgroundColor: const Color(0xFFE5E5E5),
    dividerColor: Colors.white38,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white38,
    ),
  );

  ThemeData? _themeData;
  ThemeData? getTheme() => _themeData;

  ThemeNotifier() {
    readData('themeMode').then((value) {
      print('value read from storage: $value');
      var themeMode = value ?? 'light';
      if (themeMode == 'light') {
        _themeData = lightTheme;
      } else {
        print('setting dark theme');
        _themeData = darkTheme;
      }
      notifyListeners();
    });
  }

  void setDarkMode() async {
    _themeData = darkTheme;
    saveData('themeMode', 'dark');
    notifyListeners();
  }

  void setLightMode() async {
    _themeData = lightTheme;
    saveData('themeMode', 'light');
    notifyListeners();
  }
}
