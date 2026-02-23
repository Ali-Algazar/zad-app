import 'package:flutter/material.dart';
import 'package:zad/features/splash/presentation/view/splash_view.dart';
import 'package:zad/features/onboarding/presentation/view/onboarding_view.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.routeName:
      return MaterialPageRoute(builder: (_) => const SplashView());

    case OnboardingView.routeName:
      return MaterialPageRoute(builder: (_) => const OnboardingView());

    default:
      return MaterialPageRoute(
        builder: (_) =>
            const Scaffold(body: Center(child: Text('No route defined'))),
      );
  }
}
