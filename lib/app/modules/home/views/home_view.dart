import 'package:beheer_task_manager/app/modules/app.bottom.nav/views/app_bottom_nav_view.dart';
import 'package:beheer_task_manager/app/modules/app.drawer/views/app_drawer_view.dart';
import 'package:beheer_task_manager/app/modules/home/views/home_activity_view.dart';
import 'package:beheer_task_manager/app/modules/home/views/today_schedule_view.dart';
import 'package:beheer_task_manager/app/modules/home/views/today_task_view.dart';
import 'package:beheer_task_manager/app/routes/app_pages.dart';
import 'package:beheer_task_manager/core/theme/theme.dart';
import 'package:beheer_task_manager/util/custom.widget/floating_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:unicons/unicons.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
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
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hi, Cahyo",
                          style: AppTextStyle.heading.copyWith(
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Text(
                          "Let’s finish your work today",
                          style: AppTextStyle.subtitle.copyWith(
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  InkWell(
                    onTap: () => Get.to(
                      () => const HomeActivityView(),
                    ),
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
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(24, 12, 24, 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Team Workspace',
                        style: AppTextStyle.heading.copyWith(fontSize: 18),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          UniconsSolid.ellipsis_h,
                          color: AppColor.neutral900,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(24, 12, 24, 24),
                  child: InkWell(
                    onTap: () {
                      Get.toNamed(Routes.TEAM_DETAIL);
                    },
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(24, 16, 24, 16),
                      decoration: BoxDecoration(
                        color: AppColor.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            radius: 20,
                            backgroundColor: AppColor.blue,
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Vasco Da Gama",
                                  style: AppTextStyle.heading.copyWith(
                                    fontSize: 16,
                                  ),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  "18 Members",
                                  style: AppTextStyle.subtitle.copyWith(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Row(
                                  children: List.generate(
                                    8,
                                    (index) => Padding(
                                      padding: const EdgeInsets.only(right: 4),
                                      child: CircleAvatar(
                                        radius: 12,
                                        backgroundColor: AppColor.green,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Container(
                color: AppColor.white,
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
                    Obx(
                      () => Row(
                        children: [
                          InkWell(
                            onTap: () {
                              controller.isTodayTask.value = false;
                            },
                            child: Text(
                              "Today Schedule",
                              style: AppTextStyle.heading.copyWith(
                                fontSize: 18,
                                color: controller.isTodayTask.isTrue
                                    ? AppColor.neutral500
                                    : AppColor.neutral900,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          InkWell(
                            onTap: () {
                              controller.isTodayTask.value = true;
                            },
                            child: Text(
                              "Today Task",
                              style: AppTextStyle.heading.copyWith(
                                fontSize: 18,
                                color: controller.isTodayTask.isFalse
                                    ? AppColor.neutral500
                                    : AppColor.neutral900,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Obx(
                      () => controller.isTodayTask.isTrue
                          ? const TodayTaskView()
                          : const TodayScheduleView(),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
