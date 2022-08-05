// ignore_for_file: unused_field

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

abstract class AppColors {
  static const primary1 = Color.fromARGB(255, 228, 165, 69);
  static const secondary = Color.fromARGB(255, 26, 93, 164);
  static const accent = Color(0xFFD6755B);
  static const textDark = Color.fromARGB(255, 24, 25, 26);
  static const textLigth = Color(0xFFF5F5F5);
  static const textFaded = Color.fromARGB(255, 194, 219, 209);
  static const iconLight = Color(0xFFB1B4C0);
  static const iconDark = Color(0xFFB1B3C1);
  static const textHighlight = secondary;
  static const cardLight = Color.fromARGB(255, 234, 236, 238);
  static const cardDark = Color.fromARGB(255, 189, 198, 201);
  static const progressIndicatorDark = Color(0xFFF9FAFE);
  static const progressIndicatorLight = Color(0xFF303334);
  static const scaffoldBackgroundColor = Color(0xFFF1F1F1);
}

abstract class _LightColors {
  static const background = Colors.white;
  static const card = AppColors.cardLight;
}

abstract class _DarkColors {
  static const background = Color(0xFF1B1E1F);
  static const card = AppColors.cardDark;
}

/// Reference to the application theme.
abstract class AppTheme {
  static const accentColor = Color.fromARGB(255, 71, 182, 135);
  static final visualDensity = VisualDensity.adaptivePlatformDensity;

  /// Light theme and its settings.
  static ThemeData light() => ThemeData(
        primaryColor: Colors.white,
        dividerColor: Colors.grey[300],
        bottomAppBarColor: AppColors.primary1,
        hoverColor: AppColors.primary1,
        brightness: Brightness.light,
        visualDensity: visualDensity,
        textTheme: GoogleFonts.elMessiriTextTheme()
            .apply(bodyColor: const Color.fromARGB(255, 11, 12, 12)),
        backgroundColor: _LightColors.background,
        progressIndicatorTheme: const ProgressIndicatorThemeData(
          color: Color(0xFF114B5F),
        ),
        scaffoldBackgroundColor: AppColors.scaffoldBackgroundColor,
        cardColor: const Color.fromARGB(255, 253, 254, 255),
        appBarTheme: const AppBarTheme(
            foregroundColor: Color(0x003a3b3c),
            backgroundColor: AppColors.scaffoldBackgroundColor),
        primaryTextTheme: const TextTheme(
          headline6: TextStyle(color: AppColors.textDark),
        ),
        iconTheme: const IconThemeData(color: AppColors.primary1),
        colorScheme: const ColorScheme.light().copyWith(secondary: accentColor),
      );

  /// Dark theme and its settings.
  static ThemeData dark() => ThemeData(
        primaryColor: Colors.black,
        dividerColor: const Color.fromARGB(222, 43, 44, 44),
        brightness: Brightness.dark,
        hoverColor: const Color.fromARGB(204, 0, 0, 0),
        bottomAppBarColor: const Color.fromARGB(146, 19, 20, 21),
        visualDensity: visualDensity,
        textTheme: GoogleFonts.elMessiriTextTheme()
            .apply(bodyColor: AppColors.textLigth),
        backgroundColor: _DarkColors.background,
        progressIndicatorTheme: const ProgressIndicatorThemeData(
          color: AppColors.progressIndicatorDark,
        ),
        scaffoldBackgroundColor: const Color.fromARGB(146, 36, 38, 40),
        cardColor: const Color.fromARGB(255, 40, 42, 43),
        appBarTheme: const AppBarTheme(
            //foregroundColor: AppColors.textLigth,
            // backgroundColor: Color(0x003a3b3c),
            ),
        primaryTextTheme: const TextTheme(
          headline6: TextStyle(color: AppColors.textLigth),
        ),
        iconTheme:
            const IconThemeData(color: Color.fromARGB(231, 255, 255, 255)),
        colorScheme: const ColorScheme.dark().copyWith(secondary: accentColor),
      );
  TextTheme textThemes() {
    return TextTheme(
      headline1: TextStyle(
        color: AppColors.textDark,
        fontSize: 26.sp,
        fontWeight: FontWeight.w700,
      ),
      headline2: TextStyle(
        color: AppColors.textLigth,
        fontSize: 22.sp,
        fontWeight: FontWeight.w700,
      ),
      headline3: TextStyle(
        color: AppColors.textLigth,
        fontSize: 18.sp,
        fontWeight: FontWeight.w700,
      ),
      headline4: TextStyle(
        color: AppColors.textLigth,
        fontSize: 16.sp,
        fontWeight: FontWeight.w700,
      ),
      headline5: TextStyle(
        color: AppColors.textLigth,
        fontSize: 14.sp,
        fontWeight: FontWeight.w500,
      ),
      headline6: TextStyle(
        color: AppColors.textLigth,
        fontSize: 14.sp,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.8,
      ),
      bodyText1: TextStyle(
        color: AppColors.textLigth,
        fontSize: 12.sp,
        fontWeight: FontWeight.w300,
        letterSpacing: 0.8,
      ),
      bodyText2: TextStyle(
        color: AppColors.textLigth,
        fontSize: 10.sp,
        fontWeight: FontWeight.w300,
        letterSpacing: 0.8,
      ),
    );
  }
}
