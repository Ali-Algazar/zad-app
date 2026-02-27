import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zad/core/utils/app_colors.dart';
import 'package:zad/core/utils/app_text_styles.dart';
import 'package:zad/core/widgets/custom_button.dart';
import 'package:zad/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:zad/generated/l10n.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    super.key,
    required this.formKey,
    required this.onLoginPressed,
  });

  final GlobalKey<FormState> formKey;
  final VoidCallback onLoginPressed;

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      onTap: () {
        if (formKey.currentState!.validate()) {
          onLoginPressed();
        }
      },
      child: Text(
        S.of(context).login,
        style: AppTextStyles.textStyle16.copyWith(color: AppColors.background),
      ),
    );
  }
}
