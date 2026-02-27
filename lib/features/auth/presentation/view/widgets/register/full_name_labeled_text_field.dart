import 'package:flutter/material.dart';
import 'package:zad/core/utils/validators.dart';
import 'package:zad/features/auth/presentation/view/widgets/common/labeled_text_field.dart';
import 'package:zad/generated/l10n.dart';

class FullNameLabeledTextField extends StatelessWidget {
  const FullNameLabeledTextField({super.key, required this.fullNameController});

  final TextEditingController fullNameController;

  @override
  Widget build(BuildContext context) {
    return LabeledTextField(
      controller: fullNameController,
      labelText: S.of(context).fullNameRequired,
      hintText: S.of(context).enterFullName,
      keyboardType: TextInputType.name,
      prefixIcon: Icon(Icons.person),
      validator: (value) {
        return MyValidators.displayNamevalidator(value);
      },
    );
  }
}
