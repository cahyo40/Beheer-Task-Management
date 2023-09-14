import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TeamCreateController extends GetxController {
  GlobalKey<FormState> form = GlobalKey();
  GlobalKey<FormState> formEmail = GlobalKey();
  TextEditingController teamName = TextEditingController();
  TextEditingController email = TextEditingController();

  List<String> listEmail = [
    "mdcnugroho@gmail.com",
    "cahyoracher@gmail.com",
    "akunvidio0069@gmail.com",
  ];
}
