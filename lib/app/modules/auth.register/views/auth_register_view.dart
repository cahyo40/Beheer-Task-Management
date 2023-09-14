import 'package:beheer_task_manager/core/constants/assets.dart';
import 'package:beheer_task_manager/core/theme/theme.dart';
import 'package:beheer_task_manager/util/custom.widget/button_back.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:unicons/unicons.dart';

import '../controllers/auth_register_controller.dart';

class AuthRegisterView extends GetView<AuthRegisterController> {
  const AuthRegisterView({Key? key}) : super(key: key);
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
            Text(
              "Register",
              style: AppTextStyle.heading,
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              "Create your account",
              style: AppTextStyle.subtitle,
            ),
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
                    controller: controller.name,
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
                    height: 24,
                  ),
                  Text(
                    "Password",
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
                ],
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Obx(
              () => Row(
                children: [
                  controller.val8Char()
                      ? Icon(
                          UniconsSolid.times_circle,
                          size: 16,
                          color: AppColor.neutral500,
                        )
                      : Icon(
                          UniconsSolid.check_circle,
                          size: 16,
                          color: AppColor.green,
                        ),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    "Minimum 8 character",
                    style: AppTextStyle.subtitle.copyWith(
                      fontSize: 12,
                      color: controller.val8Char()
                          ? AppColor.neutral500
                          : AppColor.neutral900,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Obx(
              () => Row(
                children: [
                  !controller.valUpLow()
                      ? Icon(
                          UniconsSolid.times_circle,
                          size: 16,
                          color: AppColor.neutral500,
                        )
                      : Icon(
                          UniconsSolid.check_circle,
                          size: 16,
                          color: AppColor.green,
                        ),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    "Uppercase and lowercase character",
                    style: AppTextStyle.subtitle.copyWith(
                      fontSize: 12,
                      color: !controller.valUpLow()
                          ? AppColor.neutral500
                          : AppColor.neutral900,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Obx(
              () => Row(
                children: [
                  !controller.valNumSym()
                      ? Icon(
                          UniconsSolid.times_circle,
                          size: 16,
                          color: AppColor.neutral500,
                        )
                      : Icon(
                          UniconsSolid.check_circle,
                          size: 16,
                          color: AppColor.green,
                        ),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    "Minimum 1 number and symbol",
                    style: AppTextStyle.subtitle.copyWith(
                      fontSize: 12,
                      color: !controller.valNumSym()
                          ? AppColor.neutral500
                          : AppColor.neutral900,
                    ),
                  ),
                ],
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
                "Register",
                style: AppTextStyle.btnLarge.copyWith(
                  color: AppColor.neutral000,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
