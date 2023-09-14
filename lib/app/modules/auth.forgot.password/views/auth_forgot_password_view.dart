import 'package:beheer_task_manager/core/theme/theme.dart';
import 'package:beheer_task_manager/util/custom.widget/button_back.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:unicons/unicons.dart';

import '../controllers/auth_forgot_password_controller.dart';

class AuthForgotPasswordView extends GetView<AuthForgotPasswordController> {
  const AuthForgotPasswordView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: const ButtonBack(),
      ),
      body: SafeArea(
        child: ListView(
          padding: AppPadding.list,
          children: [
            Text("Forgot Password", style: AppTextStyle.heading),
            const SizedBox(
              height: 16,
            ),
            Text("Enter your email account to reset your password",
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
                    height: 24,
                  ),
                  const SizedBox(
                    height: 32,
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
              onPressed: controller.forgotPassword,
              child: Text(
                "Send OTP",
                style: AppTextStyle.btnLarge.copyWith(
                  color: AppColor.neutral000,
                ),
              ),
            ),
            const SizedBox(
              height: 48,
            ),
            Obx(
              () => AnimatedCrossFade(
                firstCurve: Curves.easeIn,
                firstChild: Container(
                  height: 120,
                  padding: AppPadding.list,
                  decoration: BoxDecoration(
                    color: AppColor.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [AppShadow.large],
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Icon(
                        UniconsLine.mailbox,
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Please check your email !",
                              style: AppTextStyle.inputBasic.copyWith(
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                                color: AppColor.neutral900,
                              ),
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            Text(
                              "We already a otp code to your email to reset your password",
                              style: AppTextStyle.subtitle,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                secondChild: const SizedBox(),
                crossFadeState: controller.showBanner.isTrue
                    ? CrossFadeState.showFirst
                    : CrossFadeState.showSecond,
                duration: const Duration(milliseconds: 500),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
