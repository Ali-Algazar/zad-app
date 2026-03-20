import 'package:flutter/material.dart';
import 'package:zad/core/constants.dart';
import 'package:zad/core/extensions/extensions.dart';
import 'package:zad/core/utils/app_text_styles.dart';
import 'package:zad/features/notifications/presentation/view/widgets/notifications_status_row.dart';

class NotificationsHeader extends StatelessWidget {
  const NotificationsHeader({super.key, required this.onStatusChanged});
  final ValueChanged<int> onStatusChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: Constants.khorizontalPadding.horizontal,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(bottom: BorderSide(width: 1.3)),
      ),
      child: Column(
        children: [
          Constants.ktopPadding.h,
          Row(
            children: [
              Text(
                'الإشعارات',
                style: AppTextStyles.textStyle24.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Spacer(),
              TextButton(
                onPressed: () {},
                child: Text(
                  'تعليم الكل كمقروء',
                  style: AppTextStyles.textStyle14Bold,
                ),
              ),
            ],
          ),
          16.h,
          NotificationsStatusRow(onStatusChanged: onStatusChanged),
          16.h,
        ],
      ),
    );
  }
}
