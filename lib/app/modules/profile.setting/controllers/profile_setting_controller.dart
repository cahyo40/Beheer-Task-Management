import 'package:beheer_task_manager/app/routes/app_pages.dart';
import 'package:beheer_task_manager/core/theme/app_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:unicons/unicons.dart';

class ProfileSettingController extends GetxController {
  RxBool isLight = true.obs;

  changeTheme() {
    if (isLight.isTrue) {
      // Get.changeTheme(ThemeData.dark());
      isLight.value = false;
    } else {
      // Get.changeTheme(ThemeData.light());
      isLight.value = true;
    }
  }

  List<Map<String, dynamic>> listMenuSetting = [
    {
      "title": "Change Password",
      "icon": UniconsLine.lock_alt,
      "trailing": InkWell(
        onTap: () => Get.toNamed(Routes.PROFILE_SETTING_CHANGE_PASSWORD),
        child: Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: AppColor.neutral200,
          ),
          child: Icon(
            UniconsLine.angle_right,
            color: AppColor.neutral900,
          ),
        ),
      ),
    },
    {
      "title": "Notification",
      "icon": UniconsLine.bell,
      "trailing": Switch(value: false, onChanged: (v) {}),
    },
    {
      "title": "Location",
      "icon": UniconsLine.location_pin_alt,
      "trailing": Switch(value: true, onChanged: (v) {}),
    },
    {
      "title": "Privacy Policy",
      "icon": UniconsLine.lock_alt,
      "trailing": Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: AppColor.neutral200,
        ),
        child: Icon(
          UniconsLine.angle_right,
          color: AppColor.neutral900,
        ),
      ),
    },
    {
      "title": "Terms of Service",
      "icon": UniconsLine.lock_alt,
      "trailing": Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: AppColor.neutral200,
        ),
        child: Icon(
          UniconsLine.angle_right,
          color: AppColor.neutral900,
        ),
      ),
    },
    {
      "title": "App Version",
      "icon": UniconsLine.lock_alt,
      "trailing": Text(
        "2.1",
        style: TextStyle(
          color: AppColor.neutral900,
          fontWeight: FontWeight.w600,
          fontSize: 16,
        ),
      ),
    },
  ];
}
