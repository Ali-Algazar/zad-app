import 'package:flutter/material.dart';
import 'package:zad/features/auth/presentation/view/widgets/password_recovery/choose_recovery_method_view_body.dart';

class ChooseRecoveryMethodView extends StatelessWidget {
  const ChooseRecoveryMethodView({super.key});
  static const String routeName = '/choose-recovery-method';

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: ChooseRecoveryMethodViewBody()));
  }
}
