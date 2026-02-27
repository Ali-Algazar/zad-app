import 'package:flutter/material.dart';
import 'package:zad/features/auth/presentation/view/choose_recovery_method_view.dart';
import 'package:zad/features/auth/presentation/view/create_account_view.dart';
import 'package:zad/features/auth/presentation/view/forgot_password_view.dart';
import 'package:zad/features/auth/presentation/view/login_view.dart';
import 'package:zad/features/auth/presentation/view/recover_via_email_view.dart';
import 'package:zad/features/auth/presentation/view/recover_via_phone_view.dart';
import 'package:zad/features/auth/presentation/view/reset_password_view.dart';
import 'package:zad/features/auth/presentation/view/verify_code_via_email_view.dart';
import 'package:zad/features/auth/presentation/view/verify_code_via_phone_view.dart';
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
    case PhoneCodeVerificationView.routeName:
      return MaterialPageRoute(
        builder: (_) => const PhoneCodeVerificationView(),
        settings: settings,
      );
    case EmailCodeVerificationView.routeName:
      return MaterialPageRoute(
        builder: (_) => const EmailCodeVerificationView(),
        settings: settings,
      );
    case ChooseRecoveryMethodView.routeName:
      return MaterialPageRoute(
        builder: (_) => const ChooseRecoveryMethodView(),
      );
    case RecoverViaPhoneView.routeName:
      return MaterialPageRoute(builder: (_) => const RecoverViaPhoneView());
    case RecoverViaEmailView.routeName:
      return MaterialPageRoute(
        builder: (_) {
          return const RecoverViaEmailView();
        },
        settings: settings,
      );

    default:
      return MaterialPageRoute(
        builder: (_) =>
            const Scaffold(body: Center(child: Text('No route defined'))),
      );
  }
}
