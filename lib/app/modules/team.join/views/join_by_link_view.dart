import 'package:beheer_task_manager/app/modules/team.join/controllers/team_join_controller.dart';
import 'package:beheer_task_manager/core/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class JoinByLinkView extends GetView<TeamJoinController> {
  const JoinByLinkView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Form(
          key: controller.link,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "Link Team",
                style: AppTextStyle.inputFill.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
              TextFormField(
                controller: controller.linkC,
                style: AppTextStyle.inputType,
                decoration: InputDecoration(
                  hintText: "Link team",
                  hintStyle: AppTextStyle.inputBasic,
                  border: AppInputBorder.basic,
                  enabledBorder: AppInputBorder.basic,
                  focusedBorder: AppInputBorder.type,
                  errorBorder: AppInputBorder.error,
                ),
              ),
              const SizedBox(
                height: 24,
              ),
            ],
          ),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColor.neutral900,
            padding: AppPadding.largeBtn,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          onPressed: () {},
          child: Text(
            "Join Team",
            style: AppTextStyle.btnLarge,
          ),
        ),
      ],
    );
  }
}
