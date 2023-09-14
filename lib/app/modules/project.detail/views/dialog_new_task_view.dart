import 'package:beheer_task_manager/app/modules/project.detail/controllers/project_detail_controller.dart';
import 'package:beheer_task_manager/core/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:unicons/unicons.dart';

class DialogNewTaskView extends GetView<ProjectDetailController> {
  const DialogNewTaskView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.form,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
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
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              hintText: "Enter title",
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
          Text(
            "Due Date",
            style: AppTextStyle.inputFill.copyWith(
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
          TextFormField(
            autovalidateMode: AutovalidateMode.always,
            controller: controller.date,
            style: AppTextStyle.inputType,
            readOnly: true,
            decoration: InputDecoration(
              hintText: "Enter your password",
              hintStyle: AppTextStyle.inputBasic,
              border: AppInputBorder.basic,
              enabledBorder: AppInputBorder.basic,
              focusedBorder: AppInputBorder.type,
              errorBorder: AppInputBorder.error,
              suffixIcon: InkWell(
                onTap: () async {
                  final data = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now().subtract(
                        const Duration(days: 0),
                      ),
                      firstDate: DateTime.now().subtract(
                        const Duration(days: 30),
                      ),
                      lastDate: DateTime.now().add(
                        const Duration(days: 30),
                      ));
                  controller.date.text = data.toString();
                },
                child: const Padding(
                  padding: EdgeInsets.all(14.0),
                  child: Icon(
                    UniconsLine.calendar_alt,
                    size: 24,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 24,
          ),
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
              "Continue",
              style: AppTextStyle.btnLarge,
            ),
          ),
        ],
      ),
    );
  }
}
