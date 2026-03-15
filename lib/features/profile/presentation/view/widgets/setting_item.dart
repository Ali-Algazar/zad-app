import 'package:flutter/material.dart';
import 'package:zad/core/utils/app_colors.dart';
import 'package:zad/core/utils/app_text_styles.dart';

class SettingItem extends StatelessWidget {
  const SettingItem({
    super.key,
    required this.bg,
    required this.iconColor,
    required this.icon,
    required this.titel,
    required this.onTap,
    this.isEnd = false,
  });
  final Color bg;
  final Color iconColor;
  final IconData icon;
  final String titel;
  final VoidCallback onTap;
  final bool isEnd;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: bg,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(icon, color: iconColor),
            ),
            Spacer(),
            Text(titel, style: AppTextStyles.textStyle14Bold),
            Spacer(),
            IconButton(
              onPressed: onTap,
              icon: Icon(Icons.arrow_forward_ios, size: 20),
            ),
          ],
        ),
        isEnd ? SizedBox() : Divider(color: AppColors.gray),
      ],
    );
  }
}
