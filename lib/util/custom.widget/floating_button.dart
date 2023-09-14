import 'package:beheer_task_manager/app/routes/app_pages.dart';
import 'package:beheer_task_manager/core/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:get/get.dart';
import 'package:unicons/unicons.dart';

class AppFloatingButton {
  static SpeedDial floatingButton() {
    return SpeedDial(
      backgroundColor: AppColor.neutral900,
      activeBackgroundColor: AppColor.neutral900,
      icon: UniconsLine.plus,
      activeIcon: UniconsLine.times,
      children: [
        SpeedDialChild(
          child: const Icon(UniconsLine.file_plus),
          label: "New Task",
          onTap: () => Get.toNamed(Routes.TASK_CREATE),
        ),
        SpeedDialChild(
          child: const Icon(UniconsLine.folder_plus),
          label: "New Project",
          onTap: () => Get.toNamed(Routes.PROJECT_CREATE),
        ),
      ],
    );
  }
}
