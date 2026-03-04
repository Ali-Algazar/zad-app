import 'package:flutter/material.dart';
import 'widgets/donor_main_view_body.dart';

class DonorMainView extends StatelessWidget {
  const DonorMainView({super.key});
  static const routeName = '/donor-main';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: SafeArea(child: DonorMainViewBody()));
  }
}
