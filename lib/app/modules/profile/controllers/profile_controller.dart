import 'package:beheer_task_manager/app/routes/app_pages.dart';
import 'package:get/get.dart';
import 'package:unicons/unicons.dart';

class ProfileController extends GetxController {
  List<Map<String, dynamic>> profileMenu = [
    {
      "title": "Premium Plan",
      "icon": UniconsLine.award,
      "onTap": () {
        Get.toNamed(Routes.PROFILE_PREMIUM_PLAN);
      }
    },
    {
      "title": "Setting",
      "icon": UniconsLine.setting,
      "onTap": () {
        Get.toNamed(Routes.PROFILE_SETTING);
      }
    },
    {
      "title": "Help Center",
      "icon": UniconsLine.info_circle,
      "onTap": () {
        Get.toNamed(Routes.PROFILE_PREMIUM_PLAN);
      }
    },
    {
      "title": "Rate this App",
      "icon": UniconsLine.star,
      "onTap": () {
        Get.toNamed(Routes.PROFILE_PREMIUM_PLAN);
      }
    },
  ];
}
