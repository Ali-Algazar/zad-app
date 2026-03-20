import 'package:flutter/material.dart';

import 'package:zad/core/extensions/extensions.dart';
import 'package:zad/core/utils/app_colors.dart';
import 'package:zad/core/utils/app_text_styles.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    this.controller,
    this.hintText,
    this.suffixIcon,
    this.prefixIcon,
    this.validator,
    this.keyboardType,
    this.obscureText = false,
    this.onChanged,
    this.maxLength,
    this.errorText,
    this.fillColor,
    this.filled = false,
    this.maxLines = 1,
    this.enabled = true,
    this.onTap,
  });

  final TextEditingController? controller;
  final String? hintText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final bool obscureText;
  final void Function(String)? onChanged;
  final int? maxLength;
  final String? errorText;
  final Color? fillColor;
  final bool filled;
  final int? maxLines;
  final bool enabled;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      enabled: enabled,
      maxLength: maxLength,
      onChanged: onChanged,
      obscureText: obscureText,
      controller: controller,
      validator: validator,
      keyboardType: keyboardType,
      maxLines: maxLines,
      onTap: onTap,
      decoration: InputDecoration(
        fillColor: fillColor,
        filled: filled,
        contentPadding: 8.all,
        errorText: errorText,

        hintText: hintText,
        hintStyle: AppTextStyles.textStyle14r.copyWith(
          color: const Color(0xff757575),
        ),
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        prefixIconColor: AppColors.grayText,
      ),
    );
  }
}
