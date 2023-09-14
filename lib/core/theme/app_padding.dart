import 'package:flutter/material.dart';

class AppPadding {
  AppPadding._();

  static EdgeInsets list = const EdgeInsets.all(24);

  /// The line `static EdgeInsets largeBtn = const EdgeInsets.symmetric(horizontal: 40, vertical: 16);`
  /// is defining a static variable named `largeBtn` of type `EdgeInsets`.
  ///
  /// recommend font 16 bold

  static EdgeInsets largeBtn = const EdgeInsets.symmetric(
    horizontal: 40,
    vertical: 16,
  );

  /// The line `static EdgeInsets mediumBtn = const EdgeInsets.symmetric(horizontal: 32, vertical: 14);`
  /// is defining a static variable named `mediumBtn` of type `EdgeInsets`.
  ///
  /// recommend font 14 bold
  static EdgeInsets mediumBtn = const EdgeInsets.symmetric(
    horizontal: 32,
    vertical: 14,
  );

  /// The line `static EdgeInsets smallBtn = const EdgeInsets.symmetric(horizontal: 24, vertical: 12);`
  /// is defining a static variable named `smallBtn` of type `EdgeInsets`.
  ///
  /// recommend font 12 bold
  static EdgeInsets smallBtn = const EdgeInsets.symmetric(
    horizontal: 24,
    vertical: 12,
  );
}
