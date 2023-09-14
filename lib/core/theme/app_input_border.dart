import 'package:beheer_task_manager/core/theme/theme.dart';
import 'package:flutter/material.dart';

class AppInputBorder {
  /// named `basic` of type `InputBorder`.
  ///
  ///Recommend
  ///
  ///`font 16 px regular AppColor.neutral200`
  static InputBorder basic = UnderlineInputBorder(
    borderSide: BorderSide(
      color: AppColor.neutral200,
      width: 2,
    ),
  );

  /// named `type` of type `InputBorder`.
  ///
  ///Recommend
  ///
  ///`font 16 px semibold AppColor.neutral900`
  static InputBorder type = UnderlineInputBorder(
    borderSide: BorderSide(
      color: AppColor.neutral900,
      width: 2,
    ),
  );

  /// named `type` of type `InputBorder`.
  ///
  ///Recommend
  ///
  ///`font 16 px semibold AppColor.neutral900`
  static InputBorder fill = UnderlineInputBorder(
    borderSide: BorderSide(
      color: AppColor.neutral200,
      width: 2,
    ),
  );

  /// named `type` of type `InputBorder`.
  ///
  ///Recommend
  ///
  ///`font 16 px semibold Colors.red.shade800`
  static InputBorder error = UnderlineInputBorder(
    borderSide: BorderSide(
      color: Colors.red.shade800,
      width: 2,
    ),
  );
}
