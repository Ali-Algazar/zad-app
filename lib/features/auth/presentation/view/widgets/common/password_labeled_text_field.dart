import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zad/core/utils/validators.dart';
import 'package:zad/features/auth/presentation/view/widgets/common/labeled_text_field.dart';
import 'package:zad/generated/l10n.dart';

class PasswordLabeledTextField extends StatefulWidget {
  const PasswordLabeledTextField({
    super.key,
    required this.passwordController,
    this.validator,
  });

  final TextEditingController passwordController;
  final String? validator;

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
        if (widget.validator != null) {
          return widget.validator;
        }
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

class NewPasswordLabeledTextField extends StatefulWidget {
  const NewPasswordLabeledTextField({
    super.key,
    required this.passwordController,
    this.onChanged,
  });

  final TextEditingController passwordController;
  final void Function(String)? onChanged;

  @override
  State<NewPasswordLabeledTextField> createState() =>
      _NewPasswordLabeledTextFieldState();
}

class _NewPasswordLabeledTextFieldState
    extends State<NewPasswordLabeledTextField> {
  bool _obscurePassword = true;
  @override
  Widget build(BuildContext context) {
    return LabeledTextField(
      onChanged: widget.onChanged,
      controller: widget.passwordController,
      keyboardType: TextInputType.visiblePassword,
      obscureText: _obscurePassword,
      labelText: S.of(context).newPasswordRequired,
      hintText: S.of(context).enterNewPassword,
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

class ConfirmPasswordLabeledTextField extends StatefulWidget {
  const ConfirmPasswordLabeledTextField({
    super.key,
    required this.passwordController,
    this.onChanged,
    required this.password,
  });

  final TextEditingController passwordController;
  final void Function(String)? onChanged;
  final String password;

  @override
  State<ConfirmPasswordLabeledTextField> createState() =>
      _ConfirmPasswordLabeledTextFieldState();
}

class _ConfirmPasswordLabeledTextFieldState
    extends State<ConfirmPasswordLabeledTextField> {
  bool _obscurePassword = true;
  @override
  Widget build(BuildContext context) {
    return LabeledTextField(
      onChanged: widget.onChanged,
      controller: widget.passwordController,
      keyboardType: TextInputType.visiblePassword,
      obscureText: _obscurePassword,
      labelText: S.of(context).confirmPassword,
      hintText: S.of(context).enterConfirmPassword,
      validator: (value) {
        return MyValidators.repeatPasswordValidator(
          password: widget.password,
          value: value,
        );
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
