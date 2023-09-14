import 'package:beheer_task_manager/app/modules/project.detail/views/dialog_new_task_view.dart';
import 'package:beheer_task_manager/core/constants/assets.dart';
import 'package:beheer_task_manager/core/theme/theme.dart';
import 'package:beheer_task_manager/util/custom.widget/button_back.dart';
import 'package:beheer_task_manager/util/custom.widget/dialog.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:readmore/readmore.dart';
import 'package:unicons/unicons.dart';

import '../controllers/project_detail_controller.dart';

class ProjectDetailView extends GetView<ProjectDetailController> {
  const ProjectDetailView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Detail Project',
          style: AppTextStyle.appBar,
        ),
        centerTitle: true,
        leading: const ButtonBack(),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              UniconsLine.search,
              color: AppColor.neutral900,
            ),
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
      body: SafeArea(
        child: ListView(
          children: [
            _header(),
            _information(),
            _progress(),
            _tasks(),
            _activity(),
            _addComment(),
          ],
        ),
      ),
    );
  }

  Widget _tasks() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Container(
        color: AppColor.white,
        padding: AppPadding.list,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Tasks",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: AppColor.neutral900,
                  ),
                ),
                InkWell(
                  onTap: () {
                    Get.bottomSheet(
                      const AppDialog(
                        title: "Add new task type",
                        child: DialogNewTaskView(),
                      ),
                    );
                  },
                  child: Row(
                    children: [
                      Icon(
                        UniconsLine.plus,
                        size: 24,
                        color: AppColor.neutral900,
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Text(
                        "Add new",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: AppColor.neutral900,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const ClampingScrollPhysics(),
              itemCount: 3,
              itemBuilder: (_, index) {
                return _listTask(index == 0 ? true : false);
              },
            )
          ],
        ),
      ),
    );
  }

  Widget _listTask(bool value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        padding: const EdgeInsets.all(16),
        height: 76,
        decoration: BoxDecoration(
          color: AppColor.white,
          boxShadow: [
            value ? AppShadow.medium : AppShadow.small,
          ],
          border: Border.all(
            color: value ? AppColor.white : AppColor.neutral200,
            width: 1,
          ),
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
              value: value,
              onChanged: (c) {},
              fillColor: value
                  ? MaterialStatePropertyAll<Color>(AppColor.green)
                  : MaterialStatePropertyAll<Color>(AppColor.white),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(2),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _activity() {
    return Container(
      color: AppColor.white,
      padding: AppPadding.list,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Activity",
            textAlign: TextAlign.start,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: AppColor.neutral900,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: const ClampingScrollPhysics(),
            itemCount: 2,
            itemBuilder: (_, index) {
              return _listActivity();
            },
          )
        ],
      ),
    );
  }

  Widget _listActivity() {
    return Padding(
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
                  Container(
                    decoration: BoxDecoration(
                      color: AppColor.neutral100,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Natoque risus odio morbi faucibus orci lorem mattis tempor, amet.",
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

  Widget _addComment() {
    return Column(
      children: [
        Container(
          color: AppColor.neutral200,
          width: double.infinity,
          height: 1.5,
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
    );
  }

  Widget _progress() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Container(
        padding: AppPadding.list,
        color: AppColor.white,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Progress",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: AppColor.neutral900,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    "50%",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: AppColor.neutral900,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 16,
              width: Get.size.width - (24 * 2),
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: 8,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: AppColor.neutral200,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      height: 8,
                      width: (Get.size.width - (24 * 3)) * 0.25,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: AppColor.pink,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _information() {
    return Container(
      color: AppColor.white,
      padding: const EdgeInsets.all(24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Wireframe E-Parking App",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
              color: AppColor.neutral900,
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          Row(
            children: [
              Icon(
                UniconsLine.schedule,
                size: 24,
                color: AppColor.neutral500,
              ),
              const SizedBox(
                width: 16,
              ),
              Text(
                "Monday, 25 Feb 2023",
                style: AppTextStyle.inputError.copyWith(
                  color: AppColor.neutral900,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 24,
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
                  3,
                  (index) => Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: (index == 3 - 1)
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
            height: 24,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                UniconsLine.file_alt,
                size: 24,
                color: AppColor.neutral500,
              ),
              const SizedBox(
                width: 16,
              ),
              Expanded(
                child: ReadMoreText(
                  'This is a mobile app project with oke oke only wireframe creation and a prototype of parking management lorem ipsum dolor kabeh gan penting sehat kabeh',
                  trimLines: 3,
                  colorClickableText: Colors.pink,
                  trimMode: TrimMode.Line,
                  trimCollapsedText: 'read more',
                  trimExpandedText: '...show less',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: AppColor.neutral900,
                  ),
                  moreStyle: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: AppColor.blue,
                  ),
                  lessStyle: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: AppColor.blue,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _header() {
    return SizedBox(
      height: 180,
      child: Stack(
        children: [
          Container(
            height: 160,
            color: AppColor.blue,
          ),
          Positioned.fill(
            left: 24,
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                padding: const EdgeInsets.fromLTRB(16, 10, 16, 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: AppColor.purple,
                ),
                child: Text(
                  "Flutter Dev",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: AppColor.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
