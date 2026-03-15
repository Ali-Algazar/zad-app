import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zad/core/constants.dart';
import 'package:zad/core/extensions/extensions.dart';
import 'package:zad/features/home_donor/presentation/view/widgets/meal_order_card_shimmer.dart';
import 'package:zad/features/my_donations/data/model/donation_model.dart';
import 'package:zad/features/my_donations/presentation/cubit/my_donations_cubit.dart';
import 'package:zad/features/my_donations/presentation/cubit/my_donations_state.dart';
import 'package:zad/features/my_donations/presentation/view/widgets/my_donations_header.dart';
import 'package:zad/features/my_donations/presentation/view/widgets/recent_activity_card.dart';

class MyDonationsViewBody extends StatefulWidget {
  const MyDonationsViewBody({super.key});

  @override
  State<MyDonationsViewBody> createState() => _MyDonationsViewBodyState();
}

class _MyDonationsViewBodyState extends State<MyDonationsViewBody> {
  List<DonationModel> donations = [];
  int statusIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MyDonationsHeader(
          onStatusChanged: (index) {
            setState(() {
              statusIndex = index;
            });
          },
        ),
        16.h,
        Expanded(
          child: Padding(
            padding: Constants.khorizontalPadding.horizontal,
            child: BlocBuilder<MyDonationsCubit, MyDonationsState>(
              builder: (context, state) {
                if (state is MyDonationsError) {
                  return Center(child: Text(state.message));
                } else if (state is MyDonationsLoading) {
                  return ListView.builder(
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.only(bottom: 12),
                      child: MealOrderCardShimmer(),
                    ),
                    itemCount: 5,
                  );
                } else if (state is MyDonationsLoaded &&
                    state.donations.isEmpty) {
                  return Center(child: Text('لا توجد تبرعات بعد'));
                } else if (state is MyDonationsLoaded) {
                  if (statusIndex == 1) {
                    donations = state.donations
                        .where((donation) => donation.status != 'Completed')
                        .toList();
                  } else if (statusIndex == 2) {
                    donations = state.donations
                        .where((donation) => donation.status == 'Completed')
                        .toList();
                  } else {
                    donations = state.donations;
                  }
                  return ListView.builder(
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.only(bottom: 12),
                      child: RecentActivityCard(donation: donations[index]),
                    ),
                    itemCount: donations.length,
                  );
                }
                return SizedBox();
              },
            ),
          ),
        ),
      ],
    );
  }
}
