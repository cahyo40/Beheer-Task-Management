import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileSettingChangePasswordController extends GetxController {
  GlobalKey<FormState> form = GlobalKey<FormState>();

  RxBool obsecureText = true.obs;
  void changeObsecureText() => obsecureText.toggle();
  RxString passVal = "".obs;

  TextEditingController password = TextEditingController();

  @override
  void onInit() {
    password.text = "kurang";
    super.onInit();
  }
}
