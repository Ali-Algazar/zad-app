import 'package:flutter/material.dart';
import 'package:zad/core/extensions/extensions.dart';
import 'package:zad/core/utils/app_colors.dart';
import 'package:zad/core/utils/app_text_styles.dart';
import 'package:zad/core/widgets/custom_button.dart';

class CustomDialog extends StatelessWidget {
  const CustomDialog({
    super.key,
    required this.title,
    required this.description,
    required this.buttonText,
    required this.onButtonTap,
    required this.icon,
    required this.iconColor,
  });

  final String title;
  final String description;
  final String buttonText;
  final VoidCallback onButtonTap;
  final IconData icon;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(
              radius: 40,
              backgroundColor: iconColor,
              child: Icon(icon, size: 40),
            ),
            32.h,
            Text(
              title,
              style: AppTextStyles.textStyle18.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            8.h,
            Text(
              description,
              textAlign: TextAlign.center,
              style: AppTextStyles.textStyle14r.copyWith(
                color: AppColors.grayText,
              ),
            ),
            32.h,
            CustomButton(
              onTap: onButtonTap,

              child: Text(
                buttonText,
                style: AppTextStyles.textStyle16.copyWith(
                  color: AppColors.background,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
