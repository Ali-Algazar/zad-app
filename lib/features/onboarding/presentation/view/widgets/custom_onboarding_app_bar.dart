import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zad/core/utils/app_text_styles.dart';
import 'package:zad/features/onboarding/presentation/cubit/onboarding_cubit.dart';
import 'package:zad/generated/l10n.dart';

class CustomOnboardingAppBar extends StatelessWidget {
  const CustomOnboardingAppBar({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        index == 0
            ? SizedBox()
            : InkWell(
                onTap: () {
                  context.read<OnboardingCubit>().goToPreviousPage();
                },
                child: Icon(Icons.arrow_back_ios),
              ),
        Spacer(),
        index == 3
            ? SizedBox()
            : InkWell(
                onTap: () => Navigator.pushReplacementNamed(context, '/signIn'),
                child: Text(
                  S.of(context).skip,
                  style: AppTextStyles.textStyle16,
                ),
              ),
      ],
    );
  }
}
