import 'package:flutter/material.dart';
import 'package:zad/core/constants.dart';
import 'package:zad/core/extensions/extensions.dart';
import 'package:zad/core/utils/app_colors.dart';
import 'package:zad/core/utils/app_text_styles.dart';
import 'package:zad/core/widgets/custom_button.dart';
import 'package:zad/features/auth/presentation/view/verify_code_view.dart';
import 'package:zad/features/auth/presentation/view/widgets/auth_header.dart';
import 'package:zad/features/auth/presentation/view/widgets/email_labeled_text_field.dart';
import 'package:zad/generated/l10n.dart';

class ForgotPasswordViewBody extends StatelessWidget {
  const ForgotPasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();
    final TextEditingController emailController = TextEditingController();

    return Padding(
      padding: Constants.khorizontalPadding.horizontal,
      child: Form(
        key: formKey,
        child: Column(
          children: [
            Constants.ktopPadding.h,

            AuthHeader(
              title: S.of(context).forgotPasswordTitle,
              subtitle: S
                  .of(context)
                  .dontWorryResetInstructions, // "لا تقلق، سنرسل لك تعليمات..."
            ),
            40.h,
            EmailLabeledTextField(emailController: emailController),
            const Spacer(),
            CustomButton(
              onTap: () {
                if (formKey.currentState!.validate()) {
                  Navigator.pushNamed(context, VerifyCodeView.routeName);
                }
              },
              child: Text(
                S.of(context).sendCode,
                style: AppTextStyles.textStyle16.copyWith(
                  color: AppColors.background,
                ),
              ),
            ),
            Constants.kbottomPadding.h,
          ],
        ),
      ),
    );
  }
}
