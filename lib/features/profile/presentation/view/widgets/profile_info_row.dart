import 'package:flutter/widgets.dart';
import 'package:zad/core/utils/app_colors.dart';
import 'package:zad/core/utils/app_text_styles.dart';

class ProfileInfoRow extends StatelessWidget {
  const ProfileInfoRow({super.key, required this.icon, required this.text});
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 12,
      children: [
        Icon(icon, color: AppColors.grayText),
        Text(
          text,
          style: AppTextStyles.textStyle14Bold.copyWith(
            color: AppColors.grayText,
          ),
        ),
      ],
    );
  }
}
