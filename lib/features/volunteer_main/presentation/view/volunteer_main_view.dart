import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zad/core/services/get_it_service.dart';
import 'package:zad/features/notifications/data/repositories/notifications_repository.dart';
import 'package:zad/features/notifications/presentation/cubit/notifications_cubit.dart';
import 'widgets/volunteer_main_view_body.dart';

class VolunteerMainView extends StatelessWidget {
  const VolunteerMainView({super.key});
  static const routeName = '/volunteer-main';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          NotificationsCubit(sl<NotificationsRepository>())..getNotifications(),

      child: const Scaffold(body: SafeArea(child: VolunteerMainViewBody())),
    );
  }
}
