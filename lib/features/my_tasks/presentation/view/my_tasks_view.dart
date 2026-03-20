import 'package:flutter/material.dart';
import 'package:zad/core/utils/app_text_styles.dart';
import 'package:zad/features/home_donor/presentation/view/widgets/header/notifications_button.dart';
import 'widgets/my_tasks_view_body.dart';

class MyTasksView extends StatelessWidget {
  const MyTasksView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('مهامي', style: AppTextStyles.textStyle24),
        actions: [NotificationsButon(), SizedBox(width: 16)],
      ),
      body: MyTasksViewBody(),
    );
  }
}
