import 'package:flutter/material.dart';
import 'package:zad/core/constants.dart';
import 'package:zad/core/extensions/extensions.dart';
import 'package:zad/features/auth/presentation/view/widgets/auth_header.dart';
import 'package:zad/features/auth/presentation/view/widgets/dont_have_account_row.dart';
import 'package:zad/features/auth/presentation/view/widgets/email_labeled_text_field.dart';
import 'package:zad/features/auth/presentation/view/widgets/forgot_password_row.dart';
import 'package:zad/features/auth/presentation/view/widgets/login_button.dart';
import 'package:zad/features/auth/presentation/view/widgets/password_labeled_text_field.dart';
import 'package:zad/generated/l10n.dart';

class LoginViewBody extends StatefulWidget {
  const LoginViewBody({super.key});

  @override
  State<LoginViewBody> createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<LoginViewBody> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
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
              title: S.of(context).login,
              subtitle: S.of(context).welcomeBack,
            ),
            32.h,
            EmailLabeledTextField(emailController: emailController),
            16.h,
            PasswordLabeledTextField(passwordController: passwordController),
            16.h,
            ForgotPasswordRow(),
            30.h,
            LoginButton(formKey: _formKey),
            16.h,
            DontHaveAccountRow(),
            Constants.kbottomPadding.h,
          ],
        ),
      ),
    );
  }
}
