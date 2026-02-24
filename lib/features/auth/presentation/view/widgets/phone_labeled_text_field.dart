import 'package:flutter/material.dart';
import 'package:zad/core/utils/validators.dart';
import 'package:zad/features/auth/presentation/view/widgets/labeled_text_field.dart';
import 'package:zad/generated/l10n.dart';

class PhoneLabeledTextField extends StatelessWidget {
  const PhoneLabeledTextField({super.key, required this.phoneController});

  final TextEditingController phoneController;

  @override
  Widget build(BuildContext context) {
    return LabeledTextField(
      controller: phoneController,
      labelText: S.of(context).phoneNumberRequired,
      hintText: S.of(context).phoneExample,
      keyboardType: TextInputType.phone,
      prefixIcon: Icon(Icons.phone),
      validator: (value) {
        return MyValidators.phoneValidator(value);
      },
    );
  }
}
