import 'package:beheer_task_manager/core/theme/theme.dart';
import 'package:beheer_task_manager/util/custom.widget/button_back.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:unicons/unicons.dart';

import '../controllers/profile_setting_controller.dart';

class ProfileSettingView extends GetView<ProfileSettingController> {
  const ProfileSettingView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Setting',
          style: AppTextStyle.appBar,
        ),
        centerTitle: true,
        leading: const ButtonBack(),
        actions: const [],
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: ListView(
                padding: AppPadding.list,
                children: [
                  _changeTheme(),
                  _listMenuSetting(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xffdd4a4a),
                  padding: AppPadding.largeBtn,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(UniconsLine.sign_out_alt),
                    const SizedBox(
                      width: 16,
                    ),
                    Text(
                      "Logout",
                      style: AppTextStyle.btnLarge.copyWith(
                        color: AppColor.neutral000,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Column _listMenuSetting() {
    return Column(
      children: List.generate(
        controller.listMenuSetting.length,
        (index) => _itemMenuSetting(controller.listMenuSetting[index]),
      ),
    );
  }

  Widget _itemMenuSetting(Map<String, dynamic> data) {
    return Column(
      children: [
        const SizedBox(
          height: 8,
        ),
        Divider(
          thickness: 1.5,
          color: AppColor.neutral200,
        ),
        ListTile(
          dense: true,
          contentPadding: const EdgeInsets.only(top: 8),
          title: Text(
            data['title'],
            style: TextStyle(
              color: AppColor.neutral900,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
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
          trailing: data['trailing'],
        ),
      ],
    );
  }

  Widget _changeTheme() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: AppColor.neutral900,
          width: 1.5,
        ),
      ),
      child: Obx(
        () => Row(
          children: [
            Expanded(
              child: InkWell(
                onTap: () => controller.changeTheme(),
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeInOut,
                  height: 60 - 8,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: controller.isLight.isTrue
                        ? AppColor.neutral900
                        : AppColor.white,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        UniconsLine.sun,
                        color: controller.isLight.isFalse
                            ? AppColor.neutral900
                            : AppColor.white,
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      Text(
                        "Light",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: controller.isLight.isFalse
                              ? AppColor.neutral900
                              : AppColor.white,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: () => controller.changeTheme(),
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeInOut,
                  height: 60 - 8,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: controller.isLight.isFalse
                        ? AppColor.neutral900
                        : AppColor.white,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        UniconsLine.moon,
                        color: controller.isLight.isTrue
                            ? AppColor.neutral900
                            : AppColor.white,
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      Text(
                        "Dark",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: controller.isLight.isTrue
                              ? AppColor.neutral900
                              : AppColor.white,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
