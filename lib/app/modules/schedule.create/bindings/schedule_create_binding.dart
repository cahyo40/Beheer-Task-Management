import 'package:get/get.dart';

import '../controllers/schedule_create_controller.dart';

class ScheduleCreateBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ScheduleCreateController>(
      () => ScheduleCreateController(),
    );
  }
}
