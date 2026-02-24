import 'package:flutter/material.dart';
import 'package:zad/features/auth/presentation/view/create_account_view.dart';
import 'package:zad/features/auth/presentation/view/forgot_password_view.dart';
import 'package:zad/features/auth/presentation/view/login_view.dart';
import 'package:zad/features/auth/presentation/view/reset_password_view.dart';
import 'package:zad/features/auth/presentation/view/verify_code_view.dart';
import 'package:zad/features/splash/presentation/view/splash_view.dart';
import 'package:zad/features/onboarding/presentation/view/onboarding_view.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.routeName:
      return MaterialPageRoute(builder: (_) => const SplashView());

    case OnboardingView.routeName:
      return MaterialPageRoute(builder: (_) => const OnboardingView());

    case LoginView.routeName:
      return MaterialPageRoute(builder: (_) => const LoginView());

    case CreateAccountView.routeName:
      return MaterialPageRoute(builder: (_) => const CreateAccountView());

    case ForgotPasswordView.routeName:
      return MaterialPageRoute(builder: (_) => const ForgotPasswordView());
    case ResetPasswordView.routeName:
      return MaterialPageRoute(builder: (_) => const ResetPasswordView());
    case VerifyCodeView.routeName:
      return MaterialPageRoute(builder: (_) => const VerifyCodeView());

    default:
      return MaterialPageRoute(
        builder: (_) =>
            const Scaffold(body: Center(child: Text('No route defined'))),
      );
  }
}
