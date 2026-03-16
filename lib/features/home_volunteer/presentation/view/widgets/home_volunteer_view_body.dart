import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zad/core/constants.dart';
import 'package:zad/core/extensions/extensions.dart';
import 'package:zad/features/home_volunteer/presentation/cubit/home_volunteer_cubit.dart';
import 'package:zad/features/home_volunteer/presentation/cubit/home_volunteer_state.dart';
import 'package:zad/features/home_volunteer/presentation/view/widgets/home_volunteer_header.dart';
import 'package:zad/features/home_volunteer/presentation/view/widgets/nearby_orders_title.dart';
import 'package:zad/features/home_volunteer/presentation/view/widgets/order_item.dart';
import 'package:zad/features/home_volunteer/presentation/view/widgets/order_item_shimmer.dart';
import 'package:zad/features/home_volunteer/presentation/view/widgets/volunteer_stats_row.dart';

class HomeVolunteerViewBody extends StatelessWidget {
  const HomeVolunteerViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: [
              HomeVolunteerHeader(),
              26.h,
              Padding(
                padding: Constants.khorizontalPadding.horizontal,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    VolunteerStatsRow(),
                    26.h,
                    NearbyOrdersTitle(),
                    12.h,
                  ],
                ),
              ),
            ],
          ),
        ),
        BlocBuilder<HomeVolunteerCubit, HomeVolunteerState>(
          builder: (context, state) {
            if (state is HomeVolunteerError) {
              return SliverToBoxAdapter(
                child: Center(child: Text(state.message)),
              );
            } else if (state is HomeVolunteerLoading) {
              return SliverList.builder(
                itemCount: 5,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 8,
                  ),
                  child: OrderItemShimmer(),
                ),
              );
            }
            if (state is HomeVolunteerLoaded) {
              return SliverList.builder(
                itemCount: state.donations.length,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 8,
                  ),
                  child: OrderItem(
                    donationWithRestaurantModel: state.donations[index],
                  ),
                ),
              );
            }
            return SliverFillRemaining(
              child: Center(child: Text('لا توجد طلبات قريبة في الوقت الحالي')),
            );
          },
        ),
      ],
    );
  }
}
