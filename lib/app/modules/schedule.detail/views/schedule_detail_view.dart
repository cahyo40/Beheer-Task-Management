import 'package:beheer_task_manager/app/modules/schedule.detail/views/dialog_more_option_view.dart';
import 'package:beheer_task_manager/core/constants/assets.dart';
import 'package:beheer_task_manager/util/custom.widget/button_back.dart';
import 'package:beheer_task_manager/util/custom.widget/dialog.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:unicons/unicons.dart';

import '../../../../core/theme/theme.dart';
import '../controllers/schedule_detail_controller.dart';

class ScheduleDetailView extends GetView<ScheduleDetailController> {
  const ScheduleDetailView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Detail Schedule',
          style: AppTextStyle.appBar,
        ),
        centerTitle: true,
        leading: const ButtonBack(),
        actions: [
          IconButton(
            onPressed: () {
              Get.bottomSheet(
                const AppDialog(
                  title: "More Option",
                  child: DialogMoreOptionView(),
                ),
              );
            },
            icon: Icon(
              UniconsSolid.ellipsis_h,
              color: AppColor.neutral900,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView(
                padding: AppPadding.list,
                children: [
                  Text(
                    "Sprint Review Period 02 in January 2023",
                    style: AppTextStyle.heading,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    crossAxisAlignment: WrapCrossAlignment.start,
                    children: List.generate(
                      1,
                      (index) => Container(
                        padding: const EdgeInsets.fromLTRB(16, 6, 16, 6),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: AppColor.purple,
                        ),
                        child: Text(
                          "Sprint",
                          style: AppTextStyle.inputBasic.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const IconDetail(
                    icon: UniconsLine.schedule,
                    text: "Mon, 2 May 2022",
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const IconDetail(
                    icon: UniconsLine.clock,
                    text: "09:00 - 10:00 AM",
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
                      Row(
                        children: List.generate(
                          7,
                          (index) => Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: (index == 7 - 1)
                                ? Image.asset(
                                    AssetsImg.addPhoto,
                                    height: 24,
                                    width: 24,
                                  )
                                : CircleAvatar(
                                    radius: 12,
                                    backgroundColor: AppColor.green,
                                  ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const IconDetail(
                    icon: UniconsLine.map_marker_alt,
                    text: "Lapangan Sepakbola",
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const IconDetail(
                    icon: UniconsLine.file_alt,
                    text: "View Description",
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Divider(
                    color: AppColor.neutral200,
                    thickness: 1.5,
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Text(
                    "Activity",
                    style: AppTextStyle.appBar.copyWith(
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  _cardComment(),
                ],
              ),
            ),
            Divider(
              color: AppColor.neutral200,
              thickness: 1.5,
            ),
            Container(
              height: 96,
              padding: const EdgeInsets.fromLTRB(24, 16, 24, 0),
              color: AppColor.white,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: AppColor.green,
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Add comment",
                        hintStyle: AppTextStyle.inputBasic,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: AppColor.neutral000,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Icon(
                      UniconsLine.message,
                      size: 24,
                      color: AppColor.neutral900,
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: AppColor.neutral000,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Icon(
                      UniconsLine.link_alt,
                      size: 24,
                      color: AppColor.neutral900,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _cardComment() => Padding(
        padding: const EdgeInsets.only(bottom: 16.0),
        child: SizedBox(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 20,
                backgroundColor: AppColor.green,
              ),
              const SizedBox(
                width: 16,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Muchammad Dwi Cahyo Nugroho",
                          maxLines: 1,
                          softWrap: true,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: AppColor.neutral900,
                            fontSize: 16,
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Icon(
                            UniconsSolid.ellipsis_h,
                            color: AppColor.neutral900,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        "Revision E-Warranty\nShot Dribbble\nCreate Product Sales Analythic\nShowcase UX Design",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: AppColor.neutral900,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Reply",
                          maxLines: 1,
                          softWrap: true,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: AppColor.neutral900,
                            fontSize: 14,
                          ),
                        ),
                        Text(
                          "Jul 22, 2022 at 01:52 PM",
                          maxLines: 1,
                          softWrap: true,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: AppColor.neutral500,
                            fontSize: 14,
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
}

class IconDetail extends StatelessWidget {
  final IconData icon;
  final String text;
  const IconDetail({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          size: 24,
          color: AppColor.neutral500,
        ),
        const SizedBox(
          width: 16,
        ),
        Text(
          text,
          style: AppTextStyle.inputError.copyWith(
            color: AppColor.neutral900,
          ),
        ),
      ],
    );
  }
}
