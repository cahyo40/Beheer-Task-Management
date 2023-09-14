import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppDrawerController extends GetxController {
  GlobalKey<ScaffoldState> scaffold = GlobalKey<ScaffoldState>();

  openDrawer() {
    scaffold.currentState!.openDrawer();
  }
}
