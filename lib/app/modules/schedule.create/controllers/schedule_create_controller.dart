import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScheduleCreateController extends GetxController {
  GlobalKey<FormState> form = GlobalKey<FormState>();
  TextEditingController title = TextEditingController();

  RxList<String> listScheduleType = <String>[
    "Project",
    "Meeting",
    "Short Dribbble",
    "Daily Standup",
    "Sprint",
  ].obs;
}
