import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProjectCreateController extends GetxController {
  GlobalKey<FormState> form = GlobalKey<FormState>();
  TextEditingController title = TextEditingController();
  TextEditingController status = TextEditingController();

  RxString selectedProjectStatus = "".obs;

  RxList<String> listProjectType = <String>[
    "Android App",
    "IOS App",
    "Website",
    "Admin",
    "UI/UX",
  ].obs;
  RxList<String> listProjectStatus = <String>[
    "Discussion",
    "In Progress",
    "Completed",
    "Cancel",
  ].obs;

  bool isProjetStatus(String sts) => selectedProjectStatus.value == sts;
  selectProjectStatus(String sts) {
    selectedProjectStatus.value = sts;
    status.text = sts;
  }

  RxString date = "".obs;
  RxString description = "".obs;
}
