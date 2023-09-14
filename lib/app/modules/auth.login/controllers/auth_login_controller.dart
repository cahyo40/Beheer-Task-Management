import 'package:beheer_task_manager/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthLoginController extends GetxController {
  GlobalKey<FormState> loginForm = GlobalKey<FormState>();

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  RxBool obsecureText = true.obs;

  changeObsecureText() => obsecureText.toggle();

  void login() {
    // if (loginForm.currentState!.validate()) {}
    Get.toNamed(Routes.WELCOME);
  }

  void forgotPass() {
    Get.toNamed(Routes.AUTH_FORGOT_PASSWORD);
  }

  void register() {
    Get.toNamed(Routes.AUTH_REGISTER);
  }
}
