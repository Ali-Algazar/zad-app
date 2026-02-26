import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zad/core/utils/validators.dart';
import 'package:zad/features/auth/presentation/view/widgets/labeled_text_field.dart';
import 'package:zad/generated/l10n.dart';

class PasswordLabeledTextField extends StatefulWidget {
  const PasswordLabeledTextField({super.key, required this.passwordController});

  final TextEditingController passwordController;

  @override
  State<PasswordLabeledTextField> createState() =>
      _PasswordLabeledTextFieldState();
}

class _PasswordLabeledTextFieldState extends State<PasswordLabeledTextField> {
  bool _obscurePassword = true;
  @override
  Widget build(BuildContext context) {
    return LabeledTextField(
      controller: widget.passwordController,
      keyboardType: TextInputType.visiblePassword,
      obscureText: _obscurePassword,
      labelText: S.of(context).password,
      hintText: S.of(context).enterPassword,
      validator: (value) {
        return MyValidators.passwordValidator(value);
      },
      prefixIcon: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SvgPicture.asset('assets/svg/lock.svg'),
      ),
      suffixIcon: IconButton(
        onPressed: () {
          setState(() {
            _obscurePassword = !_obscurePassword;
          });
        },
        icon: SvgPicture.asset(
          _obscurePassword ? 'assets/svg/eye.svg' : 'assets/svg/eye-off.svg',
        ),
      ),
    );
  }
}
