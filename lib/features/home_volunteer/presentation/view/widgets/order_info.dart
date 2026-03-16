import 'package:flutter/material.dart';
import 'package:zad/core/utils/app_colors.dart';
import 'package:zad/core/utils/app_text_styles.dart';

class OrderInfo extends StatelessWidget {
  const OrderInfo({
    super.key,
    required this.restaurantName,
    required this.mealsCount,
    required this.mealType,
    required this.location,
  });
  final String restaurantName;
  final String mealsCount;
  final String mealType;
  final String location;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 4,
      children: [
        Text(
          restaurantName,
          style: AppTextStyles.textStyle18.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        Row(
          spacing: 3,
          children: [
            Text(mealsCount, style: AppTextStyles.textStyle14Medium),
            CircleAvatar(radius: 3),
            Text(mealType, style: AppTextStyles.textStyle14Medium),
          ],
        ),
        Row(
          children: [
            Icon(
              Icons.location_on_outlined,
              size: 20,
              color: AppColors.grayText,
            ),
            Expanded(
              child: Text(
                location,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: AppTextStyles.caption.copyWith(
                  color: AppColors.grayText,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
