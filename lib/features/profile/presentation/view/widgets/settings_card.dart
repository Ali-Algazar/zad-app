import 'package:flutter/material.dart';
import 'package:zad/core/utils/app_colors.dart';
import 'package:zad/core/widgets/custom_container.dart';
import 'package:zad/features/profile/presentation/view/widgets/setting_item.dart';

class SettingsCard extends StatelessWidget {
  const SettingsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      child: Column(
        spacing: 8,
        children: [
          SettingItem(
            bg: Color(0xffDBEAFE),
            icon: Icons.person_outline_rounded,
            iconColor: Color(0xff155DFC),
            onTap: () {},
            titel: 'معلومات الحساب',
          ),
          SettingItem(
            bg: AppColors.success,
            icon: Icons.location_on_outlined,
            iconColor: Color(0xff00A63E),
            onTap: () {},
            titel: 'عناوين الاستلام',
          ),
          SettingItem(
            bg: AppColors.gray,
            icon: Icons.settings,
            iconColor: AppColors.darkText,
            onTap: () {},
            titel: 'الإعدادات',
          ),
          SettingItem(
            bg: Color(0xffF3E8FF),
            icon: Icons.privacy_tip_outlined,
            iconColor: Color(0xff9810FA),
            onTap: () {},
            titel: 'الخصوصية والأمان',
          ),
          SettingItem(
            bg: Color(0xffFEF3C6),
            icon: Icons.info_outline_rounded,
            iconColor: Color(0xffE17100),
            onTap: () {},
            titel: 'المساعدة والدعم',
          ),
          SettingItem(
            bg: Color(0xffE0E7FF),
            icon: Icons.article_outlined,
            iconColor: Color(0xff4F39F6),
            onTap: () {},
            titel: 'الشروط والأحكام',
            isEnd: true,
          ),
        ],
      ),
    );
  }
}
