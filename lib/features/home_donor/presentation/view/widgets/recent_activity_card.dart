import 'package:flutter/material.dart';
import 'package:zad/core/extensions/extensions.dart';
import 'package:zad/core/utils/app_colors.dart';

class RecentActivityCard extends StatelessWidget {
  const RecentActivityCard({super.key});

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
                  'وجبات أرز ودجاج',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: const Color(0xFF1A1A1A),
                    fontSize: 16,

                    fontWeight: FontWeight.w600,
                    height: 1.50,
                  ),
                ),

                Text(
                  '25 وجبة',
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
                        'تم الاستلام',
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
                      'منذ 15 دقيقة',
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
}
