import 'package:beheer_task_manager/app/modules/team.detail/controllers/team_detail_controller.dart';
import 'package:beheer_task_manager/core/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:unicons/unicons.dart';

class DialogAddMemberView extends GetView<TeamDetailController> {
  const DialogAddMemberView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.formEmail,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "Email",
            style: AppTextStyle.inputFill.copyWith(
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
          Column(
            children: [
              const SizedBox(
                height: 8,
              ),
              Wrap(
                crossAxisAlignment: WrapCrossAlignment.start,
                spacing: 8,
                runSpacing: 8,
                children: List.generate(
                  controller.listEmail.length,
                  (index) => Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: AppColor.neutral200,
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          controller.listEmail[index],
                          style: AppTextStyle.inputBasic.copyWith(
                            color: AppColor.neutral900,
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Icon(
                          UniconsLine.times,
                          size: 16,
                          color: AppColor.neutral200,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
            ],
          ),
          TextFormField(
            controller: controller.email,
            style: AppTextStyle.inputType,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              hintText: "mail@mail.com",
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
