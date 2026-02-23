import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zad/core/constants.dart';
import 'package:zad/core/extensions/extensions.dart';
import 'package:zad/core/utils/app_text_styles.dart';
import 'package:zad/core/widgets/custom_button.dart';
import 'package:zad/features/onboarding/presentation/cubit/onboarding_cubit.dart';
import 'package:zad/features/onboarding/presentation/model/onboarding_model.dart';
import 'package:zad/features/onboarding/presentation/view/widgets/custom_dots.dart';
import 'package:zad/features/onboarding/presentation/view/widgets/custom_onboarding_app_bar.dart';
import 'package:zad/generated/l10n.dart';

class OnBoardingItim extends StatelessWidget {
  const OnBoardingItim({
    super.key,
    required this.onboardingModel,
    required this.index,
  });
  final OnboardingModel onboardingModel;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Constants.khorizontalPadding.horizontal,
      child: Column(
        children: [
          Constants.ktopPadding.h,
          CustomOnboardingAppBar(index: index),
          Spacer(),
          Image.asset(onboardingModel.image, width: double.infinity),
          40.h,
          Text(onboardingModel.title, style: AppTextStyles.textStyle24),
          SizedBox(
            width: 250,
            child: Text(
              onboardingModel.description,
              style: AppTextStyles.textStyle16,
              textAlign: TextAlign.center,
            ),
          ),
          Spacer(),
          CustomDots(aIndex: index),
          24.h,
          CustomBoton(
            onTap: () {
              if (index == 3) {
                Navigator.pushReplacementNamed(context, '/signIn');
              } else {
                context.read<OnboardingCubit>().nextPage();
              }
            },
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  index == 3 ? S.of(context).startNow : S.of(context).next,
                  style: AppTextStyles.textStyle18.copyWith(
                    color: Colors.white,
                  ),
                ),
                8.w,
                const Icon(Icons.arrow_forward_ios, color: Colors.white),
              ],
            ),
          ),
          30.h,
        ],
      ),
    );
  }
}
