import 'dart:math' as math;

import 'package:beheer_task_manager/app/modules/app.bottom.nav/views/app_bottom_nav_view.dart';
import 'package:beheer_task_manager/app/modules/app.drawer/views/app_drawer_view.dart';
import 'package:beheer_task_manager/app/routes/app_pages.dart';
import 'package:beheer_task_manager/core/theme/theme.dart';
import 'package:beheer_task_manager/util/custom.widget/floating_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:unicons/unicons.dart';

import '../controllers/project_summary_controller.dart';

class ProjectSummaryView extends GetView<ProjectSummaryController> {
  const ProjectSummaryView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState> scaffold = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: scaffold,
      drawer: const AppDrawerView(),
      bottomNavigationBar: const AppBottomNavView(),
      floatingActionButton: AppFloatingButton.floatingButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: AppPadding.list,
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      scaffold.currentState!.openDrawer();
                    },
                    child: const Icon(
                      UniconsLine.bars,
                    ),
                  ),
                  const SizedBox(
                    width: 24,
                  ),
                  Expanded(
                    child: Text(
                      "Project Summary",
                      style: AppTextStyle.heading.copyWith(
                        fontSize: 16,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: AppColor.neutral200,
                          width: 1.5,
                        ),
                      ),
                      child: const Icon(
                        UniconsLine.bell,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              color: AppColor.neutral200,
              thickness: 1,
            ),
            Expanded(
              child: ListView(
                padding: AppPadding.list,
                children: [
                  Text(
                    "Search",
                    style: AppTextStyle.inputFill.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  TextFormField(
                    autovalidateMode: AutovalidateMode.always,
                    controller: controller.search,
                    style: AppTextStyle.inputType,
                    decoration: InputDecoration(
                      hintText: "Search your task here",
                      hintStyle: AppTextStyle.inputBasic,
                      border: AppInputBorder.basic,
                      enabledBorder: AppInputBorder.basic,
                      focusedBorder: AppInputBorder.type,
                      errorBorder: AppInputBorder.error,
                      suffixIcon: const Padding(
                        padding: EdgeInsets.all(14.0),
                        child: Icon(
                          UniconsLine.search,
                          size: 24,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _cardProjcetInfo(
                        color: AppColor.blue,
                        label: "Project\nIn Projet",
                        value: 10,
                      ),
                      _cardProjcetInfo(
                        color: AppColor.green,
                        label: "Project\nCompleted",
                        value: 24,
                      ),
                      _cardProjcetInfo(
                        color: AppColor.pink,
                        label: "Project\nCancelled",
                        value: 5,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColor.white,
                      padding: AppPadding.largeBtn,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                        side: BorderSide(
                          width: 1.5,
                          color: AppColor.neutral900,
                        ),
                      ),
                    ),
                    onPressed: () {
                      Get.toNamed(Routes.PROJECT_ALL);
                    },
                    child: Text(
                      "View All Project",
                      style: AppTextStyle.btnLarge.copyWith(
                        color: AppColor.neutral900,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _cardProjcetInfo(
      {required Color color, required String label, required int value}) {
    return Container(
      padding: const EdgeInsets.all(16),
      height: 100,
      width: (Get.size.width / 3) - 24,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        gradient: LinearGradient(
          begin: const Alignment(-1.0, 0.0),
          end: const Alignment(1.0, 0.0),
          colors: [
            color.withOpacity(.75),
            color.withOpacity(.9),
            color,
            color.withOpacity(.9),
            color.withOpacity(.75),
          ],
          stops: const [.1, .2, .5, .7, .9],
          transform: const GradientRotation(math.pi / 4),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "$value",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: AppColor.white,
                ),
              ),
              Icon(
                UniconsSolid.clock_eight,
                color: AppColor.white,
              ),
            ],
          ),
          Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: AppColor.white,
            ),
          ),
        ],
      ),
    );
  }
}
