import 'package:flutter/material.dart';
import 'package:zad/features/auth/presentation/view/widgets/create_account_view_body.dart';

class CreateAccountView extends StatelessWidget {
  const CreateAccountView({super.key});
  static const String routeName = '/create_account_view';

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: CreateAccountViewBody()));
  }
}
