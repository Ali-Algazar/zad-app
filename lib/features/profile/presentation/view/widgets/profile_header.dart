import 'package:flutter/material.dart';
import 'package:zad/core/constants.dart';
import 'package:zad/core/extensions/extensions.dart';
import 'package:zad/core/utils/app_colors.dart';
import 'package:zad/core/utils/app_text_styles.dart';
import 'package:zad/features/profile/presentation/view/widgets/profile_info_card.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: Constants.khorizontalPadding.all,
      decoration: BoxDecoration(color: AppColors.primary),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          12.h,
          Text(
            'حسابي',
            style: AppTextStyles.textStyle24.copyWith(
              color: AppColors.error,
              fontWeight: FontWeight.bold,
            ),
          ),
          16.h,
          ProfileInfoCard(),
        ],
      ),
    );
  }
}
