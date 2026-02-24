import 'package:flutter/material.dart';
import 'package:zad/core/constants.dart';
import 'package:zad/core/extensions/extensions.dart';
import 'package:zad/core/utils/app_colors.dart';
import 'package:zad/core/utils/app_text_styles.dart';
import 'package:zad/core/widgets/custom_button.dart';
import 'package:zad/features/auth/presentation/view/reset_password_view.dart';
import 'package:zad/features/auth/presentation/view/widgets/auth_header.dart';
import 'package:zad/features/auth/presentation/view/widgets/resend_code_timer.dart';
import 'package:zad/generated/l10n.dart';

class VerifyCodeViewBody extends StatelessWidget {
  const VerifyCodeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Constants.khorizontalPadding.horizontal,
      child: Column(
        children: [
          Constants.ktopPadding.h,
          AuthHeader(
            title: S.of(context).verifyPhoneNumber,

            subtitle: "${S.of(context).verificationCodeSentTo} \n 90******012",
          ),
          40.h,
          // الجزء الخاص بمربعات الـ OTP
          const OtpFieldsGroup(),
          24.h,
          // العداد
          const ResendCodeTimer(),
          const Spacer(),
          CustomButton(
            onTap: () {
              Navigator.pushReplacementNamed(
                context,
                ResetPasswordView.routeName,
              );
            },
            child: Text(
              S.of(context).confirm,
              style: AppTextStyles.textStyle16.copyWith(
                color: AppColors.background,
              ),
            ), // "تأكيد"
          ),
          Constants.kbottomPadding.h,
        ],
      ),
    );
  }
}

class OtpFieldsGroup extends StatelessWidget {
  const OtpFieldsGroup({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(4, (index) => const OtpIndividualField()),
    );
  }
}

class OtpIndividualField extends StatelessWidget {
  const OtpIndividualField({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 65,
      height: 65,
      child: TextFormField(
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        maxLength: 1,
        decoration: InputDecoration(
          counterText: "",
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: AppColors.grayText),
          ),
        ),
      ),
    );
  }
}
