import 'package:beheer_task_manager/core/constants/assets.dart';
import 'package:beheer_task_manager/core/theme/theme.dart';
import 'package:beheer_task_manager/util/custom.widget/button_back.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/profile_edit_controller.dart';

class ProfileEditView extends GetView<ProfileEditController> {
  const ProfileEditView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Edit Profile',
          style: AppTextStyle.appBar,
        ),
        centerTitle: true,
        leading: const ButtonBack(),
        actions: const [],
      ),
      body: SafeArea(
        child: ListView(
          padding: AppPadding.list,
          children: [
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
            Form(
              key: controller.form,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    "Username",
                    style: AppTextStyle.inputFill.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  TextFormField(
                    controller: controller.username,
                    style: AppTextStyle.inputType,
                    decoration: InputDecoration(
                      hintText: "Beheer Task Management",
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
                    "Email",
                    style: AppTextStyle.inputFill.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  TextFormField(
                    controller: controller.email,
                    style: AppTextStyle.inputType,
                    keyboardType: TextInputType.emailAddress,
                    validator: (v) {
                      if (!GetUtils.isEmail(v!)) {
                        return "Wrong format";
                      }

                      return null;
                    },
                    decoration: InputDecoration(
                      hintText: "mail@mail.com",
                      hintStyle: AppTextStyle.inputBasic,
                      border: AppInputBorder.basic,
                      enabledBorder: AppInputBorder.basic,
                      focusedBorder: AppInputBorder.type,
                      errorBorder: AppInputBorder.error,
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
                    onPressed: () {},
                    child: Text(
                      "Save Change",
                      style: AppTextStyle.btnLarge.copyWith(
                        color: AppColor.neutral000,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
