import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:zad/core/extensions/extensions.dart';
import 'package:zad/core/utils/app_colors.dart';
import 'package:zad/core/utils/app_text_styles.dart';
import 'package:zad/features/home_donor/presentation/view/widgets/header/notifications_button.dart';

class HomeVolunteerHeader extends StatelessWidget {
  const HomeVolunteerHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(color: Colors.white),
      child: Row(
        children: [
          Image.asset('assets/image/logo.png', width: 55),
          12.w,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('مرحباً بك،', style: AppTextStyles.caption),
              Text(
                'بطل زاد',
                style: AppTextStyles.textStyle18.copyWith(
                  color: AppColors.primary,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Spacer(),
          NotificationsButon(),
        ],
      ),
    );
  }
}
