import 'package:flutter/material.dart';
import 'package:zad/core/utils/app_colors.dart';
import 'package:zad/core/utils/app_text_styles.dart';
import 'package:zad/core/widgets/custom_button.dart';
import 'package:zad/generated/l10n.dart';

class CreateAccountButton extends StatelessWidget {
  const CreateAccountButton({super.key, required GlobalKey<FormState> formKey})
    : _formKey = formKey;

  final GlobalKey<FormState> _formKey;

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      onTap: () {
        if (_formKey.currentState!.validate()) {}
      },
      child: Text(
        S.of(context).createAccount,
        style: AppTextStyles.textStyle16.copyWith(color: AppColors.background),
      ),
    );
  }
}
