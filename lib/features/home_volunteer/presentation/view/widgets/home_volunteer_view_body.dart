import 'package:flutter/material.dart';
import 'package:zad/core/constants.dart';
import 'package:zad/core/extensions/extensions.dart';
import 'package:zad/core/utils/app_colors.dart';
import 'package:zad/core/utils/app_text_styles.dart';
import 'package:zad/core/widgets/custom_button.dart';
import 'package:zad/core/widgets/custom_container.dart';
import 'package:zad/features/home_donor/presentation/view/widgets/header/notifications_button.dart';

class HomeVolunteerViewBody extends StatelessWidget {
  const HomeVolunteerViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: [
              HomeVolunteerHeader(),
              26.h,
              Padding(
                padding: Constants.khorizontalPadding.horizontal,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      spacing: 12,
                      children: [
                        Expanded(
                          child: CustomContainer(
                            child: Column(
                              children: [
                                Icon(
                                  Icons.local_dining_outlined,
                                  color: AppColors.primary,
                                ),
                                Text(
                                  '200',
                                  style: AppTextStyles.textStyle18.copyWith(
                                    color: AppColors.primary,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'وجبات أنقذتها',
                                  style: AppTextStyles.textStyle14r,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: CustomContainer(
                            child: Column(
                              children: [
                                Icon(Icons.star, color: AppColors.secondary),
                                Text(
                                  '2000',
                                  style: AppTextStyles.textStyle18.copyWith(
                                    color: AppColors.primary,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'نقاط التميز',
                                  style: AppTextStyles.textStyle14r,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: CustomContainer(
                            child: Column(
                              children: [
                                Icon(
                                  Icons.fitness_center_rounded,
                                  color: AppColors.primary,
                                ),
                                Text(
                                  'محترف',
                                  style: AppTextStyles.textStyle18.copyWith(
                                    color: AppColors.primary,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'مستوى التقييم',
                                  style: AppTextStyles.textStyle14r,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    26.h,
                    Text(
                      'طلبات قريبة منك الآن',
                      style: AppTextStyles.textStyle24.copyWith(
                        color: AppColors.primary,
                      ),
                    ),
                    12.h,
                  ],
                ),
              ),
            ],
          ),
        ),
        SliverList.builder(
          itemCount: 5,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: OrderItem(),
          ),
        ),
      ],
    );
  }
}

class OrderItem extends StatelessWidget {
  const OrderItem({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 64,
                width: 64,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Color(0xffF9FAFB),
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
              ),
              16.w,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 4,
                children: [
                  Text(
                    'مطعم البرنس',
                    style: AppTextStyles.textStyle18.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    spacing: 3,
                    children: [
                      Text(
                        '5 وجبات جاهزة',
                        style: AppTextStyles.textStyle14Medium,
                      ),
                      CircleAvatar(radius: 3),
                      Text('أرز ودجاج', style: AppTextStyles.textStyle14Medium),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on_outlined,
                        size: 20,
                        color: AppColors.grayText,
                      ),
                      Text(
                        'وسط البلد - شارع 26 يوليو',
                        style: AppTextStyles.caption.copyWith(
                          color: AppColors.grayText,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          24.h,
          CustomButton(
            onTap: () {},
            child: Text(
              'أنا لها! (تأكيد الاستلام)',
              style: AppTextStyles.textStyle16.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

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
