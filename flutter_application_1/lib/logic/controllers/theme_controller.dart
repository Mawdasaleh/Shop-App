import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class ThemeController {
  final GetStorage themeStorage = GetStorage();
  final key = 'isdarkModes';
  saveThemeData(bool isDar) {
    themeStorage.write(key, isDar);
  }

  bool getThemeData() {
    return themeStorage.read<bool>(key) ?? false;
  }

  ThemeMode get themeDataGet =>
      getThemeData() ? ThemeMode.dark : ThemeMode.light;

  void changeTheme() {
    Get.changeThemeMode(getThemeData() ? ThemeMode.light : ThemeMode.dark);
    saveThemeData(!getThemeData());

    // Get.isDarkMode
    //     ? Get.changeThemeMode(ThemeMode.light)
    //     : Get.changeThemeMode(ThemeMode.dark);
  }
}
