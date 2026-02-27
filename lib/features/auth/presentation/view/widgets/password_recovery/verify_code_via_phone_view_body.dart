import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:zad/core/constants.dart';
import 'package:zad/core/extensions/extensions.dart';
import 'package:zad/core/utils/app_colors.dart';
import 'package:zad/core/utils/app_text_styles.dart';
import 'package:zad/core/widgets/custom_button.dart';
import 'package:zad/core/widgets/custom_dialog.dart';
import 'package:zad/features/auth/presentation/view/reset_password_view.dart';
import 'package:zad/features/auth/presentation/view/widgets/common/auth_header.dart';
import 'package:zad/features/auth/presentation/view/widgets/password_recovery/resend_code_timer.dart';
import 'package:zad/generated/l10n.dart';

class VerifyCodeViaPhoneViewBody extends StatefulWidget {
  const VerifyCodeViaPhoneViewBody({super.key, required this.phoneNumber});
  final String phoneNumber;

  @override
  State<VerifyCodeViaPhoneViewBody> createState() =>
      _VerifyCodeViaPhoneViewBodyState();
}

class _VerifyCodeViaPhoneViewBodyState
    extends State<VerifyCodeViaPhoneViewBody> {
  final List<TextEditingController> otpControllers = List.generate(
    4,
    (_) => TextEditingController(),
  );

  final List<FocusNode> focusNodes = List.generate(4, (_) => FocusNode());

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      focusNodes.first.requestFocus();
    });
  }

  @override
  void dispose() {
    for (var controller in otpControllers) {
      controller.dispose();
    }
    for (var node in focusNodes) {
      node.dispose();
    }
    super.dispose();
  }

  void _submitCode() {
    final otpCode = otpControllers.map((e) => e.text).join();

    if (otpCode.length < 4) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text("ادخل الكود كامل")));
      return;
    }
    if (otpCode != "6666") {
      showDialog(
        context: context,
        builder: (context) => CustomDialog(
          title: S.of(context).invalidOtpCode,
          description: S.of(context).otpMismatchErrorMsg,
          buttonText: S.of(context).tryAgain,
          onButtonTap: () {
            Navigator.pop(context);
          },
          icon: Icons.close,
          iconColor: Colors.red,
        ),
      );
    } else {
      Navigator.pushReplacementNamed(context, ResetPasswordView.routeName);
    }

    print("OTP Code: $otpCode");
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Constants.khorizontalPadding.horizontal,
      child: Column(
        children: [
          Constants.ktopPadding.h,
          AuthHeader(
            title: S.of(context).verifyPhoneNumber,
            subtitle:
                "${S.of(context).verificationCodeSentTo}\n${widget.phoneNumber.replaceRange(2, 9, '******')}",
          ),
          40.h,

          OtpFieldsGroup(
            otpControllers: otpControllers,
            focusNodes: focusNodes,
          ),

          24.h,
          const ResendCodeTimer(),
          const Spacer(),

          CustomButton(
            onTap: _submitCode,
            child: Text(
              S.of(context).confirm,
              style: AppTextStyles.textStyle16.copyWith(
                color: AppColors.background,
              ),
            ),
          ),

          Constants.kbottomPadding.h,
        ],
      ),
    );
  }
}

class OtpFieldsGroup extends StatelessWidget {
  const OtpFieldsGroup({
    super.key,
    required this.otpControllers,
    required this.focusNodes,
  });

  final List<TextEditingController> otpControllers;
  final List<FocusNode> focusNodes;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(
        otpControllers.length,
        (index) => OtpIndividualField(
          controller: otpControllers[index],
          focusNode: focusNodes[index],
          index: index,
          focusNodes: focusNodes,
        ),
      ),
    );
  }
}

class OtpIndividualField extends StatelessWidget {
  const OtpIndividualField({
    super.key,
    required this.controller,
    required this.focusNode,
    required this.index,
    required this.focusNodes,
  });

  final TextEditingController controller;
  final FocusNode focusNode;
  final int index;
  final List<FocusNode> focusNodes;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 65,
      height: 65,
      child: TextFormField(
        controller: controller,
        focusNode: focusNode,
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
        maxLength: 1,
        onChanged: (value) {
          if (value.length == 1) {
            if (index < focusNodes.length - 1) {
              focusNodes[index + 1].requestFocus();
            } else {
              focusNode.unfocus();
            }
          } else if (value.isEmpty && index > 0) {
            focusNodes[index - 1].requestFocus();
          }
        },
        decoration: InputDecoration(
          counterText: "",
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: AppColors.grayText),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: AppColors.primary),
          ),
        ),
      ),
    );
  }
}
