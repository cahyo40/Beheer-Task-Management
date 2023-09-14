import 'package:get/get.dart';

import '../controllers/team_join_controller.dart';

class TeamJoinBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TeamJoinController>(
      () => TeamJoinController(),
    );
  }
}
