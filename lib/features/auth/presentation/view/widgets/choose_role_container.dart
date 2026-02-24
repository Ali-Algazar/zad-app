import 'package:flutter/material.dart';
import 'package:zad/core/utils/app_colors.dart';
import 'package:zad/core/utils/app_text_styles.dart';

class ChooseRoleContainer extends StatelessWidget {
  const ChooseRoleContainer({
    super.key,
    required this.isAc,
    required this.titel,
  });

  final bool isAc;
  final String titel;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 48,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          width: isAc ? 2 : 1,
          color: isAc ? AppColors.primary : AppColors.grayText,
        ),
      ),
      child: Center(
        child: Text(
          titel,
          style: AppTextStyles.textStyle14r.copyWith(
            color: isAc ? AppColors.primary : AppColors.grayText,
          ),
        ),
      ),
    );
  }
}
