import 'package:flutter/material.dart';
import 'package:zad/core/extensions/extensions.dart';
import 'package:zad/core/helper_functions/time_ago.dart';
import 'package:zad/core/utils/app_colors.dart';
import 'package:zad/features/home_donor/data/model/dashboard_model.dart';

class RecentActivityCard extends StatelessWidget {
  const RecentActivityCard({super.key, required this.recentActivity});
  final RecentActivity recentActivity;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: 16.all,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.gray, width: 1),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: 12.all,
            decoration: BoxDecoration(
              color: AppColors.primary.withValues(alpha: 0.1),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(
              Icons.restaurant_menu_outlined,
              color: AppColors.primary,
              size: 28,
            ),
          ),
          12.w,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  recentActivity.title,
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: const Color(0xFF1A1A1A),
                    fontSize: 16,

                    fontWeight: FontWeight.w600,
                    height: 1.50,
                  ),
                ),

                Text(
                  '${recentActivity.quantity} ${recentActivity.unit}',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: const Color(0xFF4A5565),
                    fontSize: 14,

                    fontWeight: FontWeight.w500,
                    height: 1.43,
                  ),
                ),
                6.h,
                Row(
                  children: [
                    Container(
                      padding: 8.all,
                      decoration: BoxDecoration(
                        color: AppColors.primary.withValues(alpha: 0.1),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Text(
                        getstatus(recentActivity.status),
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: const Color(0xFF1447E6),
                          fontSize: 12,
                          fontFamily: 'Cairo',
                          fontWeight: FontWeight.w600,
                          height: 1.33,
                        ),
                      ),
                    ),
                    Spacer(),
                    Icon(Icons.timelapse_outlined, color: AppColors.primary),
                    4.w,
                    Text(
                      timeAgo(recentActivity.createdAt.toIso8601String()),
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: const Color(0xFF6A7282),
                        fontSize: 12,
                        fontFamily: 'Cairo',
                        fontWeight: FontWeight.w500,
                        height: 1.33,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  String getstatus(String status) {
    switch (status) {
      case 'Available':
        return 'متاح';

      case 'Claimed':
        return 'المتطوع في الطريق';

      default:
        return 'تم الاستلام';
    }
  }
}
