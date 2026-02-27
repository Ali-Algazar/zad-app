import 'package:flutter/material.dart';
import 'package:zad/features/auth/presentation/view/widgets/password_recovery/verify_code_via_email_view_body.dart';

class EmailCodeVerificationView extends StatelessWidget {
  const EmailCodeVerificationView({super.key});
  static const String routeName = '/email-code-verification';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: VerifyCodeViaEmailViewBody(
          email: ModalRoute.of(context)!.settings.arguments as String,
        ),
      ),
    );
  }
}
