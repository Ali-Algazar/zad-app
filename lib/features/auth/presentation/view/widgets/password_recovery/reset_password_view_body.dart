import 'package:flutter/material.dart';
import 'package:zad/core/constants.dart';
import 'package:zad/core/extensions/extensions.dart';
import 'package:zad/core/utils/app_colors.dart';
import 'package:zad/core/utils/app_text_styles.dart';
import 'package:zad/core/widgets/custom_button.dart';
import 'package:zad/core/widgets/custom_dialog.dart';
import 'package:zad/features/auth/presentation/view/widgets/common/auth_header.dart';
import 'package:zad/features/auth/presentation/view/widgets/common/password_labeled_text_field.dart';
import 'package:zad/generated/l10n.dart';

class ResetPasswordViewBody extends StatefulWidget {
  const ResetPasswordViewBody({super.key});

  @override
  State<ResetPasswordViewBody> createState() => _ResetPasswordViewBodyState();
}

class _ResetPasswordViewBodyState extends State<ResetPasswordViewBody> {
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  bool atLeast8Characters = false;
  bool hasUppercase = false;
  bool hasSpecialChar = false;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: Constants.khorizontalPadding.horizontal,
        child: Column(
          children: [
            Constants.ktopPadding.h,
            AuthHeader(
              title: S.of(context).resetPassword,
              subtitle: S.of(context).chooseStrongPassword,
            ),
            32.h,
            NewPasswordLabeledTextField(
              passwordController: passwordController,
              onChanged: (value) {
                setState(() {
                  atLeast8Characters = value.length >= 8;
                  hasUppercase = value.contains(RegExp(r'[A-Z]'));
                  hasSpecialChar = value.contains(
                    RegExp(r'[!@#$%^&*(),.?":{}|<>]'),
                  );
                });
              },
            ),
            16.h,
            ConfirmPasswordLabeledTextField(
              passwordController: confirmPasswordController,
              password: passwordController.text,
            ),
            24.h,

            PasswordRequirementItem(
              text: S.of(context).atLeast8Characters,
              isDone: atLeast8Characters,
            ),
            PasswordRequirementItem(
              text: S.of(context).atLeastOneUppercase,
              isDone: hasUppercase,
            ),
            PasswordRequirementItem(
              text: S.of(context).atLeastOneSpecialChar,
              isDone: hasSpecialChar,
            ),
            const Spacer(),
            CustomButton(
              isActtive: atLeast8Characters && hasUppercase && hasSpecialChar,
              onTap: () {
                if (_formKey.currentState!.validate()) {
                  successDialog(context);
                }
              },
              child: Text(
                S.of(context).changePassword,
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

  Future<dynamic> successDialog(BuildContext context) => showDialog(
    context: context,
    builder: (context) {
      return CustomDialog(
        buttonText: S.of(context).goToLoginPage,
        description: S.of(context).nowUseNewPasswordToLogin,
        icon: Icons.check,
        iconColor: AppColors.primary,
        title: S.of(context).passwordChangedSuccessfully,
        onButtonTap: () {
          Navigator.pushNamedAndRemoveUntil(
            context,
            '/login',
            (route) => false,
          );
        },
      );
    },
  );
}

class PasswordRequirementItem extends StatelessWidget {
  final String text;
  final bool isDone;
  const PasswordRequirementItem({
    super.key,
    required this.text,
    required this.isDone,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          isDone ? Icons.check_circle : Icons.check_circle_outline,
          color: isDone ? AppColors.primary : Colors.grey,
          size: 24,
        ),
        8.w,
        Text(
          text,
          style: TextStyle(color: isDone ? Colors.black : Colors.grey),
        ),
      ],
    );
  }
}
