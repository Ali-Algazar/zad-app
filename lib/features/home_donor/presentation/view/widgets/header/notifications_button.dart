import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zad/core/cubit/nav_cubit.dart';
import 'package:zad/core/utils/app_colors.dart';

class NotificationsButon extends StatelessWidget {
  const NotificationsButon({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.read<NavCubit>().changeNavIndex(2);
      },
      child: CircleAvatar(
        radius: 22,
        backgroundColor: AppColors.grayText.withValues(alpha: 0.2),
        child: Stack(
          children: [
            const Icon(
              Icons.notifications_none_outlined,
              color: Colors.white,
              size: 24,
            ),
            Positioned(
              right: 0,
              top: 0,
              child: Container(
                width: 8,
                height: 8,
                decoration: BoxDecoration(
                  color: Colors.redAccent,
                  shape: BoxShape.circle,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
