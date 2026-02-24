import 'package:flutter/material.dart';
import 'package:zad/core/extensions/extensions.dart';
import 'package:zad/core/utils/app_colors.dart';
import 'package:zad/core/utils/app_text_styles.dart';
import 'package:zad/core/widgets/custom_text_form_field.dart';

class LabeledTextField extends StatelessWidget {
  const LabeledTextField({
    super.key,
    this.controller,
    this.hintText,
    this.suffixIcon,
    this.prefixIcon,
    this.validator,
    this.keyboardType,
    required this.labelText,
    this.obscureText,
  });

  final TextEditingController? controller;
  final String labelText;
  final String? hintText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final bool? obscureText;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(labelText, style: AppTextStyles.textStyle14Medium),
            Text(
              '*',
              style: AppTextStyles.textStyle14Medium.copyWith(
                color: AppColors.primary,
              ),
            ),
          ],
        ),
        8.h,
        CustomTextFormField(
          hintText: hintText,
          prefixIcon: prefixIcon,
          keyboardType: keyboardType,
          validator: validator,
          controller: controller,
          suffixIcon: suffixIcon,
          obscureText: obscureText ?? false,
        ),
      ],
    );
  }
}
