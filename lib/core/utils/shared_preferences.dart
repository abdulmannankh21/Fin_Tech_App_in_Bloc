import 'package:shared_preferences/shared_preferences.dart';

class MySharedPreferences {
  setBooleanValue({required String key, required bool value}) async {
    SharedPreferences myPrefs = await SharedPreferences.getInstance();
    myPrefs.setBool(key, value);
  }

  Future<bool> getBooleanValue(String key) async {
    SharedPreferences myPrefs = await SharedPreferences.getInstance();
    return myPrefs.getBool(key) ?? false;
  }

  Future<String> getStringValue(String key) async {
    SharedPreferences myPrefs = await SharedPreferences.getInstance();
    return myPrefs.getString(key) ?? '';
  }

  setStringeanValue({required String key, required String value}) async {
    SharedPreferences myPrefs = await SharedPreferences.getInstance();
    myPrefs.setString(key, value);
  }

  static setLanguageValue(String language) async{
    SharedPreferences myPrefs = await SharedPreferences.getInstance();
    myPrefs.setString("language", language);
  }
}
