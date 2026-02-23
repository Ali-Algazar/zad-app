import 'package:flutter/material.dart';
import 'package:zad/core/constants.dart';
import 'package:zad/core/utils/app_colors.dart';

class AppTheme {
  static final lightTheme = ThemeData(
    useMaterial3: true,

    fontFamily: Constants.kfontFamily,
    scaffoldBackgroundColor: AppColors.background,
    // Define the color scheme
    colorScheme: ColorScheme.light(
      primary: AppColors.primary,
      secondary: AppColors.success,
    ),

    // Text form field theme
    inputDecorationTheme: InputDecorationTheme(
      filled: true, // Enable filled background
      fillColor: AppColors.background, // Background color for text fields
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(
          Constants.ktextFieldRadius.toDouble(),
        ),
        borderSide: BorderSide(color: AppColors.info, width: 1),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(
          Constants.ktextFieldRadius.toDouble(),
        ),
        borderSide: BorderSide(color: AppColors.info, width: 1),
      ),

      // Padding inside the text fields
      contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
    ),
  );
}
