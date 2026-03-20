import 'package:flutter/material.dart';
import 'package:zad/core/extensions/extensions.dart';
import 'package:zad/core/helper_functions/time_ago.dart';
import 'package:zad/core/utils/app_colors.dart';
import 'package:zad/core/utils/app_text_styles.dart';
import 'package:zad/features/notifications/data/model/notification_model.dart';

class NotificationsCard extends StatelessWidget {
  const NotificationsCard({super.key, required this.notification});
  final NotificationModel notification;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: 12.all,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: notification.isRead ? AppColors.gray : AppColors.primary,
          width: 1,
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 1),
            blurRadius: 3,
            color: AppColors.darkText.withValues(alpha: 0.1),
          ),
          BoxShadow(
            offset: Offset(0, 1),
            blurRadius: 2,
            spreadRadius: -1,
            color: AppColors.darkText.withValues(alpha: 0.1),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(radius: 25, child: Icon(Icons.done)),
          12.w,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  notification.title,
                  style: AppTextStyles.textStyle16.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                12.h,
                Text(
                  notification.body,
                  style: AppTextStyles.textStyle14r,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                12.h,
                Text(
                  timeAgo(notification.createdAt.toIso8601String()),
                  style: AppTextStyles.caption,
                ),
              ],
            ),
          ),
          12.w,
          CircleAvatar(
            radius: 5,
            backgroundColor: notification.isRead
                ? Colors.transparent
                : AppColors.primary,
          ),
        ],
      ),
    );
  }
}
