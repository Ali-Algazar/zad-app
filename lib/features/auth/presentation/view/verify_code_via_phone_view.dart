import 'package:flutter/material.dart';
import 'package:zad/features/auth/presentation/view/widgets/password_recovery/verify_code_via_phone_view_body.dart';

class PhoneCodeVerificationView extends StatelessWidget {
  const PhoneCodeVerificationView({super.key});
  static const String routeName = '/verifyCode';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: VerifyCodeViaPhoneViewBody(
          phoneNumber: ModalRoute.of(context)!.settings.arguments as String,
        ),
      ),
    );
  }
}
