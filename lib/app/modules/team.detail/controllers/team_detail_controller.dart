import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TeamDetailController extends GetxController {
  GlobalKey<FormState> formEmail = GlobalKey();

  TextEditingController email = TextEditingController();

  List<String> listEmail = [
    "mdcnugroho@gmail.com",
    "cahyoracher@gmail.com",
    "akunvidio0069@gmail.com",
  ];
}
