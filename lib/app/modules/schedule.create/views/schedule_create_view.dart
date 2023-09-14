import 'package:beheer_task_manager/core/constants/assets.dart';
import 'package:beheer_task_manager/core/theme/theme.dart';
import 'package:beheer_task_manager/util/custom.widget/button_back.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:unicons/unicons.dart';

import '../controllers/schedule_create_controller.dart';

class ScheduleCreateView extends GetView<ScheduleCreateController> {
  const ScheduleCreateView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Create a new schedule',
          style: AppTextStyle.appBar,
        ),
        centerTitle: true,
        leading: const ButtonBack(),
        actions: const [],
      ),
      body: SafeArea(
        child: Padding(
          padding: AppPadding.list,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _scheduleTitle(),
              _scheduleType(),
              _scheduleDetail(),
              const Expanded(child: SizedBox()),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColor.neutral900,
                  padding: AppPadding.largeBtn,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  "Create Schedule",
                  style: AppTextStyle.btnLarge,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _scheduleTitle() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Title",
          style: AppTextStyle.inputFill.copyWith(
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        ),
        TextFormField(
          controller: controller.title,
          style: AppTextStyle.inputType,
          decoration: InputDecoration(
            hintText: "Enter task title here",
            hintStyle: AppTextStyle.inputBasic,
            border: AppInputBorder.basic,
            enabledBorder: AppInputBorder.basic,
            focusedBorder: AppInputBorder.type,
            errorBorder: AppInputBorder.error,
          ),
        ),
        const SizedBox(
          height: 24,
        ),
      ],
    );
  }

  Widget _scheduleType() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          "Schedule Type",
          style: AppTextStyle.inputFill.copyWith(
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(
          height: 24,
        ),
        Wrap(
          runSpacing: 8,
          spacing: 8,
          children: List.generate(
            controller.listScheduleType.length + 1,
            (index) => index == controller.listScheduleType.length
                ? InkWell(
                    onTap: () {},
                    child: Image.asset(
                      AssetsImg.addPhoto,
                      height: 40,
                      width: 40,
                    ),
                  )
                : Container(
                    padding: const EdgeInsets.fromLTRB(16, 10, 16, 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: AppColor.blue,
                        width: 1.5,
                      ),
                    ),
                    child: Text(
                      controller.listScheduleType[index],
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: AppColor.blue,
                        fontSize: 14,
                      ),
                    ),
                  ),
          ),
        ),
        const SizedBox(
          height: 24,
        ),
      ],
    );
  }

  Widget _scheduleDetail() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          "Schedule Detail",
          style: AppTextStyle.inputFill.copyWith(
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Icon(
              UniconsLine.calendar_alt,
              size: 24,
              color: AppColor.neutral500,
            ),
            const SizedBox(
              width: 16,
            ),
            Text(
              "Choose Date",
              style: AppTextStyle.inputError.copyWith(
                color: AppColor.neutral500,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        Row(
          children: [
            Icon(
              UniconsLine.clock_seven,
              size: 24,
              color: AppColor.neutral500,
            ),
            const SizedBox(
              width: 16,
            ),
            Text(
              "Choose Time",
              style: AppTextStyle.inputError.copyWith(
                color: AppColor.neutral500,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        Row(
          children: [
            Icon(
              UniconsLine.users_alt,
              size: 24,
              color: AppColor.neutral500,
            ),
            const SizedBox(
              width: 16,
            ),
            Text(
              "Add Member",
              style: AppTextStyle.inputError.copyWith(
                color: AppColor.neutral500,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        Row(
          children: [
            Icon(
              UniconsLine.location_point,
              size: 24,
              color: AppColor.neutral500,
            ),
            const SizedBox(
              width: 16,
            ),
            Text(
              "Add Location",
              style: AppTextStyle.inputError.copyWith(
                color: AppColor.neutral500,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        Row(
          children: [
            Icon(
              UniconsLine.file_alt,
              size: 24,
              color: AppColor.neutral500,
            ),
            const SizedBox(
              width: 16,
            ),
            Text(
              "Add Description",
              style: AppTextStyle.inputError.copyWith(
                color: AppColor.neutral500,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 16,
        ),
      ],
    );
  }
}
