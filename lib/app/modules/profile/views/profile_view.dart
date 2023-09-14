import 'package:beheer_task_manager/app/modules/app.bottom.nav/views/app_bottom_nav_view.dart';
import 'package:beheer_task_manager/app/modules/app.drawer/views/app_drawer_view.dart';
import 'package:beheer_task_manager/app/routes/app_pages.dart';
import 'package:beheer_task_manager/core/theme/theme.dart';
import 'package:beheer_task_manager/util/custom.widget/floating_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:unicons/unicons.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState> scaffold = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: scaffold,
      drawer: const AppDrawerView(),
      bottomNavigationBar: const AppBottomNavView(),
      floatingActionButton: AppFloatingButton.floatingButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: AppPadding.list,
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      scaffold.currentState!.openDrawer();
                    },
                    child: const Icon(
                      UniconsLine.bars,
                    ),
                  ),
                  const SizedBox(
                    width: 24,
                  ),
                  Expanded(
                    child: Text(
                      "Profile",
                      style: AppTextStyle.heading.copyWith(
                        fontSize: 16,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: AppColor.neutral200,
                          width: 1.5,
                        ),
                      ),
                      child: const Icon(
                        UniconsLine.bell,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              color: AppColor.neutral200,
              thickness: 1,
            ),
            Padding(
              padding: AppPadding.list,
              child: Container(
                padding: const EdgeInsets.all(16),
                height: 270,
                decoration: BoxDecoration(
                  color: AppColor.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    CircleAvatar(
                      radius: 50,
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
                      onPressed: () => Get.toNamed(Routes.PROFILE_EDIT),
                      child: Text(
                        "Edit Profile",
                        style: AppTextStyle.btnLarge,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: AppColor.white,
                child: ListView(
                  padding: AppPadding.list,
                  children: List.generate(
                    controller.profileMenu.length,
                    (index) => _cardProfileMenu(controller.profileMenu[index]),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _cardProfileMenu(Map<String, dynamic> data) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(vertical: 8),
      leading: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: AppColor.neutral200,
        ),
        child: Icon(
          data['icon'],
          color: AppColor.neutral900,
        ),
      ),
      onTap: data['onTap'],
      title: Text(
        data['title'],
        style: TextStyle(
          color: AppColor.neutral900,
          fontWeight: FontWeight.w600,
          fontSize: 16,
        ),
      ),
      trailing: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: AppColor.neutral200,
        ),
        child: Icon(
          UniconsLine.angle_right,
          color: AppColor.neutral900,
        ),
      ),
    );
  }
}
