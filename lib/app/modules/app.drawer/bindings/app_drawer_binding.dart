import 'package:get/get.dart';

import '../controllers/app_drawer_controller.dart';

class AppDrawerBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(AppDrawerController(), permanent: true);
  }
}
