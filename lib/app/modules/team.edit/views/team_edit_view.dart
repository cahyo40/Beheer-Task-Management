import 'package:beheer_task_manager/util/custom.widget/button_back.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:unicons/unicons.dart';

import '../../../../core/theme/theme.dart';
import '../controllers/team_edit_controller.dart';

class TeamEditView extends GetView<TeamEditController> {
  const TeamEditView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Edit Team',
          style: AppTextStyle.appBar,
        ),
        centerTitle: true,
        leading: const ButtonBack(),
        actions: const [],
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: ListView(
                padding: AppPadding.list,
                children: [
                  CircleAvatar(
                    radius: 148 / 2,
                    backgroundColor: AppColor.green,
                  ),
                  const SizedBox(
                    height: 24,
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
                        Text(
                          "Link Join",
                          style: AppTextStyle.inputFill.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        TextFormField(
                          controller: controller.teamName,
                          style: AppTextStyle.inputType,
                          decoration: InputDecoration(
                            hintText: "@beheer",
                            hintStyle: AppTextStyle.inputBasic,
                            border: AppInputBorder.basic,
                            enabledBorder: AppInputBorder.basic,
                            focusedBorder: AppInputBorder.type,
                            errorBorder: AppInputBorder.error,
                            suffixIcon: Icon(
                              UniconsLine.copy,
                              color: AppColor.neutral500,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 0, 24, 32),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColor.neutral900,
                  padding: AppPadding.largeBtn,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  "Save Change",
                  style: AppTextStyle.btnLarge,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
