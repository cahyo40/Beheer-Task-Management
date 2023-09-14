import 'package:beheer_task_manager/core/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:unicons/unicons.dart';

import '../controllers/app_drawer_controller.dart';

class AppDrawerView extends GetView<AppDrawerController> {
  const AppDrawerView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(24),
            bottomRight: Radius.circular(24),
          ),
        ),
        child: Padding(
          padding: AppPadding.list,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: Get.size.height * 0.05,
              ),
              Text(
                "Team Workspace",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: AppColor.neutral900,
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              Expanded(
                child: ListView(
                  children: List.generate(
                    2,
                    (index) => ListTile(
                      title: Text(
                        "Add New Team",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          color: AppColor.neutral900,
                        ),
                      ),
                      subtitle: Text(
                        "12$index member",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                          color: AppColor.neutral500,
                        ),
                      ),
                      leading: CircleAvatar(
                        radius: 20,
                        backgroundColor: AppColor.pink,
                      ),
                    ),
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  "Add New Team",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: AppColor.neutral900,
                  ),
                ),
                leading: Icon(
                  UniconsLine.plus_circle,
                  color: AppColor.neutral900,
                ),
                dense: true,
              ),
              ListTile(
                title: Text(
                  "Help",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: AppColor.neutral900,
                  ),
                ),
                leading: Icon(
                  UniconsLine.question_circle,
                  color: AppColor.neutral900,
                ),
                dense: true,
              ),
              SizedBox(
                height: Get.size.height * 0.05,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
