import 'package:flutter/material.dart';
import 'package:zad/core/utils/app_colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.onTap,
    required this.child,
    this.isActtive = true,
  });

  final VoidCallback onTap;
  final Widget child;
  final bool isActtive;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: isActtive ? onTap : null,
      child: Container(
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
          color: isActtive
              ? AppColors.primary
              : AppColors.primary.withValues(alpha: 0.5),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(child: child),
      ),
    );
  }
}
