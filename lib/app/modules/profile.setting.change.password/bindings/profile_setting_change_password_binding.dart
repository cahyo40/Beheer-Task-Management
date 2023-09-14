import 'package:get/get.dart';

import '../controllers/profile_setting_change_password_controller.dart';

class ProfileSettingChangePasswordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProfileSettingChangePasswordController>(
      () => ProfileSettingChangePasswordController(),
    );
  }
}
