import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zad/core/constants.dart';
import 'package:zad/core/extensions/extensions.dart';
import 'package:zad/core/utils/app_colors.dart';
import 'package:zad/core/utils/app_text_styles.dart';
import 'package:zad/core/widgets/custom_container.dart';
import 'package:zad/features/my_donations/presentation/view/widgets/status_container.dart';
import 'package:zad/features/my_tasks/data/models/task_model.dart';
import 'package:zad/features/my_tasks/presentation/cubit/my_tasks_cubit.dart';
import 'package:zad/features/my_tasks/presentation/cubit/my_tasks_state.dart';

class MyTasksViewBody extends StatefulWidget {
  const MyTasksViewBody({super.key});

  @override
  State<MyTasksViewBody> createState() => _MyTasksViewBodyState();
}

class _MyTasksViewBodyState extends State<MyTasksViewBody> {
  int index = 0;
  List<TaskModel> tasks = [];
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
          child: MyTasksStatusRow(
            onStatusChanged: (int value) {
              setState(() {
                index = value;
              });
            },
          ),
        ),
        16.h,
        BlocBuilder<MyTasksCubit, MyTasksState>(
          builder: (context, state) {
            if (state is MyTasksError) {
              return Center(child: Text(state.message));
            }
            if (state is MyTasksLoading) {
              return const Center(child: CircularProgressIndicator());
            }
            if (state is MyTasksLoaded && state.tasks.isEmpty) {
              return Center(child: Text('لا يوجد مهام'));
            }
            if (state is MyTasksLoaded) {
              if (index == 0) {
                tasks = state.tasks
                    .where((task) => task.status == 'Completed')
                    .toList();
              } else {
                tasks = state.tasks
                    .where((task) => task.status == 'OnTheWay')
                    .toList();
              }
              return Expanded(
                child: Padding(
                  padding: Constants.khorizontalPadding.horizontal,
                  child: ListView.separated(
                    itemBuilder: (context, index) =>
                        TaskItem(task: tasks[index]),
                    separatorBuilder: (context, index) => 16.h,
                    itemCount: tasks.length,
                  ),
                ),
              );
            }
            return SizedBox();
          },
        ),
      ],
    );
  }
}

class TaskItem extends StatelessWidget {
  const TaskItem({super.key, required this.task});
  final TaskModel task;

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      child: Column(
        children: [
          Row(
            children: [
              Text(
                task.volunteer.fullName,
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
                  getMealstatus(task.status),
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
                  child: Text(getMealCategory(task.donation.category)),
                ),
              ),
              12.w,
              Text(
                task.donation.title,
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
          Row(
            children: [
              Container(
                padding: 8.all,

                decoration: BoxDecoration(
                  color: Color(0xffF3F4F6),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    Icon(Icons.restaurant_menu),
                    8.w,
                    Text(
                      'الكمية: ${task.donation.quantity} ${task.donation.unit}',
                      style: AppTextStyles.textStyle14Bold,
                    ),
                  ],
                ),
              ),
              Spacer(),
              Text(
                'التفاصيل',
                style: AppTextStyles.textStyle14Bold.copyWith(
                  color: AppColors.primary,
                ),
              ),
              8.w,
              Icon(Icons.arrow_forward_ios, size: 16, color: AppColors.primary),
            ],
          ),
        ],
      ),
    );
  }

  String getMealstatus(String status) {
    switch (status) {
      case 'OnTheWay':
        return 'قيد التوصيل';

      default:
        return 'مكتملة';
    }
  }

  String getMealCategory(String category) {
    switch (category) {
      case 'ReadyMeals':
        return '🥙';
      case 'Bakery':
        return '🍞';
      case 'Dairy':
        return '🥛';
      case "Fruits":
        return '🍎';

      default:
        return '🥕';
    }
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
