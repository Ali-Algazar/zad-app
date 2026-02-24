import 'package:flutter/material.dart';
import 'package:zad/features/auth/presentation/view/widgets/forgot_password_view_body.dart';

class ForgotPasswordView extends StatelessWidget {
  const ForgotPasswordView({super.key});
  static const String routeName = '/forgotPassword';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: SafeArea(child: ForgotPasswordViewBody()));
  }
}
