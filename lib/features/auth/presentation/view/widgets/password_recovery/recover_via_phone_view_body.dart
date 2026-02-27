import 'package:flutter/material.dart';
import 'package:zad/core/constants.dart';
import 'package:zad/core/extensions/extensions.dart';
import 'package:zad/core/utils/app_colors.dart';
import 'package:zad/core/utils/app_text_styles.dart';
import 'package:zad/core/widgets/custom_button.dart';
import 'package:zad/features/auth/presentation/view/verify_code_via_phone_view.dart';
import 'package:zad/features/auth/presentation/view/widgets/common/auth_header.dart';
import 'package:zad/features/auth/presentation/view/widgets/password_recovery/forgot_password_view_body.dart';
import 'package:zad/features/auth/presentation/view/widgets/common/notice_box.dart';
import 'package:zad/features/auth/presentation/view/widgets/register/phone_labeled_text_field.dart';
import 'package:zad/generated/l10n.dart';

class RecoverViaPhoneViewBody extends StatefulWidget {
  const RecoverViaPhoneViewBody({super.key});

  @override
  State<RecoverViaPhoneViewBody> createState() =>
      _RecoverViaPhoneViewBodyState();
}

class _RecoverViaPhoneViewBodyState extends State<RecoverViaPhoneViewBody> {
  final phoneController = TextEditingController();
  bool isButtonActtiv = false;
  String? errorText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Constants.khorizontalPadding.horizontal,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Constants.ktopPadding.h,
            CustomAppBar(title: S.of(context).recoverViaPhoneNumber),
            AuthHeader(
              title: S.of(context).recoverViaPhoneNumber,
              subtitle: S.of(context).enterRegisteredPhoneDesc,
            ),
            32.h,
            PhoneLabeledTextField(
              phoneController: phoneController,
              errorText: errorText,
              onChanged: (value) {
                setState(() {
                  isButtonActtiv = RegExp(r'^01[0-9]{9}$').hasMatch(value);
                  errorText = null;
                });
                if (value.length >= 11 && isButtonActtiv == false) {
                  errorText = S.of(context).enterValidEgyptianPhone;
                }
              },
            ),
            24.h,
            NoticeBox(message: S.of(context).smsVerificationNotice),
            40.h,
            CustomButton(
              onTap: () {
                Navigator.pushNamed(
                  context,
                  PhoneCodeVerificationView.routeName,
                  arguments: phoneController.text,
                );
              },
              isActtive: isButtonActtiv,
              child: Text(
                S.of(context).sendCode,
                style: AppTextStyles.textStyle18.copyWith(
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
