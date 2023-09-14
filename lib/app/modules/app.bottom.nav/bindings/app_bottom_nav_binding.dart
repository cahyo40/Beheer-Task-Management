import 'package:get/get.dart';

import '../controllers/app_bottom_nav_controller.dart';

class AppBottomNavBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(AppBottomNavController(), permanent: true);
  }
}
