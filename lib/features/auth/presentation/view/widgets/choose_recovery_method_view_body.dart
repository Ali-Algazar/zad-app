import 'package:flutter/material.dart';
import 'package:zad/core/constants.dart';
import 'package:zad/core/extensions/extensions.dart';
import 'package:zad/features/auth/presentation/view/widgets/auth_header.dart';
import 'package:zad/features/auth/presentation/view/widgets/forgot_password_view_body.dart';
import 'package:zad/features/auth/presentation/view/widgets/recovery_method_card.dart';
import 'package:zad/generated/l10n.dart';

class ChooseRecoveryMethodViewBody extends StatelessWidget {
  const ChooseRecoveryMethodViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Constants.khorizontalPadding.horizontal,
      child: Column(
        children: [
          Constants.ktopPadding.h,
          CustomAppBar(title: S.of(context).forgotPasswordText),
          AuthHeader(
            title: S.of(context).forgotPasswordTitle,
            subtitle: S.of(context).chooseRecoveryMethodDesc,
          ),
          32.h,
          RecoveryMethodCard(
            title: S.of(context).email,
            subtitle: S.of(context).sendResetLinkViaEmail,
            icon: Icons.email_outlined,
            onTap: () {},
          ),
          16.h,
          RecoveryMethodCard(
            title: S.of(context).phoneNumberRequired,
            subtitle: S.of(context).sendVerificationCodeViaSMS,
            icon: Icons.phone_outlined,
            onTap: () {},
          ),
          24.h,
          const RecoveryTipBox(),
        ],
      ),
    );
  }
}
