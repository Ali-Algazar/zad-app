import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:zad/core/constants.dart';
import 'package:zad/core/cubit/locale_cubit.dart';
import 'package:zad/core/extensions/extensions.dart';
import 'package:zad/core/widgets/custom_dialog.dart';
import 'package:zad/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:zad/features/auth/presentation/cubit/auth_state.dart';
import 'package:zad/features/auth/presentation/view/widgets/common/auth_header.dart';
import 'package:zad/features/auth/presentation/view/widgets/login/dont_have_account_row.dart';
import 'package:zad/features/auth/presentation/view/widgets/common/email_labeled_text_field.dart';
import 'package:zad/features/auth/presentation/view/widgets/login/forgot_password_row.dart';
import 'package:zad/features/auth/presentation/view/widgets/common/language_button.dart';
import 'package:zad/features/auth/presentation/view/widgets/login/login_button.dart';
import 'package:zad/features/auth/presentation/view/widgets/common/password_labeled_text_field.dart';
import 'package:zad/generated/l10n.dart';

class LoginViewBody extends StatefulWidget {
  const LoginViewBody({super.key});

  @override
  State<LoginViewBody> createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<LoginViewBody> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is AuthError) {
          setState(() {
            isLoading = false;
          });
          showDialog(
            context: context,
            builder: (context) => CustomDialog(
              title: S.of(context).loginFailed,
              description: S.of(context).loginFailedErrorMsg,
              buttonText: S.of(context).tryAgain,
              onButtonTap: () {
                emailController.clear();
                passwordController.clear();
                Navigator.pop(context);
              },
              icon: Icons.close,
              iconColor: Colors.red,
            ),
          );
        }
        if (state is Authenticated) {
          Navigator.pushReplacementNamed(context, '/home');
        }
        if (state is AuthLoading) {
          setState(() {
            isLoading = true;
          });
        }
      },
      child: ModalProgressHUD(
        inAsyncCall: isLoading,
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Padding(
              padding: Constants.khorizontalPadding.horizontal,
              child: Column(
                children: [
                  Constants.ktopPadding.h,
                  Row(
                    mainAxisAlignment: context.read<LocaleCubit>().state == 'ar'
                        ? MainAxisAlignment.start
                        : MainAxisAlignment.end,
                    children: [
                      LanguageButton(
                        onClick: () => onLanguageButtonPressed(context),
                      ),
                    ],
                  ),
                  AuthHeader(
                    title: S.of(context).login,
                    subtitle: S.of(context).welcomeBack,
                  ),
                  32.h,
                  EmailLabeledTextField(emailController: emailController),
                  16.h,
                  PasswordLabeledTextField(
                    passwordController: passwordController,
                  ),
                  16.h,
                  ForgotPasswordRow(),
                  30.h,
                  LoginButton(
                    formKey: _formKey,
                    onLoginPressed: () {
                      context.read<AuthCubit>().login(
                        emailController.text,
                        passwordController.text,
                      );
                    },
                  ),
                  16.h,
                  DontHaveAccountRow(),
                  Constants.kbottomPadding.h,
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void onLanguageButtonPressed(BuildContext context) async {
    final selected = await showMenu<String>(
      context: context,
      position: RelativeRect.fromLTRB(
        MediaQuery.of(context).size.width - 100,
        50,
        16,
        0,
      ),

      items: [
        PopupMenuItem(value: 'ar', child: Text('العربية')),
        PopupMenuItem(value: 'en', child: Text('English')),
      ],
    );
    if (selected != null) {
      BlocProvider.of<LocaleCubit>(context).changeLocale(selected);
    }
  }
}
