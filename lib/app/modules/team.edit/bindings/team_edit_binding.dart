import 'package:get/get.dart';

import '../controllers/team_edit_controller.dart';

class TeamEditBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TeamEditController>(
      () => TeamEditController(),
    );
  }
}
