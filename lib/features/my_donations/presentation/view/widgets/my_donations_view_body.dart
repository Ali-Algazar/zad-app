import 'package:flutter/material.dart';
import 'package:zad/core/constants.dart';
import 'package:zad/core/extensions/extensions.dart';
import 'package:zad/core/helper_functions/time_ago.dart';
import 'package:zad/core/utils/app_colors.dart';
import 'package:zad/core/utils/app_text_styles.dart';
import 'package:zad/core/widgets/custom_text_form_field.dart';

class MyDonationsViewBody extends StatelessWidget {
  const MyDonationsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MyDonationsHeader(),
        16.h,
        Expanded(
          child: Padding(
            padding: Constants.khorizontalPadding.horizontal,
            child: ListView.builder(
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.only(bottom: 12),
                child: RecentActivityCard(),
              ),
              itemCount: 10,
            ),
          ),
        ),
      ],
    );
  }
}

class MyDonationsHeader extends StatelessWidget {
  const MyDonationsHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: Constants.khorizontalPadding.horizontal,
      decoration: BoxDecoration(border: Border(bottom: BorderSide(width: 1.3))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Constants.ktopPadding.h,
          Text(
            'تبرعاتي',
            style: AppTextStyles.textStyle24.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          16.h,
          Row(
            children: [
              Expanded(
                child: CustomTextFormField(
                  prefixIcon: Icon(Icons.search),
                  hintText: 'ابحث في تبرعاتك...',
                  fillColor: AppColors.gray,
                  filled: true,
                ),
              ),
              12.w,
              Container(
                height: 48,
                width: 48,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  color: AppColors.gray,
                ),
                child: Center(child: Icon(Icons.filter_alt_outlined, size: 30)),
              ),
            ],
          ),
          16.h,
          StatusRow(),
          16.h,
        ],
      ),
    );
  }
}

class StatusRow extends StatefulWidget {
  const StatusRow({super.key});

  @override
  State<StatusRow> createState() => _StatusRowState();
}

class _StatusRowState extends State<StatusRow> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 16,
      children: [
        StatusContainer(
          isActive: index == 0,
          titel: 'الكل',
          onTap: () {
            if (index != 0) {
              setState(() {
                index = 0;
              });
            }
          },
        ),
        StatusContainer(
          isActive: index == 1,
          titel: 'نشطة',
          onTap: () {
            if (index != 1) {
              setState(() {
                index = 1;
              });
            }
          },
        ),
        StatusContainer(
          isActive: index == 2,
          titel: 'مكتملة',
          onTap: () {
            if (index != 2) {
              setState(() {
                index = 2;
              });
            }
          },
        ),
      ],
    );
  }
}

class StatusContainer extends StatelessWidget {
  const StatusContainer({
    super.key,
    required this.isActive,
    required this.titel,
    required this.onTap,
  });
  final bool isActive;
  final String titel;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Container(
          padding: 10.all,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: isActive ? AppColors.primary : AppColors.gray,
          ),
          child: Center(
            child: Text(
              titel,
              style: AppTextStyles.textStyle14Bold.copyWith(
                color: isActive ? AppColors.error : AppColors.darkText,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class RecentActivityCard extends StatelessWidget {
  const RecentActivityCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: 16.all,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.gray, width: 1),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: 12.all,
            decoration: BoxDecoration(
              color: AppColors.primary.withValues(alpha: 0.1),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(
              Icons.restaurant_menu_outlined,
              color: AppColors.primary,
              size: 28,
            ),
          ),
          12.w,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'وجبات أرز ودجاج',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: const Color(0xFF1A1A1A),
                    fontSize: 16,

                    fontWeight: FontWeight.w600,
                    height: 1.50,
                  ),
                ),

                Text(
                  '25 وجبة',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: const Color(0xFF4A5565),
                    fontSize: 14,

                    fontWeight: FontWeight.w500,
                    height: 1.43,
                  ),
                ),
                6.h,
                Row(
                  children: [
                    Container(
                      padding: 8.all,
                      decoration: BoxDecoration(
                        color: AppColors.primary.withValues(alpha: 0.1),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Text(
                        getstatus('Available'),
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: const Color(0xFF1447E6),
                          fontSize: 12,
                          fontFamily: 'Cairo',
                          fontWeight: FontWeight.w600,
                          height: 1.33,
                        ),
                      ),
                    ),
                    Spacer(),
                    Icon(Icons.timelapse_outlined, color: AppColors.primary),
                    4.w,
                    Text(
                      timeAgo('2021-12-21'),
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: const Color(0xFF6A7282),
                        fontSize: 12,
                        fontFamily: 'Cairo',
                        fontWeight: FontWeight.w500,
                        height: 1.33,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  String getstatus(String status) {
    switch (status) {
      case 'Available':
        return 'متاح';

      case 'Claimed':
        return 'المتطوع في الطريق';

      default:
        return 'تم الاستلام';
    }
  }
}
