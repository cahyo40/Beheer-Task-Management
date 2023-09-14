import 'package:beheer_task_manager/core/theme/app_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:unicons/unicons.dart';

class ButtonBack extends StatelessWidget {
  const ButtonBack({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.back();
      },
      child: Icon(
        UniconsLine.angle_left_b,
        color: AppColor.neutral900,
        size: 24,
      ),
    );
  }
}
