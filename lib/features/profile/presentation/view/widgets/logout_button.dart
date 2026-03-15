import 'package:flutter/material.dart';
import 'package:zad/core/utils/app_text_styles.dart';
import 'package:zad/features/profile/presentation/view/widgets/logout_confirmation_dialog.dart';

class LogoutButton extends StatelessWidget {
  const LogoutButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        logoutDialog(context);
      },
      child: Text(
        'تسجيل الخروج',
        style: AppTextStyles.textStyle20.copyWith(color: Colors.red),
      ),
    );
  }

  Future<dynamic> logoutDialog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return LogoutConfirmationDialog();
      },
    );
  }
}
