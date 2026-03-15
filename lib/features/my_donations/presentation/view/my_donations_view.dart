import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zad/core/services/get_it_service.dart';
import 'package:zad/features/my_donations/data/repositories/my_donations_repository.dart';
import 'package:zad/features/my_donations/presentation/cubit/my_donations_cubit.dart';
import 'widgets/my_donations_view_body.dart';

class MyDonationsView extends StatelessWidget {
  const MyDonationsView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          MyDonationsCubit(sl<MyDonationsRepository>())..getMyDonations(),
      child: const Scaffold(body: MyDonationsViewBody()),
    );
  }
}
