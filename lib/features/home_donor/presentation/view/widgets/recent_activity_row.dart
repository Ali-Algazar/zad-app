import 'package:flutter/material.dart';
import 'package:zad/core/utils/app_colors.dart';
import 'package:zad/core/utils/app_text_styles.dart';
import 'package:zad/generated/l10n.dart';

class RecentActivityRow extends StatelessWidget {
  const RecentActivityRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          S.of(context).recentActivity,
          style: AppTextStyles.textStyle18.copyWith(color: AppColors.darkText),
        ),
        InkWell(
          onTap: () {},
          child: Text(
            S.of(context).viewAll,
            style: AppTextStyles.textStyle14r.copyWith(
              color: AppColors.primary,
            ),
          ),
        ),
      ],
    );
  }
}
