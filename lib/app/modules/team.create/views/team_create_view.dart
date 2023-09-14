import 'package:beheer_task_manager/app/modules/team.create/views/add_photo_team_view.dart';
import 'package:beheer_task_manager/core/theme/theme.dart';
import 'package:beheer_task_manager/util/custom.widget/button_back.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/team_create_controller.dart';

class TeamCreateView extends GetView<TeamCreateController> {
  const TeamCreateView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: const ButtonBack(),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 2,
            color: AppColor.neutral900,
            width: Get.size.width * 0.34,
          ),
          const SizedBox(
            height: 8,
          ),
          Expanded(
            child: ListView(
              padding: AppPadding.list,
              children: [
                Text("Create your team", style: AppTextStyle.heading),
                const SizedBox(
                  height: 16,
                ),
                Text("You can always change it later",
                    style: AppTextStyle.subtitle),
                const SizedBox(
                  height: 48,
                ),
                Form(
                  key: controller.form,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        "Team name",
                        style: AppTextStyle.inputFill.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      TextFormField(
                        controller: controller.teamName,
                        style: AppTextStyle.inputType,
                        decoration: InputDecoration(
                          hintText: "Beheer",
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
                const SizedBox(
                  height: 24,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColor.neutral900,
                    padding: AppPadding.largeBtn,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: () {
                    Get.to(
                      () => const AddPhotoTeamView(),
                      transition: Transition.fadeIn,
                    );
                  },
                  child: Text(
                    "Continue",
                    style: AppTextStyle.btnLarge,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
