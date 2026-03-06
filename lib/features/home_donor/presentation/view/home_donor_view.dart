import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zad/core/extensions/extensions.dart';
import 'package:zad/core/services/get_it_service.dart';
import 'package:zad/features/home_donor/data/repositories/home_donor_repository.dart';
import 'package:zad/features/home_donor/presentation/cubit/home_donor_cubit.dart';
import 'package:zad/features/home_donor/presentation/view/widgets/header/home_donor_header.dart';
import 'package:zad/features/home_donor/presentation/view/widgets/home_donor_view_body.dart';

class HomeDonorView extends StatelessWidget {
  const HomeDonorView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          HomeDonorCubit(sl<HomeDonorRepository>())..getDonorHomeStats(),
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [HomeDonorHeader(), 24.h, HomeDonorViewBody()],
          ),
        ),
      ),
    );
  }
}
