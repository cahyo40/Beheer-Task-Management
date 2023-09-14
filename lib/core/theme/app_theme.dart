import 'package:beheer_task_manager/core/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static ThemeData light(BuildContext context) => ThemeData(
        colorScheme: Theme.of(context).colorScheme.copyWith(
              background: AppColor.background100,
              brightness: Brightness.light,
            ),
        textTheme: GoogleFonts.urbanistTextTheme(),
        appBarTheme: AppBarTheme(
          backgroundColor: AppColor.neutral000,
          actionsIconTheme: IconThemeData(
            color: AppColor.neutral900,
            size: 24,
          ),
          elevation: 0,
        ),
        listTileTheme: const ListTileThemeData(
          contentPadding: EdgeInsets.zero,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            elevation: 0,
          ),
        ),
      );

  static ThemeData dark(BuildContext context) => ThemeData(
        colorScheme: Theme.of(context).colorScheme.copyWith(
              brightness: Brightness.dark,
              background: AppColor.background500,
            ),
        textTheme: GoogleFonts.urbanistTextTheme(),
        appBarTheme: AppBarTheme(
          backgroundColor: AppColor.neutral900,
          actionsIconTheme: IconThemeData(
            color: AppColor.neutral000,
            size: 24,
          ),
        ),
        listTileTheme: const ListTileThemeData(
          contentPadding: EdgeInsets.zero,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            elevation: 0,
          ),
        ),
      );
}
