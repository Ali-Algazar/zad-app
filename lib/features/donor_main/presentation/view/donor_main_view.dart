import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zad/core/services/get_it_service.dart';
import 'package:zad/features/home_donor/data/repositories/home_donor_repository.dart';
import 'package:zad/features/home_donor/presentation/cubit/home_donor_cubit.dart';
import 'package:zad/features/notifications/data/repositories/notifications_repository.dart';
import 'package:zad/features/notifications/presentation/cubit/notifications_cubit.dart';
import 'widgets/donor_main_view_body.dart';

class DonorMainView extends StatelessWidget {
  const DonorMainView({super.key});
  static const routeName = '/donor-main';

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              NotificationsCubit(sl<NotificationsRepository>())
                ..getNotifications(),
        ),
        BlocProvider(
          create: (context) =>
              HomeDonorCubit(sl<HomeDonorRepository>())..getDonorHomeStats(),
        ),
      ],
      child: const Scaffold(body: SafeArea(child: DonorMainViewBody())),
    );
  }
}
