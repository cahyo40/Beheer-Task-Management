import 'package:beheer_task_manager/app/modules/home/controllers/home_controller.dart';
import 'package:beheer_task_manager/app/routes/app_pages.dart';
import 'package:beheer_task_manager/core/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:unicons/unicons.dart';

class TodayScheduleView extends GetView<HomeController> {
  const TodayScheduleView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _cardSchedule(),
        _cardSchedule(),
      ],
    );
  }

  Widget _cardSchedule() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: InkWell(
        onTap: () => Get.toNamed(Routes.SCHEDULE_DETAIL),
        child: Container(
          clipBehavior: Clip.hardEdge,
          height: 160,
          decoration: BoxDecoration(
            color: AppColor.white,
            boxShadow: [
              AppShadow.medium,
            ],
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            children: [
              Container(
                height: 160,
                width: 8,
                color: AppColor.purple,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                        "Sprint Review Period 02 in May 2022",
                        style: AppTextStyle.btnSmall.copyWith(
                          color: AppColor.neutral900,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        "Sprint",
                        style: AppTextStyle.btnSmall.copyWith(
                          color: AppColor.neutral500,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Row(
                        children: [
                          Icon(
                            UniconsLine.clock,
                            size: 16,
                            color: AppColor.neutral500,
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Text(
                            "10.00 AM - 11.00 AM",
                            style: AppTextStyle.inputBasic.copyWith(
                              color: AppColor.neutral900,
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            UniconsLine.map_marker,
                            size: 16,
                            color: AppColor.neutral500,
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Text(
                            "Lapangan",
                            style: AppTextStyle.inputBasic.copyWith(
                              color: AppColor.neutral900,
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
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
      ),
    );
  }
}
