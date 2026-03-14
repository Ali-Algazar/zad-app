import 'package:flutter/material.dart';
import 'package:zad/core/constants.dart';
import 'package:zad/core/extensions/extensions.dart';
import 'package:zad/core/utils/app_colors.dart';
import 'package:zad/core/utils/app_text_styles.dart';
import 'package:zad/core/widgets/custom_container.dart';
import 'package:zad/features/profile/presentation/view/widgets/logout_confirmation_dialog.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
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
                Container(
                  width: double.infinity,
                  padding: 12.all,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        spacing: 16,
                        children: [
                          CircleAvatar(
                            radius: 40,
                            child: Text('م', style: AppTextStyles.textStyle32),
                          ),
                          Text('مطعم البرنس', style: AppTextStyles.textStyle24),
                        ],
                      ),
                      8.h,
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          spacing: 8,
                          children: [
                            Row(
                              spacing: 12,
                              children: [
                                Icon(
                                  Icons.phone_android_outlined,
                                  color: AppColors.grayText,
                                ),
                                Text(
                                  '01234567890',
                                  style: AppTextStyles.textStyle14Bold.copyWith(
                                    color: AppColors.grayText,
                                  ),
                                ),
                              ],
                            ),

                            Row(
                              spacing: 12,
                              children: [
                                Icon(
                                  Icons.email_outlined,
                                  color: AppColors.grayText,
                                ),
                                Text(
                                  'info@albarns.com',
                                  style: AppTextStyles.textStyle14Bold.copyWith(
                                    color: AppColors.grayText,
                                  ),
                                ),
                              ],
                            ),

                            Row(
                              spacing: 12,
                              children: [
                                Icon(
                                  Icons.location_on_outlined,
                                  color: AppColors.grayText,
                                ),
                                Text(
                                  'القاهرة، مصر',
                                  style: AppTextStyles.textStyle14Bold.copyWith(
                                    color: AppColors.grayText,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          16.h,
          Padding(
            padding: Constants.khorizontalPadding.horizontal,
            child: Column(
              children: [
                CustomContainer(
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
                          Column(
                            children: [
                              Text(
                                '345',
                                style: AppTextStyles.textStyle24.copyWith(
                                  color: AppColors.primary,
                                ),
                              ),
                              4.h,
                              Text('وجبات', style: AppTextStyles.caption),
                            ],
                          ),

                          Column(
                            children: [
                              Text(
                                '130',
                                style: AppTextStyles.textStyle24.copyWith(
                                  color: AppColors.secondary,
                                ),
                              ),
                              4.h,
                              Text('كجم', style: AppTextStyles.caption),
                            ],
                          ),

                          Column(
                            children: [
                              Text(
                                '23',
                                style: AppTextStyles.textStyle24.copyWith(
                                  color: Color(0xFF155DFC),
                                ),
                              ),
                              4.h,
                              Text('تبرع', style: AppTextStyles.caption),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                16.h,
                CustomContainer(
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
                ),
                16.h,
                TextButton(
                  onPressed: () {
                    logoutDialog(context);
                  },
                  child: Text(
                    'تسجيل الخروج',
                    style: AppTextStyles.textStyle20.copyWith(
                      color: Colors.red,
                    ),
                  ),
                ),
                Constants.kbottomPadding.h,
              ],
            ),
          ),
        ],
      ),
    );
  }

  Future<dynamic> logoutDialog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return LogoutConfirmationDialog();
      },
    );
  }
}

class SettingItem extends StatelessWidget {
  const SettingItem({
    super.key,
    required this.bg,
    required this.iconColor,
    required this.icon,
    required this.titel,
    required this.onTap,
    this.isEnd = false,
  });
  final Color bg;
  final Color iconColor;
  final IconData icon;
  final String titel;
  final VoidCallback onTap;
  final bool isEnd;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: bg,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(icon, color: iconColor),
            ),
            Spacer(),
            Text(titel, style: AppTextStyles.textStyle14Bold),
            Spacer(),
            IconButton(
              onPressed: onTap,
              icon: Icon(Icons.arrow_forward_ios, size: 20),
            ),
          ],
        ),
        isEnd ? SizedBox() : Divider(color: AppColors.gray),
      ],
    );
  }
}
