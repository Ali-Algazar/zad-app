import 'package:flutter/material.dart';
import 'package:zad/core/extensions/extensions.dart';
import 'package:zad/core/utils/app_colors.dart';
import 'package:zad/core/utils/app_text_styles.dart';
import 'package:zad/generated/l10n.dart';

class AgreeToTermsAndPrivacy extends StatelessWidget {
  const AgreeToTermsAndPrivacy({
    super.key,
    required this.value,
    required this.onChanged,
  });
  final bool value;
  final ValueChanged<bool?> onChanged;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(value: value, onChanged: onChanged),
        8.w,
        Text(S.of(context).agreeTo, style: AppTextStyles.caption),
        Text(
          S.of(context).terms,
          style: AppTextStyles.caption.copyWith(color: AppColors.primary),
        ),
        Text(S.of(context).and, style: AppTextStyles.caption),
        Text(
          S.of(context).privacy,
          style: AppTextStyles.caption.copyWith(color: AppColors.primary),
        ),
      ],
    );
  }
}
