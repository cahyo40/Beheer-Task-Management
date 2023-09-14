import 'package:flutter/material.dart';

class AppShadow {
  static BoxShadow small = BoxShadow(
    blurRadius: 20,
    color: const Color(0xff191d2b).withOpacity(.009),
    offset: const Offset(0, 5),
  );
  static BoxShadow large = BoxShadow(
    blurRadius: 32,
    color: const Color(0xff191d2b).withOpacity(.15),
    offset: const Offset(4, 16),
  );
  static BoxShadow medium = BoxShadow(
    blurRadius: 30,
    color: const Color(0xff191d2b).withOpacity(.025),
    offset: const Offset(0, 12),
  );
}
