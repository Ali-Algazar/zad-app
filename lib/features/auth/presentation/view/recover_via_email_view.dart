import 'package:flutter/material.dart';
import 'package:zad/features/auth/presentation/view/widgets/password_recovery/recover_via_email_view_body.dart';

class RecoverViaEmailView extends StatelessWidget {
  const RecoverViaEmailView({super.key});
  static const routeName = '/recover-via-email';

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: const RecoverViaEmailViewBody()));
  }
}
