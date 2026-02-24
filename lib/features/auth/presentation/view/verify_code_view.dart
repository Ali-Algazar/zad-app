import 'package:flutter/material.dart';
import 'package:zad/features/auth/presentation/view/widgets/verify_code_view_body.dart';

class VerifyCodeView extends StatelessWidget {
  const VerifyCodeView({super.key});
  static const String routeName = '/verifyCode';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: SafeArea(child: VerifyCodeViewBody()));
  }
}
