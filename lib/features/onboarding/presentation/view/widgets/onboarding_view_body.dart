import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zad/features/onboarding/presentation/cubit/onboarding_cubit.dart';
import 'package:zad/features/onboarding/presentation/model/onboarding_model.dart';
import 'package:zad/features/onboarding/presentation/view/widgets/on_boarding_item.dart';
import 'package:zad/generated/l10n.dart';

class OnboardingViewBody extends StatelessWidget {
  const OnboardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    List<OnboardingModel> list = [
      OnboardingModel(
        description: S.of(context).shareSurplusFood,
        image: 'assets/image/onboarding1.png',
        title: S.of(context).donateEasily,
      ),
      OnboardingModel(
        description: S.of(context).getInstantNotifications,
        image: 'assets/image/onboarding2.png',
        title: S.of(context).receiveAndDistribute,
      ),
      OnboardingModel(
        description: S.of(context).contributeToReducingWaste,
        image: 'assets/image/onboarding3.png',
        title: S.of(context).bePartOfChange,
      ),
      OnboardingModel(
        description: S.of(context).joinThousandsOfVolunteers,
        image: 'assets/image/onboarding4.png',
        title: S.of(context).startYourJourneyNow,
      ),
    ];
    return PageView.builder(
      controller: context.read<OnboardingCubit>().pageController,
      itemBuilder: (context, index) =>
          OnBoardingItim(onboardingModel: list[index], index: index),
      itemCount: list.length,
    );
  }
}
