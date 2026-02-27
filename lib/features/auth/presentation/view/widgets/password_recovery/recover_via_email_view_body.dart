import 'package:flutter/material.dart';
import 'package:zad/core/constants.dart';
import 'package:zad/core/extensions/extensions.dart';
import 'package:zad/core/utils/app_colors.dart';
import 'package:zad/core/utils/app_text_styles.dart';
import 'package:zad/core/widgets/custom_button.dart';
import 'package:zad/features/auth/presentation/view/verify_code_via_email_view.dart';
import 'package:zad/features/auth/presentation/view/widgets/common/auth_header.dart';
import 'package:zad/features/auth/presentation/view/widgets/common/email_labeled_text_field.dart';
import 'package:zad/features/auth/presentation/view/widgets/password_recovery/forgot_password_view_body.dart';
import 'package:zad/features/auth/presentation/view/widgets/common/notice_box.dart';
import 'package:zad/generated/l10n.dart';

class RecoverViaEmailViewBody extends StatefulWidget {
  const RecoverViaEmailViewBody({super.key});

  @override
  State<RecoverViaEmailViewBody> createState() =>
      _RecoverViaEmailViewBodyState();
}

class _RecoverViaEmailViewBodyState extends State<RecoverViaEmailViewBody> {
  final emailController = TextEditingController();
  bool isButtonActtiv = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Constants.khorizontalPadding.horizontal,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Constants.ktopPadding.h,
            CustomAppBar(title: S.of(context).recoverViaEmail),
            AuthHeader(
              title: S.of(context).recoverViaEmail,
              subtitle: S.of(context).enterRegisteredEmailDesc,
            ),
            32.h,
            EmailLabeledTextField(
              emailController: emailController,
              onChanged: (value) {
                setState(() {
                  isButtonActtiv = RegExp(
                    r'\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Z|a-z]{2,}\b',
                  ).hasMatch(value);
                });
              },
            ),
            24.h,
            NoticeBox(message: S.of(context).secureLinkNotice),
            40.h,
            CustomButton(
              isActtive: isButtonActtiv,
              onTap: () {
                Navigator.pushNamed(
                  context,
                  EmailCodeVerificationView.routeName,
                  arguments: emailController.text,
                );
              },
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
