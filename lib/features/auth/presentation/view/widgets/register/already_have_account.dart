import 'package:flutter/material.dart';
import 'package:zad/core/extensions/extensions.dart';
import 'package:zad/core/utils/app_colors.dart';
import 'package:zad/core/utils/app_text_styles.dart';
import 'package:zad/generated/l10n.dart';

class AlreadyHaveAccount extends StatelessWidget {
  const AlreadyHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(S.of(context).alreadyHaveAccount),
        4.w,
        InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Text(
            S.of(context).login,
            style: AppTextStyles.textStyle14r.copyWith(
              color: AppColors.primary,
            ),
          ),
        ),
      ],
    );
  }
}
