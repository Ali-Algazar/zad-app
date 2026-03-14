import 'package:flutter/material.dart';
import 'package:zad/core/constants.dart';
import 'package:zad/core/extensions/extensions.dart';
import 'package:zad/core/utils/app_colors.dart';
import 'package:zad/core/utils/app_text_styles.dart';
import 'package:zad/features/my_donations/presentation/view/widgets/my_donations_view_body.dart';

class NotificationsViewBody extends StatelessWidget {
  const NotificationsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NotificationsHeader(),
        16.h,
        Padding(
          padding: Constants.khorizontalPadding.horizontal,
          child: Column(
            children: [
              Container(
                width: double.infinity,
                padding: 12.all,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: AppColors.primary, width: 1),
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
                            'تم استلام التبرع',
                            style: AppTextStyles.textStyle16.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          12.h,
                          Text(
                            'قام المتطوع أحمد محمد باستلام تبرع "وجبات أرز ودجاج"',
                            style: AppTextStyles.textStyle14r,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          12.h,
                          Text('منذ 5 دقائق', style: AppTextStyles.caption),
                        ],
                      ),
                    ),
                    12.w,
                    CircleAvatar(radius: 5),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class NotificationsHeader extends StatelessWidget {
  const NotificationsHeader({super.key});

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
          NotificationsStatusRow(),
          16.h,
        ],
      ),
    );
  }
}

class NotificationsStatusRow extends StatefulWidget {
  const NotificationsStatusRow({super.key});

  @override
  State<NotificationsStatusRow> createState() => _NotificationsStatusRowState();
}

class _NotificationsStatusRowState extends State<NotificationsStatusRow> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 16,
      children: [
        StatusContainer(
          isActive: index == 0,
          titel: 'الكل',
          onTap: () {
            if (index != 0) {
              setState(() {
                index = 0;
              });
            }
          },
        ),
        StatusContainer(
          isActive: index == 1,
          titel: 'غير مقروءة',
          onTap: () {
            if (index != 1) {
              setState(() {
                index = 1;
              });
            }
          },
        ),
      ],
    );
  }
}
