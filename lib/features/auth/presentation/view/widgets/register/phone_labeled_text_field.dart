import 'package:flutter/material.dart';
import 'package:zad/core/utils/validators.dart';
import 'package:zad/features/auth/presentation/view/widgets/common/labeled_text_field.dart';
import 'package:zad/generated/l10n.dart';

class PhoneLabeledTextField extends StatelessWidget {
  const PhoneLabeledTextField({
    super.key,
    required this.phoneController,
    this.onChanged,
    this.maxLength,
    this.errorText,
  });

  final TextEditingController phoneController;
  final void Function(String)? onChanged;
  final int? maxLength;
  final String? errorText;

  @override
  Widget build(BuildContext context) {
    return LabeledTextField(
      onChanged: onChanged,
      controller: phoneController,
      labelText: S.of(context).phoneNumberRequired,
      hintText: S.of(context).phoneExample,
      keyboardType: TextInputType.phone,
      prefixIcon: Icon(Icons.phone),
      errorText: errorText,
      validator: (value) {
        return MyValidators.phoneValidator(value);
      },
    );
  }
}
