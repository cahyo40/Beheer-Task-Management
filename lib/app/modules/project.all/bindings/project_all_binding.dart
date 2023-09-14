import 'package:get/get.dart';

import '../controllers/project_all_controller.dart';

class ProjectAllBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProjectAllController>(
      () => ProjectAllController(),
    );
  }
}
