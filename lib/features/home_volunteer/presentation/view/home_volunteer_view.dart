import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zad/core/services/get_it_service.dart';
import 'package:zad/features/home_volunteer/data/repositories/home_volunteer_repository.dart';
import 'package:zad/features/home_volunteer/presentation/cubit/home_volunteer_cubit.dart';
import 'widgets/home_volunteer_view_body.dart';

class HomeVolunteerView extends StatelessWidget {
  const HomeVolunteerView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          HomeVolunteerCubit(sl<HomeVolunteerRepository>())
            ..getNearbyDonations(),
      child: const Scaffold(body: HomeVolunteerViewBody()),
    );
  }
}
