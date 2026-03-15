import 'package:flutter/material.dart';
import 'package:zad/core/extensions/extensions.dart';
import 'package:zad/core/utils/app_colors.dart';
import 'package:zad/core/utils/app_text_styles.dart';

class StatusContainer extends StatelessWidget {
  const StatusContainer({
    super.key,
    required this.isActive,
    required this.titel,
    required this.onTap,
  });
  final bool isActive;
  final String titel;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Container(
          padding: 10.all,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: isActive ? AppColors.primary : AppColors.gray,
          ),
          child: Center(
            child: Text(
              titel,
              style: AppTextStyles.textStyle14Bold.copyWith(
                color: isActive ? AppColors.error : AppColors.darkText,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
