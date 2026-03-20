import 'package:flutter/widgets.dart';
import 'package:zad/core/extensions/extensions.dart';
import 'package:zad/core/utils/app_text_styles.dart';

class ProfileStatItem extends StatelessWidget {
  const ProfileStatItem({
    super.key,
    required this.title,
    required this.color,
    required this.value,
  });
  final String title;
  final Color color;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(value, style: AppTextStyles.textStyle24.copyWith(color: color)),
        4.h,
        Text(title, style: AppTextStyles.caption),
      ],
    );
  }
}
