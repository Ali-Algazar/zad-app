import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zad/core/services/get_it_service.dart';
import 'package:zad/features/add_new_donation/data/repositories/add_new_donation_repository.dart';
import 'package:zad/features/add_new_donation/presentation/cubit/add_new_donation_cubit.dart';
import 'widgets/add_new_donation_view_body.dart';

class AddNewDonationView extends StatelessWidget {
  const AddNewDonationView({super.key});
  static const String routeName = '/add-new-donation';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNewDonationCubit(sl<AddNewDonationRepository>()),
      child: const Scaffold(
        body: AddNewDonationViewBody(),
        backgroundColor: Colors.white,
      ),
    );
  }
}
