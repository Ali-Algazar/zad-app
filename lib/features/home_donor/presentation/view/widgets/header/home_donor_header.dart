import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zad/core/utils/app_colors.dart';
import 'package:zad/features/home_donor/presentation/cubit/home_donor_cubit.dart';
import 'package:zad/features/home_donor/presentation/cubit/home_donor_state.dart';
import 'package:zad/features/home_donor/presentation/view/widgets/header/home_donor_app_bar.dart';
import 'package:zad/features/home_donor/presentation/view/widgets/header/meals_saved_card.dart';
import 'package:zad/features/home_donor/presentation/view/widgets/header/stats_card.dart';
import 'package:zad/features/home_donor/presentation/view/widgets/header/stats_shimmer.dart';

class HomeDonorHeader extends StatelessWidget {
  const HomeDonorHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,

        border: Border(bottom: BorderSide(color: AppColors.gray, width: 1)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        spacing: 16,
        children: [
          HomeDonorAppBar(),
          BlocBuilder<HomeDonorCubit, HomeDonorState>(
            builder: (context, state) {
              if (state is HomeDonorLoading) {
                return Row(
                  spacing: 16,
                  children: [
                    StatsShimmer(
                      colors: [Color(0xFF006D5B), Color(0xFF004D42)],
                    ),
                    StatsShimmer(
                      colors: [
                        const Color(0xFFE87B35),
                        const Color(0xFFD46A25),
                      ],
                    ),
                  ],
                );
              }
              if (state is HomeDonorLoaded) {
                return Row(
                  spacing: 16,
                  children: [
                    StatsCard(kgDonated: state.stats.kgDonated),
                    MealsSavedCard(mealsSaved: state.stats.mealsSaved),
                  ],
                );
              }
              if (state is HomeDonorError) {
                return Text(
                  'Error: ${state.message}',
                  style: const TextStyle(color: Colors.red),
                );
              }
              return SizedBox();
            },
          ),
        ],
      ),
    );
  }
}
