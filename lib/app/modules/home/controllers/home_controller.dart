import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  TextEditingController search = TextEditingController();

  RxBool isTodayTask = false.obs;
}
