import 'package:beheer_task_manager/app/routes/app_pages.dart';
import 'package:get/get.dart';

class AppBottomNavController extends GetxController {
  RxInt currentPage = 0.obs;

  void changePage(int index) {
    currentPage.value = index;
    if (index == 0) {
      Get.offAllNamed(Routes.HOME);
    } else if (index == 1) {
      Get.offAllNamed(Routes.PROJECT_SUMMARY);
    } else if (index == 2) {
      Get.offAllNamed(Routes.CALENDAR);
    } else if (index == 3) {
      Get.offAllNamed(Routes.PROFILE);
    } else {
      Get.offAllNamed(Routes.HOME);
    }
  }

  bool isCurrentPage(int index) => currentPage.value == index;
}
