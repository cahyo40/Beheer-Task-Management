import 'package:beheer_task_manager/app/modules/home/controllers/home_controller.dart';
import 'package:beheer_task_manager/core/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TodayTaskView extends GetView<HomeController> {
  const TodayTaskView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(16),
          height: 76,
          decoration: BoxDecoration(
            color: AppColor.white,
            boxShadow: [
              AppShadow.medium,
            ],
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
                value: true,
                onChanged: (c) {},
                fillColor: MaterialStatePropertyAll<Color>(AppColor.green),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        Container(
          padding: const EdgeInsets.all(16),
          height: 76,
          decoration: BoxDecoration(
            color: AppColor.white,
            boxShadow: [
              AppShadow.medium,
            ],
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
                value: false,
                onChanged: (c) {},
                fillColor: MaterialStatePropertyAll<Color>(AppColor.green),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
