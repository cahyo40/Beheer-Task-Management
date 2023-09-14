import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthForgotPasswordController extends GetxController {
  GlobalKey<FormState> form = GlobalKey<FormState>();

  TextEditingController email = TextEditingController();

  RxBool showBanner = false.obs;

  void forgotPassword() {
    showBanner.value = true;
    Future.delayed(const Duration(seconds: 2), () {
      showBanner.value = false;
    });
  }
}
