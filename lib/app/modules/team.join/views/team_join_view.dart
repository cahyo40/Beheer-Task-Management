import 'package:beheer_task_manager/app/modules/team.join/views/join_by_link_view.dart';
import 'package:beheer_task_manager/core/theme/theme.dart';
import 'package:beheer_task_manager/util/custom.widget/button_back.dart';
import 'package:beheer_task_manager/util/custom.widget/dialog.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:unicons/unicons.dart';

import '../controllers/team_join_controller.dart';

class TeamJoinView extends GetView<TeamJoinController> {
  const TeamJoinView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: const ButtonBack(),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: AppPadding.list,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text("Join Team", style: AppTextStyle.heading),
              const SizedBox(
                height: 16,
              ),
              Text("Enter Link your team for join",
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
                      "Search Team",
                      style: AppTextStyle.inputFill.copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    TextFormField(
                      controller: controller.search,
                      style: AppTextStyle.inputType,
                      decoration: InputDecoration(
                        hintText: "Search team",
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
              Text(
                "Or",
                style: AppTextStyle.subtitle,
              ),
              const SizedBox(
                height: 24,
              ),
              InkWell(
                onTap: () {
                  Get.bottomSheet(
                    ignoreSafeArea: false,
                    isScrollControlled: true,
                    const AppDialog(
                      title: "Join by link",
                      child: JoinByLinkView(),
                    ),
                  );
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: AppColor.neutral200,
                      ),
                      child: const Icon(
                        UniconsLine.link,
                      ),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Text(
                      "Join by link",
                      style: AppTextStyle.subtitle.copyWith(
                        color: AppColor.neutral900,
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
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
                onPressed: () {},
                child: Text(
                  "Join Team",
                  style: AppTextStyle.btnLarge,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
