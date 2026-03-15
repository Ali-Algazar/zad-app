import 'package:flutter/material.dart';
import 'package:zad/core/constants.dart';
import 'package:zad/core/extensions/extensions.dart';
import 'package:zad/core/utils/app_colors.dart';
import 'package:zad/core/utils/app_text_styles.dart';
import 'package:zad/core/widgets/custom_text_form_field.dart';
import 'package:zad/features/my_donations/presentation/view/widgets/status_row.dart';

class MyDonationsHeader extends StatelessWidget {
  const MyDonationsHeader({super.key, required this.onStatusChanged});
  final ValueChanged<int> onStatusChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: Constants.khorizontalPadding.horizontal,
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(width: 1.3, color: AppColors.gray)),
      ),
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
          StatusRow(onStatusChanged: onStatusChanged),
          16.h,
        ],
      ),
    );
  }
}
