import 'package:flutter/material.dart';
import 'package:zad/features/auth/presentation/view/widgets/password_recovery/recover_via_phone_view_body.dart';

class RecoverViaPhoneView extends StatelessWidget {
  const RecoverViaPhoneView({super.key});
  static const routeName = '/recover-via-phone';

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: RecoverViaPhoneViewBody()));
  }
}
