import 'package:beheer_task_manager/app/modules/team.create/controllers/team_create_controller.dart';
import 'package:beheer_task_manager/core/theme/theme.dart';
import 'package:beheer_task_manager/util/custom.widget/button_back.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:unicons/unicons.dart';

class InviteMemberView extends GetView<TeamCreateController> {
  const InviteMemberView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: const ButtonBack(),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 2,
            color: AppColor.neutral900,
            width: Get.size.width,
          ),
          const SizedBox(
            height: 8,
          ),
          Expanded(
            child: ListView(
              padding: AppPadding.list,
              children: [
                Text("Invite team member", style: AppTextStyle.heading),
                const SizedBox(
                  height: 16,
                ),
                Text("You can always change it later",
                    style: AppTextStyle.subtitle),
                const SizedBox(
                  height: 48,
                ),
                Text(
                  "Invite by link",
                  style: AppTextStyle.subtitle.copyWith(
                    color: AppColor.neutral900,
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: AppColor.neutral200,
                      ),
                      child: const Icon(
                        UniconsLine.link,
                      ),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Text(
                      "Copy link",
                      style: AppTextStyle.subtitle.copyWith(
                        color: AppColor.blue,
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 48,
                ),
                Text(
                  "Invite by email",
                  style: AppTextStyle.subtitle.copyWith(
                    color: AppColor.neutral900,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Form(
                  key: controller.formEmail,
                  child: Column(
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
                      const SizedBox(
                        height: 32,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(24, 0, 24, 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColor.neutral900,
                    padding: AppPadding.largeBtn,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: () {
                    Get.to(
                      () => const InviteMemberView(),
                      transition: Transition.fadeIn,
                    );
                  },
                  child: Text(
                    "Send Invite",
                    style: AppTextStyle.btnLarge,
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Center(
                  child: InkWell(
                    onTap: () {},
                    child: Text(
                      "Skip for now",
                      style: AppTextStyle.inputBasic.copyWith(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: AppColor.neutral900,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
