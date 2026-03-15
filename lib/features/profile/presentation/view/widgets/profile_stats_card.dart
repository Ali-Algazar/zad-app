import 'package:flutter/material.dart';
import 'package:zad/core/extensions/extensions.dart';
import 'package:zad/core/utils/app_colors.dart';
import 'package:zad/core/utils/app_text_styles.dart';
import 'package:zad/core/widgets/custom_container.dart';
import 'package:zad/features/profile/presentation/view/widgets/profile_stat_item.dart';

class ProfileStatsCard extends StatelessWidget {
  const ProfileStatsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'إحصائياتي',
            style: AppTextStyles.textStyle18.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          12.h,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            spacing: 16,
            children: [
              ProfileStatItem(
                title: 'وجبات',
                color: AppColors.primary,
                value: '345',
              ),
              ProfileStatItem(
                title: 'كجم',
                color: AppColors.secondary,
                value: '130',
              ),
              ProfileStatItem(
                title: 'تبرع',
                color: Color(0xFF155DFC),
                value: '20',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
