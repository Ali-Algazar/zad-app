import 'package:flutter/material.dart';
import 'package:zad/core/utils/app_colors.dart';

class CustomDots extends StatelessWidget {
  const CustomDots({super.key, required this.aIndex});
  final int aIndex;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 12,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        itemBuilder: (context, index) => Container(
          width: aIndex == index ? 30 : 12,
          height: 12,
          margin: const EdgeInsets.symmetric(horizontal: 3),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            color: aIndex == index ? AppColors.primary : AppColors.grayText,
          ),
        ),
      ),
    );
  }
}
