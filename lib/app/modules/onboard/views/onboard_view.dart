import 'package:beheer_task_manager/core/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/onboard_controller.dart';

class OnboardView extends GetView<OnboardController> {
  const OnboardView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView.builder(
          physics: const NeverScrollableScrollPhysics(),
          itemCount: controller.content.length,
          itemBuilder: (_, index) {
            return Column(
              children: [
                Obx(
                  () => SizedBox(
                    height: 424,
                    child: Image.asset(
                      controller.content[controller.screen.value]['image'],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: AppPadding.list,
                    decoration: BoxDecoration(
                      color: AppColor.white,
                    ),
                    child: Obx(
                      () => Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: List.generate(
                              controller.content.length,
                              (index) => Padding(
                                padding: const EdgeInsets.fromLTRB(4, 0, 4, 0),
                                child: AnimatedContainer(
                                  height: 8,
                                  width: 8,
                                  duration: const Duration(
                                    milliseconds: 500,
                                  ),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: controller.isScreen(index)
                                        ? AppColor.neutral900
                                        : AppColor.neutral200,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 24,
                          ),
                          Text(
                            controller.content[controller.screen.value]
                                ['title'],
                            textAlign: TextAlign.center,
                            style: AppTextStyle.heading,
                          ),
                          const SizedBox(
                            height: 24,
                          ),
                          Text(
                            controller.content[controller.screen.value]
                                ['subtitle'],
                            textAlign: TextAlign.center,
                            style: AppTextStyle.subtitle,
                          ),
                          const SizedBox(
                            height: 48,
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppColor.neutral900,
                              padding: AppPadding.largeBtn,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            onPressed: controller.nextScreen,
                            child: Text(
                              controller.isLast() ? "Login" : "Next",
                              style: AppTextStyle.btnLarge,
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
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
                            onPressed: controller.getStarted,
                            child: Text(
                              controller.isLast() ? "Register" : "Get Started",
                              style: AppTextStyle.btnLarge.copyWith(
                                color: AppColor.neutral900,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
