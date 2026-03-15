import 'package:flutter/material.dart';
import 'package:zad/core/extensions/extensions.dart';
import 'package:zad/features/home_donor/presentation/view/widgets/header/home_donor_header.dart';
import 'package:zad/features/home_donor/presentation/view/widgets/home_donor_view_body.dart';

class HomeDonorView extends StatelessWidget {
  const HomeDonorView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(children: [HomeDonorHeader(), 24.h, HomeDonorViewBody()]),
      ),
    );
  }
}
