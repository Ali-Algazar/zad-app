import 'package:flutter/material.dart';
import 'package:zad/core/utils/app_colors.dart';
import 'package:zad/core/utils/app_text_styles.dart';
import 'package:zad/core/widgets/custom_button.dart';
import 'package:zad/generated/l10n.dart';

class CreateAccountButton extends StatelessWidget {
  const CreateAccountButton({super.key, required this.onTap});
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return CustomButton(
      onTap: onTap,
      child: Text(
        S.of(context).createAccount,
        style: AppTextStyles.textStyle16.copyWith(color: AppColors.background),
      ),
    );
  }
}
