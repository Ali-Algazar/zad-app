import 'package:flutter/widgets.dart';
import 'package:zad/core/utils/app_colors.dart';
import 'package:zad/core/utils/app_text_styles.dart';

class NearbyOrdersTitle extends StatelessWidget {
  const NearbyOrdersTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'طلبات قريبة منك الآن',
      style: AppTextStyles.textStyle24.copyWith(color: AppColors.primary),
    );
  }
}
