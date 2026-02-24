import 'package:flutter/material.dart';
import 'package:zad/core/utils/app_colors.dart';
import 'package:zad/core/utils/app_text_styles.dart';
import 'package:zad/features/auth/presentation/view/forgot_password_view.dart';
import 'package:zad/generated/l10n.dart';

class ForgotPasswordRow extends StatelessWidget {
  const ForgotPasswordRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        InkWell(
          onTap: () {
            Navigator.pushNamed(context, ForgotPasswordView.routeName);
          },
          child: Text(
            S.of(context).forgotPassword,
            style: AppTextStyles.textStyle14r.copyWith(
              color: AppColors.primary,
            ),
          ),
        ),
      ],
    );
  }
}
