import 'package:beheer_task_manager/app/routes/app_pages.dart';
import 'package:beheer_task_manager/core/constants/assets.dart';
import 'package:get/get.dart';

class OnboardController extends GetxController {
  RxInt screen = 0.obs;
  List<Map<String, dynamic>> content = [
    {
      "title": "Organize Your Task &\nProject Easily",
      "subtitle":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nibh massa ullamcorper mi,",
      "image": AssetsImg.onborad1,
    },
    {
      "title": "Always Connect with Team\nAnytime Anywhere",
      "subtitle":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nibh massa ullamcorper mi,",
      "image": AssetsImg.onborad2,
    },
    {
      "title": "Will Not Miss The Schedule\nEvery Time",
      "subtitle":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nibh massa ullamcorper mi,",
      "image": AssetsImg.onborad3,
    },
  ];

  void nextScreen() {
    if (screen.value < content.length - 1) {
      screen.value += 1;
    } else {
      Get.offNamed(Routes.AUTH_LOGIN);
    }
  }

  void getStarted() {
    if (screen.value < content.length - 1) {
      screen.value = content.length - 1;
    } else {
      Get.offNamed(Routes.AUTH_REGISTER);
    }
  }

  bool isLast() => screen.value == content.length - 1;

  bool isScreen(int index) => screen.value == index;
}
