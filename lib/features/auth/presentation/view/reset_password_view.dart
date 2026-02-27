import 'package:flutter/material.dart';
import 'package:zad/features/auth/presentation/view/widgets/password_recovery/reset_password_view_body.dart';

class ResetPasswordView extends StatelessWidget {
  const ResetPasswordView({super.key});
  static const String routeName = '/resetPassword';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: SafeArea(child: ResetPasswordViewBody()));
  }
}
