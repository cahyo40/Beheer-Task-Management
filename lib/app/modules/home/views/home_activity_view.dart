import 'package:beheer_task_manager/app/modules/home/controllers/home_controller.dart';
import 'package:beheer_task_manager/core/theme/theme.dart';
import 'package:beheer_task_manager/util/custom.widget/button_back.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:unicons/unicons.dart';

class HomeActivityView extends GetView<HomeController> {
  const HomeActivityView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Activity',
          style: AppTextStyle.appBar,
        ),
        centerTitle: true,
        leading: const ButtonBack(),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              UniconsSolid.ellipsis_h,
              color: AppColor.neutral900,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: ListView(
          padding: AppPadding.list,
          children: const [
            ActivityUpload(
              color: Colors.red,
            ),
            ActivityInvite(
              color: Colors.green,
            ),
            ActivityComment(),
          ],
        ),
      ),
    );
  }
}

class ActivityUpload extends StatelessWidget {
  final Color color;
  const ActivityUpload({
    Key? key,
    this.color = Colors.black87,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24.0),
      child: SizedBox(
        height: 144,
        child: Row(
          children: [
            SizedBox(
              height: 144,
              width: 48,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      width: 1.5,
                      height: 96,
                      color: AppColor.neutral200,
                    ),
                  ),
                  CircleAvatar(
                    radius: 24,
                    backgroundColor: color.withOpacity(.12),
                    child: Icon(
                      UniconsLine.file_upload,
                      color: color,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 16,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 24,
                        backgroundColor: color.withOpacity(.12),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Flexible(
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Mdcnugroho ",
                                style: AppTextStyle.appBar.copyWith(
                                  fontWeight: FontWeight.w600,
                                  color: AppColor.neutral900,
                                ),
                              ),
                              TextSpan(
                                text:
                                    "upload a new file in Project Aksantara Website",
                                style: AppTextStyle.inputBasic.copyWith(
                                  fontWeight: FontWeight.normal,
                                  color: AppColor.neutral500,
                                ),
                              ),
                            ],
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          softWrap: true,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                    height: 48,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: color.withOpacity(.08),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          UniconsLine.folder,
                          color: color,
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Expanded(
                          child: Text(
                            "Reference Style",
                            style: AppTextStyle.subtitle.copyWith(
                              color: color,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: color.withOpacity(.24),
                          ),
                          child: Icon(
                            UniconsLine.file_download,
                            color: color,
                          ),
                        ),
                      ],
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "02/02/2023 ",
                          style: AppTextStyle.subtitle.copyWith(
                            color: AppColor.neutral500,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        TextSpan(
                          text: "*",
                          style: AppTextStyle.subtitle.copyWith(
                            color: AppColor.neutral500,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        TextSpan(
                          text: " 08:24 PM",
                          style: AppTextStyle.subtitle.copyWith(
                            color: AppColor.neutral500,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    softWrap: true,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ActivityComment extends StatelessWidget {
  final Color color;
  const ActivityComment({
    Key? key,
    this.color = Colors.black87,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24.0),
      child: SizedBox(
        height: 144,
        child: Row(
          children: [
            SizedBox(
              height: 144,
              width: 48,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      width: 1.5,
                      height: 96,
                      color: AppColor.neutral200,
                    ),
                  ),
                  CircleAvatar(
                    radius: 24,
                    backgroundColor: color.withOpacity(.12),
                    child: Icon(
                      UniconsLine.comment_alt_dots,
                      color: color,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 16,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 24,
                        backgroundColor: color.withOpacity(.12),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Flexible(
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Mdcnugroho ",
                                style: AppTextStyle.appBar.copyWith(
                                  fontWeight: FontWeight.w600,
                                  color: AppColor.neutral900,
                                ),
                              ),
                              TextSpan(
                                text:
                                    "comment in Sprint Review Period 01 in May 2022",
                                style: AppTextStyle.inputBasic.copyWith(
                                  fontWeight: FontWeight.normal,
                                  color: AppColor.neutral500,
                                ),
                              ),
                            ],
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          softWrap: true,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 48,
                    child: Text(
                      "Ijin telat ya lur, meh tuku teh neng Jantea sek",
                      maxLines: 2,
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      style: AppTextStyle.subtitle.copyWith(
                        fontSize: 16,
                        color: AppColor.neutral500,
                      ),
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "02/02/2023 ",
                          style: AppTextStyle.subtitle.copyWith(
                            color: AppColor.neutral500,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        TextSpan(
                          text: "*",
                          style: AppTextStyle.subtitle.copyWith(
                            color: AppColor.neutral500,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        TextSpan(
                          text: " 08:24 PM",
                          style: AppTextStyle.subtitle.copyWith(
                            color: AppColor.neutral500,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    softWrap: true,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ActivityInvite extends StatelessWidget {
  final Color color;
  const ActivityInvite({
    Key? key,
    this.color = Colors.black87,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24.0),
      child: SizedBox(
        height: 144,
        child: Row(
          children: [
            SizedBox(
              height: 144,
              width: 48,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      width: 1.5,
                      height: 96,
                      color: AppColor.neutral200,
                    ),
                  ),
                  CircleAvatar(
                    radius: 24,
                    backgroundColor: color.withOpacity(.12),
                    child: Icon(
                      UniconsLine.schedule,
                      color: color,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 16,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 24,
                        backgroundColor: color.withOpacity(.12),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Flexible(
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Mdcnugroho ",
                                style: AppTextStyle.appBar.copyWith(
                                  fontWeight: FontWeight.w600,
                                  color: AppColor.neutral900,
                                ),
                              ),
                              TextSpan(
                                text: "invite you to a project Nagaswara",
                                style: AppTextStyle.inputBasic.copyWith(
                                  fontWeight: FontWeight.normal,
                                  color: AppColor.neutral500,
                                ),
                              ),
                            ],
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          softWrap: true,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 48,
                    child: Row(
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColor.white,
                            padding: AppPadding.largeBtn,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                              side: BorderSide(
                                width: 1.5,
                                color: AppColor.neutral900,
                              ),
                            ),
                          ),
                          onPressed: () {},
                          child: Text(
                            "Decline",
                            style: AppTextStyle.btnLarge.copyWith(
                              color: AppColor.neutral900,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 16,
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
                            "Accept",
                            style: AppTextStyle.btnLarge,
                          ),
                        ),
                      ],
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "02/02/2023 ",
                          style: AppTextStyle.subtitle.copyWith(
                            color: AppColor.neutral500,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        TextSpan(
                          text: "*",
                          style: AppTextStyle.subtitle.copyWith(
                            color: AppColor.neutral500,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        TextSpan(
                          text: " 08:24 PM",
                          style: AppTextStyle.subtitle.copyWith(
                            color: AppColor.neutral500,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    softWrap: true,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
