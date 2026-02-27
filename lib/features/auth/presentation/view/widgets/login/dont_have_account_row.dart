import 'package:flutter/material.dart';
import 'package:zad/core/extensions/extensions.dart';
import 'package:zad/core/utils/app_colors.dart';
import 'package:zad/core/utils/app_text_styles.dart';
import 'package:zad/features/auth/presentation/view/create_account_view.dart';
import 'package:zad/generated/l10n.dart';

class DontHaveAccountRow extends StatelessWidget {
  const DontHaveAccountRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(S.of(context).dontHaveAccount),
        4.w,
        InkWell(
          onTap: () {
            Navigator.pushNamed(context, CreateAccountView.routeName);
          },
          child: Text(
            S.of(context).createAccount,
            style: AppTextStyles.textStyle14r.copyWith(
              color: AppColors.primary,
            ),
          ),
        ),
      ],
    );
  }
}
