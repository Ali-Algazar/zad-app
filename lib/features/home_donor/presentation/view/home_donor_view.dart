import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zad/core/constants.dart';
import 'package:zad/core/cubit/nav_cubit.dart';
import 'package:zad/core/extensions/extensions.dart';
import 'package:zad/core/utils/app_colors.dart';
import 'package:zad/core/utils/app_text_styles.dart';
import 'package:zad/features/home_donor/presentation/view/widgets/home_donor_app_bar.dart';
import 'package:zad/generated/l10n.dart';

class HomeDonorView extends StatelessWidget {
  const HomeDonorView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: Constants.khorizontalPadding.horizontal,
        child: Column(children: [Constants.ktopPadding.h, HomeDonorAppBar()]),
      ),
    );
  }
}
