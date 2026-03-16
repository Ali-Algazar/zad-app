import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:zad/core/constants.dart';
import 'package:zad/core/extensions/extensions.dart';
import 'package:zad/core/helper_functions/get_location.dart';
import 'package:zad/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:zad/features/auth/presentation/cubit/auth_state.dart';
import 'package:zad/features/auth/presentation/view/widgets/register/agree_to_terms_and_privacy.dart';
import 'package:zad/features/auth/presentation/view/widgets/register/already_have_account.dart';
import 'package:zad/features/auth/presentation/view/widgets/common/auth_header.dart';
import 'package:zad/features/auth/presentation/view/widgets/register/choose_role.dart';
import 'package:zad/features/auth/presentation/view/widgets/register/city_labeled_text_field.dart';
import 'package:zad/features/auth/presentation/view/widgets/register/create_account_button.dart';
import 'package:zad/features/auth/presentation/view/widgets/common/email_labeled_text_field.dart';
import 'package:zad/features/auth/presentation/view/widgets/register/full_name_labeled_text_field.dart';
import 'package:zad/features/auth/presentation/view/widgets/common/password_labeled_text_field.dart';
import 'package:zad/features/auth/presentation/view/widgets/register/phone_labeled_text_field.dart';
import 'package:zad/features/donor_main/presentation/view/donor_main_view.dart';
import 'package:zad/features/volunteer_main/presentation/view/volunteer_main_view.dart';
import 'package:zad/generated/l10n.dart';

class CreateAccountViewBody extends StatefulWidget {
  const CreateAccountViewBody({super.key});

  @override
  State<CreateAccountViewBody> createState() => _CreateAccountViewBodyState();
}

class _CreateAccountViewBodyState extends State<CreateAccountViewBody> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController fullNameController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  int indexRole = 0;
  bool agreeToTerms = false;
  final List<String> role = ['Donor', 'Volunteer', 'Receiver'];
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    List<String> roleTitle = [
      S.of(context).donorRoleDesc,
      S.of(context).volunteerRoleDesc,
      S.of(context).recipientRoleDesc,
    ];

    return BlocListener<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is AuthError) {
          log(state.message);
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text(state.message)));
          setState(() {
            isLoading = false;
          });
        }
        if (state is Authenticated) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text(state.role)));
          setState(() {
            isLoading = false;
          });
          state.role == 'Volunteer'
              ? Navigator.pushNamedAndRemoveUntil(
                  context,
                  VolunteerMainView.routeName,
                  (route) => false,
                )
              : Navigator.pushNamedAndRemoveUntil(
                  context,
                  DonorMainView.routeName,
                  (route) => false,
                );
        }
        if (state is AuthLoading) {
          setState(() {
            isLoading = true;
          });
        }
      },
      child: ModalProgressHUD(
        inAsyncCall: isLoading,
        child: Form(
          key: _formKey,
          child: Padding(
            padding: Constants.khorizontalPadding.horizontal,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Constants.ktopPadding.h,
                  AuthHeader(
                    title: S.of(context).createNewAccount,
                    subtitle: S.of(context).joinUsMakeDifference,
                  ),
                  32.h,
                  PhoneLabeledTextField(phoneController: phoneController),
                  FullNameLabeledTextField(
                    fullNameController: fullNameController,
                  ),
                  16.h,
                  EmailLabeledTextField(emailController: emailController),
                  16.h,
                  PasswordLabeledTextField(
                    passwordController: passwordController,
                  ),
                  16.h,
                  CityLabeledTextField(cityController: cityController),
                  16.h,
                  ChooseRole(
                    roleTitle: roleTitle,
                    indexRole: indexRole,
                    onChanged: (value) {
                      setState(() {
                        indexRole = value;
                      });
                    },
                  ),

                  AgreeToTermsAndPrivacy(
                    value: agreeToTerms,
                    onChanged: (value) {
                      setState(() {
                        agreeToTerms = value!;
                      });
                    },
                  ),
                  30.h,
                  CreateAccountButton(
                    onTap: () async {
                      if (_formKey.currentState!.validate()) {
                        if (!agreeToTerms) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(S.of(context).pleaseAgreeToTerms),
                            ),
                          );
                        } else {
                          final position = await getLocation();
                          List<double> coordinates = [
                            position.latitude,
                            position.longitude,
                          ];
                          context.read<AuthCubit>().register(
                            email: emailController.text,
                            password: passwordController.text,
                            phone: phoneController.text,
                            displayName: fullNameController.text,
                            governorate: cityController.text,
                            role: role[indexRole],
                            coordinates: coordinates,
                          );
                        }
                      }
                    },
                  ),
                  16.h,
                  AlreadyHaveAccount(),
                  Constants.kbottomPadding.h,
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
    phoneController.dispose();
    fullNameController.dispose();
    cityController.dispose();
  }
}
