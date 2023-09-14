import 'package:beheer_task_manager/app/routes/app_pages.dart';
import 'package:get/get.dart';

class WelcomeController extends GetxController {
  joinTeam() {
    Get.toNamed(Routes.TEAM_JOIN);
  }

  createTeam() {
    Get.toNamed(Routes.TEAM_CREATE);
  }
}
