import 'package:beheer_task_manager/core/theme/app_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:unicons/unicons.dart';

import '../controllers/app_bottom_nav_controller.dart';

class AppBottomNavView extends GetView<AppBottomNavController> {
  const AppBottomNavView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      height: 85,
      decoration: BoxDecoration(
        color: AppColor.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
        ),
      ),
      child: Obx(
        () => Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {
                controller.changePage(0);
              },
              child: Container(
                height: 48,
                width: 48,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: controller.isCurrentPage(0)
                      ? AppColor.neutral100
                      : Colors.transparent,
                ),
                child: const Icon(
                  UniconsLine.estate,
                  size: 24,
                ),
              ),
            ),
            InkWell(
              onTap: () {
                controller.changePage(1);
              },
              child: Container(
                height: 48,
                width: 48,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: controller.isCurrentPage(1)
                      ? AppColor.neutral100
                      : Colors.transparent,
                ),
                child: const Icon(
                  UniconsLine.folder,
                  size: 24,
                ),
              ),
            ),
            const InkWell(
              child: SizedBox(
                height: 48,
                width: 48,
              ),
            ),
            InkWell(
              onTap: () {
                controller.changePage(2);
              },
              child: Container(
                height: 48,
                width: 48,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: controller.isCurrentPage(2)
                      ? AppColor.neutral100
                      : Colors.transparent,
                ),
                child: const Icon(
                  UniconsLine.calender,
                  size: 24,
                ),
              ),
            ),
            InkWell(
              onTap: () {
                controller.changePage(3);
              },
              child: SizedBox(
                height: 48,
                width: 48,
                child: Center(
                  child: CircleAvatar(
                    radius: 15,
                    backgroundColor: controller.isCurrentPage(3)
                        ? AppColor.neutral100
                        : Colors.transparent,
                    child: CircleAvatar(
                      radius: 12,
                      backgroundColor: AppColor.blue,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
