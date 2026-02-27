import 'package:flutter/material.dart';
import 'package:zad/core/utils/validators.dart';
import 'package:zad/features/auth/presentation/view/widgets/common/labeled_text_field.dart';
import 'package:zad/generated/l10n.dart';

class EmailLabeledTextField extends StatelessWidget {
  const EmailLabeledTextField({
    super.key,
    required this.emailController,
    this.onChanged,
  });

  final TextEditingController emailController;

  final void Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return LabeledTextField(
      onChanged: onChanged,
      controller: emailController,
      labelText: S.of(context).email,
      hintText: S.of(context).enterEmail,
      keyboardType: TextInputType.emailAddress,
      prefixIcon: Icon(Icons.email_outlined),
      validator: (value) {
        return MyValidators.emailValidator(value);
      },
    );
  }
}
