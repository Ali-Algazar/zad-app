import 'package:flutter/material.dart';
import 'package:zad/core/utils/app_colors.dart';
import 'package:zad/core/utils/app_text_styles.dart';
import 'package:zad/generated/l10n.dart';

class WelcomeHeader extends StatelessWidget {
  const WelcomeHeader({super.key, required this.name});
  final String name;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          S.of(context).hello,
          style: AppTextStyles.textStyle16.copyWith(color: AppColors.grayText),
        ),
        Text(name, style: AppTextStyles.textStyle24),
      ],
    );
  }
}
