import 'package:flutter/material.dart';
import 'package:zad/core/extensions/extensions.dart';
import 'package:zad/core/utils/app_text_styles.dart';

class AuthHeader extends StatelessWidget {
  const AuthHeader({super.key, required this.title, required this.subtitle});
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset('assets/image/logo.png'),
        15.h,
        Text(title, style: AppTextStyles.textStyle32),
        Text(
          subtitle,
          style: AppTextStyles.textStyle16,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
