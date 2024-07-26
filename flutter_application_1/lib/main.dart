import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/logic/controllers/theme_controller.dart';
import 'package:flutter_application_1/routes/routes.dart';
import 'package:flutter_application_1/utils/thems.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'logic/controllers/bindings/auth_binding.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: AuthBinding(),
      title: 'shop',
      debugShowCheckedModeBanner: false,
      theme: ThemesApp.light,
      darkTheme: ThemesApp.dark,
      themeMode: ThemeController().themeDataGet,
      initialRoute: FirebaseAuth.instance.currentUser != null ||
              GetStorage().read<bool>('auth') == true
          ? AppRoutes.mainScr
          : AppRoutes.welcome,
      // AppRoutes.welcome,
      // FirebaseAuth.instance.currentUser != null ||
      //         GetStorage().read<bool>('auth info') == true
      //     ? AppRoutes.mainScr
      //     : AppRoutes.welcome,
      getPages: AppRoutes.routes,
    );
  }
}
