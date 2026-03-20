import 'package:flutter/material.dart';
import 'package:zad/core/extensions/extensions.dart';
import 'package:zad/core/utils/app_text_styles.dart';
import 'package:zad/features/home_donor/data/model/dashboard_model.dart';
import 'package:zad/generated/l10n.dart';

class StatsCard extends StatelessWidget {
  const StatsCard({super.key, required this.kgDonated});
  final KgDonated kgDonated;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: ShapeDecoration(
          gradient: LinearGradient(
            begin: Alignment(0.50, 0.00),
            end: Alignment(0.50, 1.00),
            colors: [const Color(0xFF006D5B), const Color(0xFF004D42)],
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        child: Column(
          spacing: 4,
          children: [
            Text(
              S.of(context).totalDonations,
              style: AppTextStyles.textStyle14r.copyWith(
                color: Colors.white.withValues(alpha: 0.9),
              ),
            ),
            Text(
              '${kgDonated.total} ${S.of(context).kg}',
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
                  '${kgDonated.growthPercent} ${S.of(context).thisMonth} ',
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
