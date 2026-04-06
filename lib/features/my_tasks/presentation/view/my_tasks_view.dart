import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zad/core/services/get_it_service.dart';
import 'package:zad/core/utils/app_text_styles.dart';
import 'package:zad/features/home_donor/presentation/view/widgets/header/notifications_button.dart';
import 'package:zad/features/my_tasks/data/repositories/my_tasks_repository.dart';
import 'package:zad/features/my_tasks/presentation/cubit/my_tasks_cubit.dart';
import 'widgets/my_tasks_view_body.dart';

class MyTasksView extends StatelessWidget {
  const MyTasksView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          MyTasksCubit(repository: sl<MyTasksRepository>())..getMyTasks(),
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('مهامي', style: AppTextStyles.textStyle24),
          actions: [NotificationsButon(), SizedBox(width: 16)],
        ),
        body: MyTasksViewBody(),
      ),
    );
  }
}
