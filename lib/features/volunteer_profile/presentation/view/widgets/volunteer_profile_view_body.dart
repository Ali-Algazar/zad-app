import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zad/core/constants.dart';
import 'package:zad/core/extensions/extensions.dart';
import 'package:zad/core/utils/app_colors.dart';
import 'package:zad/core/utils/app_text_styles.dart';

class VolunteerProfileViewBody extends StatelessWidget {
  const VolunteerProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: 16.all,
            decoration: BoxDecoration(color: AppColors.primary),
            child: Column(
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.arrow_back_ios_new, color: Colors.white),
                    ),
                    Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.settings, color: Colors.white),
                    ),
                  ],
                ),
                8.h,
                Container(
                  height: 100,

                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 3),
                    color: AppColors.secondary,
                  ),
                  child: Center(
                    child: Text(
                      'أ',
                      style: AppTextStyles.textStyle32.copyWith(
                        color: AppColors.error,
                        fontSize: 40,
                      ),
                    ),
                  ),
                ),
                Text(
                  'أحمد حسن',
                  style: AppTextStyles.textStyle32.copyWith(
                    color: Colors.white,
                  ),
                ),
                8.h,
                Container(
                  padding: 12.all,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Color(0xffFFFFFF).withValues(alpha: 0.2),
                  ),
                  child: Row(
                    spacing: 4,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.run_circle_outlined, color: Color(0xffFFDF20)),
                      Text(
                        'متطوع نشط',
                        style: AppTextStyles.textStyle14Bold.copyWith(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          26.h,
          Padding(
            padding: Constants.khorizontalPadding.horizontal,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  padding: 12.all,

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.white,
                    border: Border.all(width: 4, color: AppColors.gray),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xFF000000).withValues(alpha: 0.04),
                        spreadRadius: 2,
                        blurRadius: 4,
                        offset: const Offset(0, 0),
                      ),
                      BoxShadow(
                        color: Color(0xFF000000).withValues(alpha: 0.04),
                        spreadRadius: 2,
                        blurRadius: 8,
                        offset: const Offset(0, 6),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            spacing: 8,
                            children: [
                              Icon(
                                Icons.local_dining_outlined,
                                color: AppColors.primary,
                              ),
                              Text(
                                'وجبات تم توصيلها',
                                style: AppTextStyles.caption,
                              ),
                              Text('45', style: AppTextStyles.textStyle24),
                            ],
                          ),
                          Column(
                            spacing: 8,
                            children: [
                              Icon(Icons.star, color: AppColors.secondary),
                              Text('نقاط التميز', style: AppTextStyles.caption),
                              Text('1200', style: AppTextStyles.textStyle24),
                            ],
                          ),
                          Column(
                            spacing: 8,
                            children: [
                              Icon(Icons.star, color: Colors.amber),
                              Text(
                                'تقييم المطاعم',
                                style: AppTextStyles.caption,
                              ),
                              Text('4.5', style: AppTextStyles.textStyle24),
                            ],
                          ),
                        ],
                      ),
                      26.h,
                      Row(
                        children: [
                          Text(
                            'المستوى 5 - خبير',
                            style: AppTextStyles.textStyle14Bold,
                          ),
                          Spacer(),
                          Text(
                            '55 توصيلة حتى المستوى 6',
                            style: AppTextStyles.textStyle14Bold,
                          ),
                        ],
                      ),
                      12.h,
                      Container(
                        width: double.infinity,
                        height: 10,
                        decoration: BoxDecoration(
                          color: AppColors.gray,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 45,
                              child: Container(
                                height: 10,
                                width: 100,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      AppColors.secondary,
                                      AppColors.primary,
                                    ],
                                  ),
                                  borderRadius: BorderRadius.circular(16),
                                ),
                              ),
                            ),
                            Expanded(flex: 55, child: SizedBox()),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                16.h,
                Container(
                  width: double.infinity,
                  padding: 12.all,

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Color(0xffECFEFF),
                    border: Border.all(width: 4, color: Color(0xffBEDBFF)),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xFF000000).withValues(alpha: 0.04),
                        spreadRadius: 2,
                        blurRadius: 4,
                        offset: const Offset(0, 0),
                      ),
                      BoxShadow(
                        color: Color(0xFF000000).withValues(alpha: 0.04),
                        spreadRadius: 2,
                        blurRadius: 8,
                        offset: const Offset(0, 6),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'إحصائيات هذا الشهر',
                        style: AppTextStyles.textStyle18,
                      ),
                      Row(
                        spacing: 16,
                        children: [
                          Expanded(
                            child: Container(
                              padding: 16.all,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(14),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                spacing: 4,
                                children: [
                                  Text(
                                    'وقت المساهمة',
                                    style: AppTextStyles.caption,
                                  ),
                                  Text(
                                    '18 ساعة',
                                    style: AppTextStyles.textStyle20.copyWith(
                                      color: AppColors.primary,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              padding: 16.all,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(14),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,

                                spacing: 4,
                                children: [
                                  Text(
                                    'المسافة المقطوعة',
                                    style: AppTextStyles.caption,
                                  ),
                                  Text(
                                    '127 كم',
                                    style: AppTextStyles.textStyle20.copyWith(
                                      color: Color(0xff155DFC),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      16.h,
                      Row(
                        spacing: 16,
                        children: [
                          Expanded(
                            child: Container(
                              padding: 16.all,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(14),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                spacing: 4,
                                children: [
                                  Text(
                                    'CO₂ تم توفيرها',
                                    style: AppTextStyles.caption,
                                  ),
                                  Text(
                                    '58 كجم',
                                    style: AppTextStyles.textStyle20.copyWith(
                                      color: Color(0xff009689),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              padding: 16.all,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(14),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,

                                spacing: 4,
                                children: [
                                  Text(
                                    'أشخاص تم مساعدتهم',
                                    style: AppTextStyles.caption,
                                  ),
                                  Text(
                                    '~340',
                                    style: AppTextStyles.textStyle20.copyWith(
                                      color: Color(0xffFF383C),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                16.h,
                Row(
                  children: [
                    Text(
                      'سجل التأثير الأخير',
                      style: AppTextStyles.textStyle20,
                    ),
                    Spacer(),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'عرض الكل',
                        style: AppTextStyles.textStyle14Bold,
                      ),
                    ),
                  ],
                ),
                8.h,
                OrderHistoryItem(),
              ],
            ),
          ),
          Constants.kbottomPadding.h,
        ],
      ),
    );
  }
}

class OrderHistoryItem extends StatelessWidget {
  const OrderHistoryItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: 12.all,

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
        border: Border.all(width: 4, color: AppColors.gray),
        boxShadow: [
          BoxShadow(
            color: Color(0xFF000000).withValues(alpha: 0.04),
            spreadRadius: 2,
            blurRadius: 4,
            offset: const Offset(0, 0),
          ),
          BoxShadow(
            color: Color(0xFF000000).withValues(alpha: 0.04),
            spreadRadius: 2,
            blurRadius: 8,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 25,
            child: Text('🍽️', style: AppTextStyles.textStyle32),
          ),
          8.w,
          Expanded(
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Text(
                          'مطعم البرنس',
                          style: AppTextStyles.textStyle16.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text('25 وجبة دجاج'),
                      ],
                    ),
                    Spacer(),
                    Container(
                      padding: 8.all,
                      decoration: BoxDecoration(
                        color: Color(0xffFEF9C2),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        '+50 نقطة',
                        style: AppTextStyles.caption.copyWith(
                          color: Color(0Xff894B00),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                8.h,
                Row(
                  children: [
                    Row(
                      spacing: 3,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.star, color: Colors.amber, size: 18),
                        Icon(Icons.star, color: Colors.amber, size: 18),
                        Icon(Icons.star, color: Colors.amber, size: 18),
                        Icon(Icons.star, color: Colors.amber, size: 18),
                        Icon(Icons.star, color: Colors.amber, size: 18),
                      ],
                    ),
                    Spacer(),
                    Icon(Icons.access_time, size: 18),
                    3.w,
                    Text('اليوم، 3:30 م'),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
