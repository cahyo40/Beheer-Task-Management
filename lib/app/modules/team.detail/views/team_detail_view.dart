import 'package:beheer_task_manager/app/modules/team.detail/views/dialog_add_member_view.dart';
import 'package:beheer_task_manager/app/routes/app_pages.dart';
import 'package:beheer_task_manager/core/theme/theme.dart';
import 'package:beheer_task_manager/util/custom.widget/button_back.dart';
import 'package:beheer_task_manager/util/custom.widget/dialog.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:unicons/unicons.dart';

import '../controllers/team_detail_controller.dart';

class TeamDetailView extends GetView<TeamDetailController> {
  const TeamDetailView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Team',
          style: AppTextStyle.appBar,
        ),
        centerTitle: true,
        leading: const ButtonBack(),
        actions: [
          IconButton(
            onPressed: () {
              Get.toNamed(Routes.TEAM_EDIT);
            },
            icon: Icon(
              UniconsLine.edit_alt,
              color: AppColor.neutral900,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: ListView(
          padding: AppPadding.list,
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              height: 245,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: AppColor.neutral100,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundColor: AppColor.green,
                  ),
                  Column(
                    children: [
                      Text(
                        "Vasco Da Gama",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: AppColor.neutral900,
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        "arnanda01@gmail.com",
                        textAlign: TextAlign.center,
                        style: AppTextStyle.subtitle,
                      ),
                    ],
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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          UniconsLine.link_alt,
                          color: AppColor.white,
                          size: 16,
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          "Copy Link",
                          style: AppTextStyle.btnLarge,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "8 Member",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: AppColor.neutral900,
                  ),
                ),
                InkWell(
                  onTap: () {
                    Get.bottomSheet(
                      isScrollControlled: true,
                      const AppDialog(
                        title: "Add New Member",
                        child: DialogAddMemberView(),
                      ),
                    );
                  },
                  child: const Icon(
                    UniconsLine.plus,
                    size: 24,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            ListView.builder(
              physics: const ClampingScrollPhysics(),
              shrinkWrap: true,
              itemCount: 8,
              itemBuilder: (_, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 16.0),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: (56 / 2),
                        backgroundColor: AppColor.green,
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "Nama",
                                    style: GoogleFonts.urbanist(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                      color: AppColor.neutral900,
                                    ),
                                  ),
                                  TextSpan(
                                    text: index == 0 ? " (You) " : "",
                                    style: GoogleFonts.urbanist(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                      color: AppColor.blue,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Text(
                              "Email",
                              style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 16,
                                color: AppColor.neutral900,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          UniconsLine.ellipsis_h,
                          color: AppColor.neutral900,
                        ),
                      ),
                    ],
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
