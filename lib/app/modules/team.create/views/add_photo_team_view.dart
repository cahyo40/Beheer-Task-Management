import 'package:beheer_task_manager/app/modules/team.create/controllers/team_create_controller.dart';
import 'package:beheer_task_manager/app/modules/team.create/views/invite_member_view.dart';
import 'package:beheer_task_manager/core/constants/assets.dart';
import 'package:beheer_task_manager/core/theme/theme.dart';
import 'package:beheer_task_manager/util/custom.widget/button_back.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:unicons/unicons.dart';

class AddPhotoTeamView extends GetView<TeamCreateController> {
  const AddPhotoTeamView({Key? key}) : super(key: key);
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
            width: Get.size.width * 0.67,
          ),
          const SizedBox(
            height: 8,
          ),
          Expanded(
            child: Padding(
              padding: AppPadding.list,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text("Add photo your team", style: AppTextStyle.heading),
                  const SizedBox(
                    height: 16,
                  ),
                  Text("You can always change it later",
                      style: AppTextStyle.subtitle),
                  const SizedBox(
                    height: 32,
                  ),
                  Center(
                    child: InkWell(
                      onTap: () {},
                      child: Image.asset(
                        AssetsImg.addPhoto,
                        height: 120,
                        width: 120,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  Text(
                    "Upload your team photo to show the branding of your company.",
                    style: AppTextStyle.subtitle,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: AppColor.blue.withOpacity(.12),
                      border: Border.all(
                        color: AppColor.blue,
                        width: 1,
                      ),
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            const Icon(UniconsLine.info_circle),
                            const SizedBox(
                              width: 16,
                            ),
                            Text(
                              "Tips for uploading photos",
                              style: AppTextStyle.inputBasic.copyWith(
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                                color: AppColor.neutral900,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 28.0),
                          child: Text(
                            "Photos must be at least 900px x 900px. Use PNG, JPG, JPEG format",
                            style: AppTextStyle.inputBasic.copyWith(
                              fontWeight: FontWeight.normal,
                              fontSize: 14,
                              color: AppColor.neutral900,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  const Expanded(child: SizedBox()),
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
                        () => const InviteMemberView(),
                        transition: Transition.fadeIn,
                      );
                    },
                    child: Text(
                      "Continue",
                      style: AppTextStyle.btnLarge,
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Center(
                    child: InkWell(
                      onTap: () {},
                      child: Text(
                        "Skip for now",
                        style: AppTextStyle.inputBasic.copyWith(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: AppColor.neutral900,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 24,
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
