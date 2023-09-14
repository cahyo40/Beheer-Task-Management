import 'package:get/get.dart';

import '../controllers/project_create_controller.dart';

class ProjectCreateBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProjectCreateController>(
      () => ProjectCreateController(),
    );
  }
}
