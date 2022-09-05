import 'package:flutter/material.dart';
import 'package:get/get.dart';
class DropDownItems{
  static List<DropdownMenuItem<String>> get dropdownItems{
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(child: Text("Select language"),value: "Select language"),
      DropdownMenuItem(child: Text("English"),value: "English"),
      DropdownMenuItem(child: Text("Spanish"),value: "Spanish"),
      DropdownMenuItem(child: Text("Italian"),value: "Italian"),
    ];
    return menuItems;
  }

  static Map<String,Locale> locale={"English":Locale('en','US'),
    "Spanish":Locale('es',''),
    "Italian":Locale('it','')
  };

  static updateLanguage(Locale locale){
    Get.back();
    Get.updateLocale(locale);
  }
}