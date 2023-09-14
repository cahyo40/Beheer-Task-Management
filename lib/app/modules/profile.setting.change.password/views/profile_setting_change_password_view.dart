import 'package:beheer_task_manager/core/theme/theme.dart';
import 'package:beheer_task_manager/util/custom.widget/button_back.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:unicons/unicons.dart';

import '../controllers/profile_setting_change_password_controller.dart';

class ProfileSettingChangePasswordView
    extends GetView<ProfileSettingChangePasswordController> {
  const ProfileSettingChangePasswordView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Change Password',
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
              child: Form(
                child: ListView(
                  padding: AppPadding.list,
                  children: [
                    Text(
                      "Old Password",
                      style: AppTextStyle.inputFill.copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Obx(
                      () => TextFormField(
                        autovalidateMode: AutovalidateMode.always,
                        controller: controller.password,
                        style: AppTextStyle.inputType,
                        obscureText: controller.obsecureText.value,
                        onChanged: (v) {
                          controller.passVal.value = v;
                        },
                        validator: (v) {
                          return null;
                        },
                        decoration: InputDecoration(
                          hintText: "Enter your password",
                          hintStyle: AppTextStyle.inputBasic,
                          border: AppInputBorder.basic,
                          enabledBorder: AppInputBorder.basic,
                          focusedBorder: AppInputBorder.type,
                          errorBorder: AppInputBorder.error,
                          suffixIcon: InkWell(
                            onTap: controller.changeObsecureText,
                            child: Padding(
                              padding: const EdgeInsets.all(14.0),
                              child: Icon(
                                controller.obsecureText.value
                                    ? UniconsLine.eye
                                    : UniconsLine.eye_slash,
                                size: 24,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Text(
                      "New Password",
                      style: AppTextStyle.inputFill.copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Obx(
                      () => TextFormField(
                        autovalidateMode: AutovalidateMode.always,
                        controller: controller.password,
                        style: AppTextStyle.inputType,
                        obscureText: controller.obsecureText.value,
                        onChanged: (v) {
                          controller.passVal.value = v;
                        },
                        validator: (v) {
                          return null;
                        },
                        decoration: InputDecoration(
                          hintText: "Enter your password",
                          hintStyle: AppTextStyle.inputBasic,
                          border: AppInputBorder.basic,
                          enabledBorder: AppInputBorder.basic,
                          focusedBorder: AppInputBorder.type,
                          errorBorder: AppInputBorder.error,
                          suffixIcon: InkWell(
                            onTap: controller.changeObsecureText,
                            child: Padding(
                              padding: const EdgeInsets.all(14.0),
                              child: Icon(
                                controller.obsecureText.value
                                    ? UniconsLine.eye
                                    : UniconsLine.eye_slash,
                                size: 24,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Text(
                      "Confirm New Password",
                      style: AppTextStyle.inputFill.copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Obx(
                      () => TextFormField(
                        autovalidateMode: AutovalidateMode.always,
                        controller: controller.password,
                        style: AppTextStyle.inputType,
                        obscureText: controller.obsecureText.value,
                        onChanged: (v) {
                          controller.passVal.value = v;
                        },
                        validator: (v) {
                          return null;
                        },
                        decoration: InputDecoration(
                          hintText: "Enter your password",
                          hintStyle: AppTextStyle.inputBasic,
                          border: AppInputBorder.basic,
                          enabledBorder: AppInputBorder.basic,
                          focusedBorder: AppInputBorder.type,
                          errorBorder: AppInputBorder.error,
                          suffixIcon: InkWell(
                            onTap: controller.changeObsecureText,
                            child: Padding(
                              padding: const EdgeInsets.all(14.0),
                              child: Icon(
                                controller.obsecureText.value
                                    ? UniconsLine.eye
                                    : UniconsLine.eye_slash,
                                size: 24,
                              ),
                            ),
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
            Padding(
              padding: const EdgeInsets.all(24.0),
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
                  "Change Password",
                  style: AppTextStyle.btnLarge.copyWith(
                    color: AppColor.neutral000,
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
