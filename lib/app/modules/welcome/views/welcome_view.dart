import 'package:beheer_task_manager/core/constants/assets.dart';
import 'package:beheer_task_manager/core/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/welcome_controller.dart';

class WelcomeView extends GetView<WelcomeController> {
  const WelcomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: Get.width,
            width: Get.width,
            color: AppColor.neutral100,
            child: Center(
              child: Image.asset(
                AssetsImg.welcome,
                height: Get.width - 120,
                width: Get.width - 120,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: AppPadding.list,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    "Welcome to Beheer",
                    textAlign: TextAlign.center,
                    style: AppTextStyle.heading.copyWith(
                      fontSize: 36,
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Congratulations ",
                          style: AppTextStyle.subtitle.copyWith(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        TextSpan(
                          text: "Muchammad Dwi Cahyo Nugroho",
                          style: AppTextStyle.subtitle.copyWith(
                            fontWeight: FontWeight.w600,
                            color: AppColor.neutral900,
                          ),
                        ),
                        TextSpan(
                          text:
                              " You have joined Beheer. Let's easily manage tasks and organize projects with your team",
                          style: AppTextStyle.subtitle.copyWith(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 48,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColor.neutral900,
                      padding: AppPadding.largeBtn,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    onPressed: controller.joinTeam,
                    child: Text(
                      "Join Team",
                      style: AppTextStyle.btnLarge,
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColor.white,
                      padding: AppPadding.largeBtn,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                        side: BorderSide(
                          width: 1.5,
                          color: AppColor.neutral900,
                        ),
                      ),
                    ),
                    onPressed: controller.createTeam,
                    child: Text(
                      "Create Team",
                      style: AppTextStyle.btnLarge.copyWith(
                        color: AppColor.neutral900,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
