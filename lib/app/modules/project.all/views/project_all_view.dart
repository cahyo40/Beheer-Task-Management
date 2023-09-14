import 'package:beheer_task_manager/app/routes/app_pages.dart';
import 'package:beheer_task_manager/core/theme/theme.dart';
import 'package:beheer_task_manager/util/custom.widget/button_back.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:unicons/unicons.dart';

import '../controllers/project_all_controller.dart';

class ProjectAllView extends GetView<ProjectAllController> {
  const ProjectAllView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColor.neutral900,
        onPressed: () {
          Get.toNamed(Routes.PROJECT_CREATE);
        },
        child: const Icon(UniconsLine.plus),
      ),
      appBar: AppBar(
        title: Text(
          'Project',
          style: AppTextStyle.appBar,
        ),
        centerTitle: true,
        leading: const ButtonBack(),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              UniconsLine.search,
              color: AppColor.neutral900,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            _statusProject(),
            _listProject(),
          ],
        ),
      ),
    );
  }

  Widget _listProject() {
    return Expanded(
      child: ListView(
        padding: AppPadding.list.copyWith(top: 0),
        children: [
          _cardProject(),
          _cardProject(),
          _cardProject(),
          _cardProject(),
        ],
      ),
    );
  }

  Widget _cardProject() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24.0),
      child: InkWell(
        onTap: () {
          Get.toNamed(Routes.PROJECT_DETAIL);
        },
        child: Container(
          clipBehavior: Clip.hardEdge,
          height: 280,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              AppShadow.medium,
            ],
            color: AppColor.white,
          ),
          child: Column(
            children: [
              Container(
                height: 100,
                color: AppColor.blue,
                child: Stack(
                  children: [
                    Positioned.fill(
                      top: 24,
                      right: 24,
                      child: Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          height: 24,
                          width: 24,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: AppColor.white,
                          ),
                          child: const Icon(
                            UniconsSolid.ellipsis_h,
                            size: 14,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 280 - 100,
                child: Row(
                  children: [
                    Container(
                      height: 280 - 100,
                      width: 8,
                      color: AppColor.pink,
                    ),
                    Expanded(
                      child: Container(
                        padding: AppPadding.list,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Row(
                                    children: List.generate(
                                      5,
                                      (index) => Align(
                                        widthFactor: 0.8,
                                        child: CircleAvatar(
                                          radius: 13,
                                          backgroundColor: AppColor.white,
                                          child: CircleAvatar(
                                            radius: 12,
                                            backgroundColor: AppColor.green,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      UniconsLine.link,
                                      size: 16,
                                      color: AppColor.neutral500,
                                    ),
                                    const SizedBox(
                                      width: 4,
                                    ),
                                    Text(
                                      "2",
                                      style: AppTextStyle.subtitle,
                                    ),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    Icon(
                                      UniconsLine.comment_lines,
                                      size: 16,
                                      color: AppColor.neutral500,
                                    ),
                                    const SizedBox(
                                      width: 4,
                                    ),
                                    Text(
                                      "12",
                                      style: AppTextStyle.subtitle,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Text(
                              "Wireframe E-Parking App",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: AppColor.neutral900,
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              "UI/UX",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: AppColor.neutral500,
                                fontSize: 14,
                              ),
                            ),
                            SizedBox(
                              height: 16,
                              width: Get.size.width - (24 * 3),
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                      height: 8,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(4),
                                        color: AppColor.neutral200,
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Container(
                                      height: 8,
                                      width: (Get.size.width - (24 * 3)) * 0.25,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(4),
                                        color: AppColor.pink,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Row(
                                    children: [
                                      Icon(
                                        UniconsLine.schedule,
                                        size: 16,
                                        color: AppColor.neutral500,
                                      ),
                                      const SizedBox(
                                        width: 16,
                                      ),
                                      Text(
                                        "Mon, 25 Feb 2023",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          color: AppColor.neutral500,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Text(
                                  "50%",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w900,
                                    color: AppColor.neutral600,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ],
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
    );
  }

  Widget _statusProject() {
    return Container(
      padding: const EdgeInsets.fromLTRB(24, 16, 24, 16),
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        physics: const ClampingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: controller.listStatus.length,
        itemBuilder: (_, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 16),
            child: InkWell(
              onTap: () {
                controller.onSelectStatus(controller.listStatus[index]);
              },
              onDoubleTap: () {
                controller.onSelectStatus("");
              },
              child: Obx(
                () => Container(
                  padding: const EdgeInsets.fromLTRB(16, 12, 16, 12),
                  decoration: BoxDecoration(
                    color: controller
                            .isSelectedStatus(controller.listStatus[index])
                        ? AppColor.neutral900
                        : AppColor.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center(
                    child: Text(
                      controller.listStatus[index],
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: !controller.isSelectedStatus(
                                  controller.listStatus[index])
                              ? AppColor.neutral900
                              : AppColor.white),
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
