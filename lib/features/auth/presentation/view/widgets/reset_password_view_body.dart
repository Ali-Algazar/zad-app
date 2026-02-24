// features/auth/presentation/view/widgets/reset_password_view_body.dart

import 'package:flutter/material.dart';
import 'package:zad/core/constants.dart';
import 'package:zad/core/extensions/extensions.dart';
import 'package:zad/core/utils/app_colors.dart';
import 'package:zad/core/utils/app_text_styles.dart';
import 'package:zad/core/widgets/custom_button.dart';
import 'package:zad/features/auth/presentation/view/widgets/auth_header.dart';
import 'package:zad/features/auth/presentation/view/widgets/password_labeled_text_field.dart';
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

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Constants.khorizontalPadding.horizontal,
      child: Column(
        children: [
          Constants.ktopPadding.h,
          AuthHeader(
            title: S.of(context).resetPassword, // "إعادة تعيين كلمة المرور"
            subtitle: S
                .of(context)
                .chooseStrongPassword, // "اختر كلمة مرور جديدة وقوية"
          ),
          32.h,
          PasswordLabeledTextField(passwordController: passwordController),
          16.h,
          PasswordLabeledTextField(
            passwordController: confirmPasswordController,
          ),
          24.h,

          PasswordRequirementItem(
            text: S.of(context).atLeast8Characters, // "8 أحرف على الأقل"
            isDone: true,
          ),
          PasswordRequirementItem(
            text: S.of(context).atLeastOneUppercase,
            isDone: false,
          ),
          PasswordRequirementItem(
            text: S.of(context).atLeastOneSpecialChar,
            isDone: false,
          ),
          const Spacer(),
          CustomButton(
            onTap: () {},
            child: Text(
              S.of(context).changePassword,
              style: AppTextStyles.textStyle16.copyWith(
                color: AppColors.background,
              ),
            ), // "تغيير كلمة المرور"
          ),
          Constants.kbottomPadding.h,
        ],
      ),
    );
  }
}

// الـ Widget الصغير الخاص بشرط كلمة المرور (الصح والخطأ)
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
          color: isDone ? Colors.teal : Colors.grey,
          size: 20,
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
