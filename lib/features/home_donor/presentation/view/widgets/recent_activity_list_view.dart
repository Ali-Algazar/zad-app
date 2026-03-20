import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zad/features/home_donor/presentation/cubit/home_donor_cubit.dart';
import 'package:zad/features/home_donor/presentation/cubit/home_donor_state.dart';
import 'package:zad/features/home_donor/presentation/view/widgets/meal_order_card_shimmer.dart';
import 'package:zad/features/home_donor/presentation/view/widgets/recent_activity_card.dart';

class RecentActivityListView extends StatelessWidget {
  const RecentActivityListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeDonorCubit, HomeDonorState>(
      builder: (context, state) {
        if (state is HomeDonorError) {
          return Center(child: Text(state.message));
        }
        if (state is HomeDonorLoading) {
          return ListView.builder(
            itemCount: 4,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: MealOrderCardShimmer(),
            ),
          );
        }
        if (state is HomeDonorLoaded) {
          if (state.stats.recentActivities.isEmpty) {
            return Center(child: Text('No recent activities'));
          }
          return ListView.builder(
            itemCount: state.stats.recentActivities.length,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: RecentActivityCard(
                recentActivity: state.stats.recentActivities[index],
              ),
            ),
          );
        }
        return SizedBox();
      },
    );
  }
}
