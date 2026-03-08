import 'package:flutter/material.dart';
import 'package:zad/core/constants.dart';
import 'package:zad/core/extensions/extensions.dart';
import 'package:zad/core/utils/app_colors.dart';
import 'package:zad/core/utils/app_text_styles.dart';
import 'package:zad/generated/l10n.dart';

class AddNewDonationHeader extends StatelessWidget {
  const AddNewDonationHeader({
    super.key,
    required this.onBack,
    required this.currentStep,
  });
  final VoidCallback onBack;
  final int currentStep;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: Constants.khorizontalPadding.all,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey, width: 1),
      ),
      child: Column(
        children: [
          AddDonationAppBar(onBack: onBack),
          16.h,
          AddDonationIndicator(index: currentStep),
          16.h,
        ],
      ),
    );
  }
}

class AddDonationIndicator extends StatelessWidget {
  const AddDonationIndicator({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 8,
      children: List.generate(
        4,
        (index) => AddDonationIndicatorItem(isActive: index <= this.index),
      ),
    );
  }
}

class AddDonationIndicatorItem extends StatelessWidget {
  const AddDonationIndicatorItem({super.key, required this.isActive});
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 6,
        decoration: BoxDecoration(
          color: isActive
              ? AppColors.primary
              : Colors.grey.withValues(alpha: 0.5),
          borderRadius: BorderRadius.circular(3),
        ),
      ),
    );
  }
}

class AddDonationAppBar extends StatelessWidget {
  const AddDonationAppBar({super.key, required this.onBack});
  final VoidCallback onBack;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: onBack,
          child: Icon(
            Icons.arrow_back_ios_new_outlined,
            color: Colors.black,
            size: 20,
          ),
        ),
        Spacer(),
        Text(S.of(context).addDonation, style: AppTextStyles.textStyle20),
        Spacer(),
      ],
    );
  }
}
