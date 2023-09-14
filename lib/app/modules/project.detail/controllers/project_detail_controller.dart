import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProjectDetailController extends GetxController {
  GlobalKey<FormState> form = GlobalKey<FormState>();
  TextEditingController title = TextEditingController();
  TextEditingController date = TextEditingController();
}
