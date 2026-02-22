import 'package:flutter/material.dart';

class AppColors {
  static const Color background = Color(0xFFF9F9F9);
  static const Color surface = Color(0xFFFFFFFF);

  static const Color grayText = Color(0xFF757575);
  static const Color darkText = Color(0xFF1A1A1A);

  static const Color primary = Color(0xFF0A6A56);
  static const Color secondary = Color(0xFFE87A3E);

  static const Color error = Color(0xFFFFEBEE);
  static const Color info = Color(0xFFE3F2FD);
  static const Color warning = Color(0xFFFFF8E1);
  static const Color success = Color(0xFFE8F5E9);
  static const LinearGradient primaryGradient = LinearGradient(
    colors: [Color(0xFF006D5B), Color(0xFF004D42)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
}
