import 'package:flutter/material.dart';
import 'package:zad/core/utils/app_colors.dart';
import 'package:zad/core/utils/app_text_styles.dart';
import 'package:zad/generated/l10n.dart';

class LogoutCancelButton extends StatelessWidget {
  const LogoutCancelButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context).pop(),

      child: Container(
        height: 46,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: AppColors.secondary),
        ),
        child: Center(
          child: Text(
            S.of(context).cancel,
            style: AppTextStyles.textStyle16.copyWith(
              color: AppColors.secondary,
            ),
          ),
        ),
      ),
    );
  }
}
