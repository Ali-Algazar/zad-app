import 'package:flutter/material.dart';
import 'package:zad/core/extensions/extensions.dart';
import 'package:zad/core/utils/app_colors.dart';
import 'package:zad/core/utils/app_text_styles.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    super.key,
    required this.categoryName,
    required this.onTap,
    required this.isSelected,
  });
  final String categoryName;
  final VoidCallback onTap;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: 12.all,
        decoration: BoxDecoration(
          color: isSelected
              ? AppColors.primary.withValues(alpha: 0.1)
              : Colors.transparent,
          border: Border.all(
            color: isSelected ? AppColors.primary : Colors.grey,
            width: 1.8,
          ),
          borderRadius: BorderRadius.circular(14),
        ),
        child: Text(
          categoryName,
          style: AppTextStyles.textStyle14r.copyWith(
            color: isSelected ? AppColors.primary : const Color(0xff757575),
          ),
        ),
      ),
    );
  }
}
