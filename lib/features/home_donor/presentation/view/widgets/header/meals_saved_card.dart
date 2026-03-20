import 'package:flutter/material.dart';
import 'package:zad/core/extensions/extensions.dart';
import 'package:zad/core/utils/app_text_styles.dart';
import 'package:zad/features/home_donor/data/model/dashboard_model.dart';
import 'package:zad/generated/l10n.dart';

class MealsSavedCard extends StatelessWidget {
  const MealsSavedCard({super.key, required this.mealsSaved});
  final MealsSaved mealsSaved;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: ShapeDecoration(
          gradient: LinearGradient(
            begin: Alignment(0.50, 0.00),
            end: Alignment(0.50, 1.00),
            colors: [const Color(0xFFE87B35), const Color(0xFFD46A25)],
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        child: Column(
          spacing: 4,
          children: [
            Text(
              S.of(context).mealsSaved,
              style: AppTextStyles.textStyle14r.copyWith(
                color: Colors.white.withValues(alpha: 0.9),
              ),
            ),
            Text(
              '${mealsSaved.total} ${S.of(context).meal}',
              style: AppTextStyles.textStyle24.copyWith(color: Colors.white),
            ),
            Row(
              children: [
                Icon(
                  Icons.arrow_outward_outlined,
                  color: Colors.white.withValues(alpha: 0.9),
                ),
                4.w,
                Text(
                  '${mealsSaved.growthPercent} ${S.of(context).thisMonth} ',
                  style: AppTextStyles.textStyle14r.copyWith(
                    color: Colors.white.withValues(alpha: 0.9),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
