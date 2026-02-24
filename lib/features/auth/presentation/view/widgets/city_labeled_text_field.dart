import 'package:flutter/material.dart';
import 'package:zad/core/utils/validators.dart';
import 'package:zad/features/auth/presentation/view/widgets/labeled_text_field.dart';
import 'package:zad/generated/l10n.dart';

class CityLabeledTextField extends StatelessWidget {
  const CityLabeledTextField({super.key, required this.cityController});

  final TextEditingController cityController;

  @override
  Widget build(BuildContext context) {
    return LabeledTextField(
      controller: cityController,
      labelText: S.of(context).city,
      hintText: S.of(context).enterCity,
      keyboardType: TextInputType.streetAddress,
      prefixIcon: Icon(Icons.gps_fixed_sharp),
      validator: (value) {
        return MyValidators.displayNamevalidator(value);
      },
    );
  }
}
