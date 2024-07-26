import 'package:get/get.dart';

import '../main_controller.dart';
import '../payment_controller.dart';
import '../setting_controller.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(MainController());
    Get.put(SettingController());
    Get.put(PayMentController(), permanent: true);
  }
}
