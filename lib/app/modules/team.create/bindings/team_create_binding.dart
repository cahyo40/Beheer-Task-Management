import 'package:get/get.dart';

import '../controllers/team_create_controller.dart';

class TeamCreateBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TeamCreateController>(
      () => TeamCreateController(),
    );
  }
}
