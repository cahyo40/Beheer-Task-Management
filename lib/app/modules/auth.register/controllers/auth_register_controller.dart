import 'package:beheer_task_manager/core/constants/regex.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthRegisterController extends GetxController {
  GlobalKey<FormState> form = GlobalKey<FormState>();

  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  RxBool obsecureText = true.obs;

  RxString passVal = "".obs;

  void changeObsecureText() => obsecureText.toggle();
  bool val8Char() => passVal.value.length < 8;

  bool valUpLow() => RegExp(Regex.uppercase).hasMatch(passVal.value);
  bool valNumSym() => RegExp(Regex.numberSymbol).hasMatch(passVal.value);
}
