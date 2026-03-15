import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zad/core/utils/app_colors.dart';
import 'package:zad/core/utils/app_text_styles.dart';
import 'package:zad/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:zad/generated/l10n.dart';

class LogoutConfirmButton extends StatelessWidget {
  const LogoutConfirmButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        await BlocProvider.of<AuthCubit>(context).logout(context);
      },
      child: Container(
        height: 46,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: AppColors.secondary,
        ),
        child: Center(
          child: Text(
            S.of(context).yes,
            style: AppTextStyles.textStyle16.copyWith(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
