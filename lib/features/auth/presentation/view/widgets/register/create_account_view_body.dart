import 'package:flutter/material.dart';
import 'package:zad/core/constants.dart';
import 'package:zad/core/extensions/extensions.dart';
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

  @override
  Widget build(BuildContext context) {
    List<String> roleTitle = [
      S.of(context).donorRoleDesc,
      S.of(context).volunteerRoleDesc,
      S.of(context).recipientRoleDesc,
    ];

    return Form(
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
              FullNameLabeledTextField(fullNameController: fullNameController),
              16.h,
              EmailLabeledTextField(emailController: emailController),
              16.h,
              PasswordLabeledTextField(passwordController: passwordController),
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
              CreateAccountButton(formKey: _formKey),
              16.h,
              AlreadyHaveAccount(),
              Constants.kbottomPadding.h,
            ],
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
