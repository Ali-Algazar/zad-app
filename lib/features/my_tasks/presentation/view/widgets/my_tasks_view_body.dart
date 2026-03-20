import 'package:flutter/material.dart';
import 'package:zad/core/constants.dart';
import 'package:zad/core/extensions/extensions.dart';
import 'package:zad/core/utils/app_colors.dart';
import 'package:zad/core/utils/app_text_styles.dart';
import 'package:zad/core/widgets/custom_container.dart';
import 'package:zad/features/my_donations/presentation/view/widgets/status_container.dart';

class MyTasksViewBody extends StatelessWidget {
  const MyTasksViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: Constants.khorizontalPadding.all,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border(
              bottom: BorderSide(width: 1.3, color: Colors.grey.shade300),
            ),
          ),
          child: MyTasksStatusRow(onStatusChanged: (int value) {}),
        ),
        16.h,
        Expanded(
          child: Padding(
            padding: Constants.khorizontalPadding.horizontal,
            child: Column(
              children: [
                CustomContainer(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'مطعم البرنس',
                            style: AppTextStyles.textStyle14Bold,
                          ),
                          Spacer(),
                          Container(
                            padding: 8.all,
                            decoration: BoxDecoration(
                              color: AppColors.success,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Text(
                              'مكتملة',
                              style: AppTextStyles.textStyle14Bold.copyWith(
                                color: AppColors.primary,
                              ),
                            ),
                          ),
                        ],
                      ),
                      8.h,
                      Row(
                        children: [
                          Container(
                            padding: 8.all,
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Color(0x33E87A3E),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: FittedBox(
                              child: Icon(
                                Icons.restaurant_sharp,
                                color: AppColors.secondary,
                              ),
                            ),
                          ),
                          12.w,
                          Text(
                            '25 وجبة دجاج وبطاطس',
                            style: TextStyle(
                              color: const Color(0xFF101828),
                              fontSize: 18,
                              fontFamily: 'Cairo',
                              fontWeight: FontWeight.w700,
                              height: 1.25,
                            ),
                          ),
                        ],
                      ),
                      12.h,
                      Divider(thickness: 1.3, color: Colors.grey.shade300),
                      8.h,
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class MyTasksStatusRow extends StatefulWidget {
  const MyTasksStatusRow({super.key, required this.onStatusChanged});
  final ValueChanged<int>? onStatusChanged;

  @override
  State<MyTasksStatusRow> createState() => _MyTasksStatusRowState();
}

class _MyTasksStatusRowState extends State<MyTasksStatusRow> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 16,
      children: [
        StatusContainer(
          isActive: index == 0,
          titel: 'مكتملة',
          onTap: () {
            if (index != 0) {
              setState(() {
                index = 0;
              });
              widget.onStatusChanged!(0);
            }
          },
        ),
        StatusContainer(
          isActive: index == 1,
          titel: 'قيد التوصيل',
          onTap: () {
            if (index != 1) {
              setState(() {
                index = 1;
              });
              widget.onStatusChanged!(1);
            }
          },
        ),
      ],
    );
  }
}
