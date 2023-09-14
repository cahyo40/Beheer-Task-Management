import 'package:beheer_task_manager/app/modules/app.drawer/views/app_drawer_view.dart';
import 'package:beheer_task_manager/core/theme/theme.dart';
import 'package:beheer_task_manager/util/custom.widget/floating_button.dart';
import 'package:beheer_task_manager/util/helper/date/date_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:unicons/unicons.dart';

import '../../app.bottom.nav/views/app_bottom_nav_view.dart';
import '../controllers/calendar_controller.dart';

class CalendarView extends GetView<CalendarController> {
  const CalendarView({Key? key}) : super(key: key);

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
                      "Calendar",
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
                  _selectDate(),
                  _dateSlider(),
                  _scheduleTask(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _selectDate() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Text(
                DateHelper.monthYearSmall(
                  date: DateTime.now(),
                ),
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: AppColor.neutral900,
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              const Icon(UniconsLine.angle_down),
            ],
          ),
          Row(
            children: [
              Container(
                height: 32,
                width: 32,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: AppColor.neutral200,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Icon(
                  UniconsLine.angle_left,
                  size: 20,
                  color: AppColor.neutral900,
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Container(
                height: 32,
                width: 32,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: AppColor.neutral200,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Icon(
                  UniconsLine.angle_right,
                  size: 20,
                  color: AppColor.neutral900,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _dateSlider() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24.0),
      child: SizedBox(
        width: double.infinity,
        height: 70,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 30,
          itemBuilder: (_, index) {
            final date = controller.firstDate.value.add(Duration(days: index));
            return Obx(
              () => Padding(
                padding: const EdgeInsets.only(right: 4.0),
                child: InkWell(
                  onTap: () => controller.selectedDate(date),
                  child: Container(
                    height: 68,
                    width: 48,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: controller.isSelectDay(date)
                          ? AppColor.neutral900
                          : AppColor.neutral200,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          DateHelper.monthSmall(date: date),
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: controller.isSelectDay(date)
                                ? AppColor.white
                                : AppColor.neutral900,
                          ),
                        ),
                        Text(
                          DateHelper.dayNum(date: date),
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: controller.isSelectDay(date)
                                ? AppColor.white
                                : AppColor.neutral900,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _scheduleTask() {
    var width2 = Get.size.width * 0.5 - 30;
    return Obx(
      () => Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () => controller.selectSection("schedule"),
                child: SizedBox(
                  width: width2,
                  child: Column(
                    children: [
                      Text(
                        "Schedule",
                        style: TextStyle(
                          color: controller.isScheduleSection("schedule")
                              ? AppColor.neutral900
                              : AppColor.neutral500,
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Container(
                        height: 1.5,
                        width: width2 - 5,
                        color: controller.isScheduleSection("schedule")
                            ? AppColor.neutral900
                            : Colors.transparent,
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () => controller.selectSection("task"),
                child: SizedBox(
                  width: Get.size.width * 0.5 - 30,
                  child: Column(
                    children: [
                      Text(
                        "Task",
                        style: TextStyle(
                          color: !controller.isScheduleSection("schedule")
                              ? AppColor.neutral900
                              : AppColor.neutral500,
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Container(
                        height: 1.5,
                        width: width2 - 5,
                        color: !controller.isScheduleSection("schedule")
                            ? AppColor.neutral900
                            : Colors.transparent,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 24,
          ),
          controller.isScheduleSection("schedule")
              ? _scheduleSection()
              : _taskSection()
        ],
      ),
    );
  }

  Widget _scheduleSection() {
    return ListView.builder(
      shrinkWrap: true,
      physics: const ClampingScrollPhysics(),
      itemCount: 3,
      itemBuilder: (_, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 16.0),
          child: Container(
            height: 70,
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: AppColor.blue.withOpacity(.15),
            ),
            child: Row(
              children: [
                Container(
                  height: 70,
                  width: 8,
                  color: AppColor.blue,
                ),
                const SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'TodayTaskView is working',
                        style: AppTextStyle.subtitle.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: AppColor.neutral900,
                        ),
                      ),
                      Row(
                        children: [
                          Icon(
                            UniconsLine.clock_five,
                            size: 16,
                            color: AppColor.neutral500,
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Text(
                            '11:00 AM - 12:00 AM',
                            style: AppTextStyle.subtitle.copyWith(
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _taskSection() {
    return Column(
      children: List.generate(
        7,
        (index) => _listTask(index % 2 == 0 ? true : false),
      ),
    );
  }

  Widget _listTask(bool value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        padding: const EdgeInsets.all(16),
        height: 76,
        decoration: BoxDecoration(
          color: AppColor.white,
          boxShadow: [
            value ? AppShadow.medium : AppShadow.small,
          ],
          border: Border.all(
            color: value ? AppColor.white : AppColor.neutral200,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'TodayTaskView is working',
                    style: AppTextStyle.subtitle.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: AppColor.neutral900,
                    ),
                  ),
                  Text(
                    'Due Date : Jan 25, 2023 - 01:30PM',
                    style: AppTextStyle.subtitle.copyWith(
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
            ),
            Checkbox(
              value: value,
              onChanged: (c) {},
              fillColor: value
                  ? MaterialStatePropertyAll<Color>(AppColor.green)
                  : MaterialStatePropertyAll<Color>(AppColor.white),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(2),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
