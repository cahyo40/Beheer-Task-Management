// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SvgLogoIcon extends StatelessWidget {
  final String icon;

  final double size;
  const SvgLogoIcon({
    Key? key,
    required this.icon,
    this.size = 24,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size,
      width: size,
      child: SvgPicture.asset(
        icon,
        fit: BoxFit.fill,
      ),
    );
  }
}
