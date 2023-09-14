import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileEditController extends GetxController {
  GlobalKey<FormState> form = GlobalKey<FormState>();

  TextEditingController email = TextEditingController();
  TextEditingController username = TextEditingController();

  @override
  void onInit() {
    email.text = "mail@mail.com";
    username.text = "Cahyo Nugroho";
    super.onInit();
  }
}
