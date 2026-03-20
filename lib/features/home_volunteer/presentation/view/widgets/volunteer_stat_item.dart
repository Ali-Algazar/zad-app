import 'package:flutter/material.dart';
import 'package:zad/core/utils/app_colors.dart';
import 'package:zad/core/utils/app_text_styles.dart';
import 'package:zad/core/widgets/custom_container.dart';

class VolunteerStatItem extends StatelessWidget {
  const VolunteerStatItem({
    super.key,
    required this.icon,
    required this.value,
    required this.color,
    required this.label,
  });
  final IconData icon;
  final String value;
  final Color color;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: CustomContainer(
        child: Column(
          children: [
            Icon(icon, color: color),
            Text(
              value,
              style: AppTextStyles.textStyle18.copyWith(
                color: AppColors.primary,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(label, style: AppTextStyles.textStyle14r),
          ],
        ),
      ),
    );
  }
}
