import 'package:beheer_task_manager/core/constants/assets.dart';
import 'package:beheer_task_manager/core/theme/theme.dart';
import 'package:beheer_task_manager/util/custom.widget/button_back.dart';
import 'package:beheer_task_manager/util/custom.widget/dialog.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:unicons/unicons.dart';

import '../controllers/project_create_controller.dart';

class ProjectCreateView extends GetView<ProjectCreateController> {
  const ProjectCreateView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Create a new project',
          style: AppTextStyle.appBar,
        ),
        centerTitle: true,
        leading: const ButtonBack(),
        actions: const [],
      ),
      body: SafeArea(
        child: Padding(
          padding: AppPadding.list,
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                _title(),
                _projectType(),
                _projectStatus(),
                _projectDetail(),
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
                    "Create Project",
                    style: AppTextStyle.btnLarge,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _projectType() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          "Project Type",
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
            controller.listProjectType.length + 1,
            (index) => index == controller.listProjectType.length
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
                      controller.listProjectType[index],
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

  Widget _projectStatus() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          "Project Status",
          style: AppTextStyle.inputFill.copyWith(
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        ),
        TextFormField(
          controller: controller.status,
          style: AppTextStyle.inputType,
          readOnly: true,
          onTap: () {
            Get.bottomSheet(
              AppDialog(
                title: "Project Status",
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Obx(
                      () => ListView.builder(
                        shrinkWrap: true,
                        itemCount: controller.listProjectStatus.length,
                        itemBuilder: (_, index) {
                          return Obx(
                            () => CheckboxListTile(
                              value: controller.isProjetStatus(
                                  controller.listProjectStatus[index]),
                              onChanged: (v) {
                                controller.selectProjectStatus(
                                    controller.listProjectStatus[index]);
                              },
                              fillColor: controller.isProjetStatus(
                                      controller.listProjectStatus[index])
                                  ? MaterialStatePropertyAll<Color>(
                                      AppColor.neutral900)
                                  : MaterialStatePropertyAll<Color>(
                                      AppColor.white),
                              checkboxShape: const CircleBorder(),
                              title: Text(
                                controller.listProjectStatus[index],
                              ),
                            ),
                          );
                        },
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
                      onPressed: () {
                        Get.back();
                      },
                      child: Text(
                        "Continue",
                        style: AppTextStyle.btnLarge,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
          decoration: InputDecoration(
            hintText: "Select Status",
            hintStyle: AppTextStyle.inputBasic,
            border: AppInputBorder.basic,
            enabledBorder: AppInputBorder.basic,
            focusedBorder: AppInputBorder.type,
            errorBorder: AppInputBorder.error,
            contentPadding: const EdgeInsets.only(bottom: -10.0),
            suffixIconConstraints: const BoxConstraints(maxHeight: 14),
            suffixIcon: Icon(
              UniconsLine.angle_down,
              size: 24,
              color: AppColor.neutral900,
            ),
          ),
        ),
        const SizedBox(
          height: 24,
        ),
      ],
    );
  }

  Widget _projectDetail() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          "Project Detail",
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

  Widget _title() {
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
}
