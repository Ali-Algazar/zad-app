import 'package:flutter/material.dart';
import 'package:zad/core/utils/app_colors.dart';
import 'package:zad/features/home_donor/presentation/view/widgets/header/home_donor_app_bar.dart';
import 'package:zad/features/home_donor/presentation/view/widgets/header/meals_saved_card.dart';
import 'package:zad/features/home_donor/presentation/view/widgets/header/stats_card.dart';

class HomeDonorHeader extends StatelessWidget {
  const HomeDonorHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,

        border: Border(bottom: BorderSide(color: AppColors.gray, width: 1)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        spacing: 16,
        children: [
          HomeDonorAppBar(),
          Row(spacing: 16, children: [StatsCard(), MealsSavedCard()]),
        ],
      ),
    );
  }
}
