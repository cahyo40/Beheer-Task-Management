import 'package:get/get.dart';

import '../controllers/profile_premium_plan_controller.dart';

class ProfilePremiumPlanBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProfilePremiumPlanController>(
      () => ProfilePremiumPlanController(),
    );
  }
}
