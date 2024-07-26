import 'package:flutter_application_1/view/screens/category_screen.dart';
import 'package:flutter_application_1/view/screens/favorites_screen.dart';
import 'package:flutter_application_1/view/screens/settings_screen.dart';
import 'package:get/get.dart';

import '../../view/screens/home_screen.dart';

class MainController extends GetxController {
  RxInt currentIndex = 0.obs;
  final tabs = [
    const HomeScreen(),
    const CategoryScreen(),
    FavoritesScreen(),
    const SettingsScreen(),
  ].obs;

  final title = [
    "HomeScreen",
    "Categories",
    "Favorites",
    "Settings",
  ].obs;
}
