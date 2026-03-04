import 'package:flutter/material.dart';
import 'widgets/volunteer_main_view_body.dart';

class VolunteerMainView extends StatelessWidget {
  const VolunteerMainView({super.key});
  static const routeName = '/volunteer-main';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: SafeArea(child: VolunteerMainViewBody()));
  }
}
