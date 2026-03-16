import 'package:flutter/material.dart';
import 'package:zad/core/utils/app_colors.dart';
import 'package:zad/features/home_volunteer/presentation/view/widgets/volunteer_stat_item.dart';

class VolunteerStatsRow extends StatelessWidget {
  const VolunteerStatsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 12,
      children: [
        VolunteerStatItem(
          icon: Icons.local_dining_outlined,
          value: '200',
          color: AppColors.primary,
          label: 'وجبات أنقذتها',
        ),

        VolunteerStatItem(
          icon: Icons.wallet_giftcard,
          value: '2000',
          color: AppColors.secondary,
          label: 'نقاط التميز',
        ),
        VolunteerStatItem(
          icon: Icons.fitness_center_rounded,
          value: 'محترف',
          color: AppColors.darkText,
          label: 'مستوى التقييم',
        ),
      ],
    );
  }
}
