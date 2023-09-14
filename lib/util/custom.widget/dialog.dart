import 'package:beheer_task_manager/core/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:unicons/unicons.dart';

class AppDialog extends StatelessWidget {
  final String title;
  final Widget child;
  const AppDialog({
    Key? key,
    required this.title,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
        color: AppColor.white,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          AppBar(
            centerTitle: true,
            title: Text(
              title,
              style: AppTextStyle.subtitle.copyWith(
                color: AppColor.neutral900,
                fontWeight: FontWeight.bold,
              ),
            ),
            actions: [
              IconButton(
                iconSize: 24,
                onPressed: Get.back,
                icon: const Icon(
                  UniconsLine.times,
                ),
              ),
            ],
          ),
          Divider(
            thickness: .5,
            color: AppColor.neutral500,
          ),
          Flexible(
            child: Padding(
              padding: AppPadding.list,
              child: child,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
