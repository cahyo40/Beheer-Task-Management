import 'package:get/get.dart';

import '../controllers/project_summary_controller.dart';

class ProjectSummaryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProjectSummaryController>(
      () => ProjectSummaryController(),
    );
  }
}
