import 'package:beheer_task_manager/core/constants/assets.dart';
import 'package:beheer_task_manager/core/theme/theme.dart';
import 'package:beheer_task_manager/util/custom.widget/button_back.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/profile_premium_plan_controller.dart';

class ProfilePremiumPlanView extends GetView<ProfilePremiumPlanController> {
  const ProfilePremiumPlanView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Premium Plan',
          style: AppTextStyle.appBar,
        ),
        centerTitle: true,
        leading: const ButtonBack(),
        actions: const [],
      ),
      body: SafeArea(
        child: ListView(
          padding: AppPadding.list,
          children: [
            _bannerUpgrade(),
            _space(),
            _planDuration(),
            _space(),
            _facilityPremium(),
            _space(),
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
                "Start your 7-days trial",
                style: AppTextStyle.btnLarge.copyWith(
                  color: AppColor.neutral000,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  SizedBox _space() {
    return const SizedBox(
      height: 24,
    );
  }

  Widget _facilityPremium() {
    return Column(
      children: List.generate(
        controller.listItemFacility.length,
        (index) => ListTile(
          leading: Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: AppColor.neutral200,
            ),
            child: Icon(
              controller.listItemFacility[index]['icon'],
              color: AppColor.neutral900,
            ),
          ),
          title: Text(
            controller.listItemFacility[index]['title'],
            style: TextStyle(
              color: AppColor.neutral900,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          subtitle: Text(
            controller.listItemFacility[index]['subtitle'],
            style: TextStyle(
              color: AppColor.neutral500,
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
    );
  }

  Widget _planDuration() {
    return Row(
      children: [
        Expanded(
          child: Container(
            clipBehavior: Clip.hardEdge,
            height: 110,
            decoration: BoxDecoration(
              border: Border.all(
                color: AppColor.neutral900,
                width: 1.5,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              children: [
                Container(
                  height: 36,
                  decoration: BoxDecoration(
                    color: AppColor.neutral900,
                  ),
                  child: Center(
                    child: Text(
                      "Annually",
                      style: TextStyle(
                        color: AppColor.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 110 - 36 - 8,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "\$8 / month",
                          style: TextStyle(
                            color: AppColor.neutral900,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          "billed annualy",
                          style: TextStyle(
                            color: AppColor.neutral500,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          width: 16,
        ),
        Expanded(
          child: Container(
            clipBehavior: Clip.hardEdge,
            height: 110,
            decoration: BoxDecoration(
              border: Border.all(
                color: AppColor.neutral500,
                width: 1.5,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              children: [
                Container(
                  height: 36,
                  decoration: BoxDecoration(
                    color: AppColor.neutral500,
                  ),
                  child: Center(
                    child: Text(
                      "Monthly",
                      style: TextStyle(
                        color: AppColor.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 110 - 36 - 8,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "\$12 / month",
                          style: TextStyle(
                            color: AppColor.neutral500,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          "billed annualy",
                          style: TextStyle(
                            color: AppColor.neutral500,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _bannerUpgrade() {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColor.neutral200,
          width: 1.5,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      height: 160,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            AssetsImg.logo,
            height: 32,
            width: 32,
          ),
          Text(
            'Upgrade to Premium Plan',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              color: AppColor.neutral900,
              fontSize: 16,
            ),
          ),
          Text(
            'Get the premiuem feature and get the\nunlimited access to the app.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.w400,
              color: AppColor.neutral500,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
