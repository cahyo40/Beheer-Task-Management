import 'package:beheer_task_manager/core/constants/icon.dart';
import 'package:beheer_task_manager/core/theme/theme.dart';
import 'package:beheer_task_manager/util/custom.widget/svg_icons.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:unicons/unicons.dart';

import '../controllers/auth_login_controller.dart';

class AuthLoginView extends GetView<AuthLoginController> {
  const AuthLoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: AppPadding.list,
          children: [
            Text("Login", style: AppTextStyle.heading),
            const SizedBox(
              height: 16,
            ),
            Text("Sign in to your account", style: AppTextStyle.subtitle),
            const SizedBox(
              height: 48,
            ),
            Form(
              key: controller.loginForm,
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
                  Text(
                    "Password",
                    style: AppTextStyle.inputFill.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  TextFormField(
                    autovalidateMode: AutovalidateMode.always,
                    controller: controller.password,
                    style: AppTextStyle.inputType,
                    obscureText: controller.obsecureText.value,
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
                          child: Obx(
                            () => Icon(
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
                  InkWell(
                    onTap: controller.forgotPass,
                    child: Text(
                      "Forgot Password?",
                      textAlign: TextAlign.right,
                      style: AppTextStyle.subtitle.copyWith(
                        color: AppColor.neutral900,
                      ),
                    ),
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
              onPressed: controller.login,
              child: Text(
                "Login",
                style: AppTextStyle.btnLarge.copyWith(
                  color: AppColor.neutral000,
                ),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Text(
              "Or login with account",
              textAlign: TextAlign.center,
              style: AppTextStyle.subtitle.copyWith(
                fontSize: 12,
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColor.white,
                padding: AppPadding.largeBtn,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                  side: BorderSide(
                    width: 1.5,
                    color: AppColor.neutral200,
                  ),
                ),
              ),
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgLogoIcon(
                    icon: LogoIcon.google,
                    size: 24,
                  ),
                  Text(
                    "Continue with Google",
                    style: AppTextStyle.btnLarge.copyWith(
                      color: AppColor.neutral900,
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                    width: 24,
                  ),
                ],
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
                    color: AppColor.neutral200,
                  ),
                ),
              ),
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgLogoIcon(
                    icon: LogoIcon.facebook,
                    size: 24,
                  ),
                  Text(
                    "Continue with Facebook",
                    style: AppTextStyle.btnLarge.copyWith(
                      color: AppColor.neutral900,
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                    width: 24,
                  ),
                ],
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
                    color: AppColor.neutral200,
                  ),
                ),
              ),
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgLogoIcon(
                    icon: LogoIcon.apple,
                    size: 24,
                  ),
                  Text(
                    "Continue with Apple",
                    style: AppTextStyle.btnLarge.copyWith(
                      color: AppColor.neutral900,
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                    width: 24,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 48,
            ),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Don't have an account? ",
                    style: AppTextStyle.subtitle,
                  ),
                  TextSpan(
                    text: "Register",
                    style: AppTextStyle.subtitle.copyWith(
                      color: AppColor.neutral900,
                      fontWeight: FontWeight.bold,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () => controller.register(),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
