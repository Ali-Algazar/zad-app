import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zad/core/extensions/extensions.dart';
import 'package:zad/core/utils/app_colors.dart';
import 'package:zad/core/utils/app_text_styles.dart';
import 'package:zad/core/widgets/custom_container.dart';
import 'package:zad/features/home_donor/presentation/cubit/home_donor_cubit.dart';
import 'package:zad/features/home_donor/presentation/cubit/home_donor_state.dart';
import 'package:zad/features/profile/presentation/view/widgets/profile_stat_item.dart';

class ProfileStatsCard extends StatelessWidget {
  const ProfileStatsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'إحصائياتي',
            style: AppTextStyles.textStyle18.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          12.h,
          BlocBuilder<HomeDonorCubit, HomeDonorState>(
            builder: (context, state) {
              if (state is HomeDonorError) {
                return Text(
                  'حدث خطأ أثناء تحميل الإحصائيات',
                  style: AppTextStyles.textStyle14Bold.copyWith(
                    color: Colors.red,
                  ),
                );
              } else if (state is HomeDonorLoading) {
                return Center(child: CircularProgressIndicator());
              } else if (state is HomeDonorLoaded) {
                final stats = state.stats;
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  spacing: 16,
                  children: [
                    ProfileStatItem(
                      title: 'وجبات',
                      color: AppColors.primary,
                      value: stats.mealsSaved.total.toString(),
                    ),
                    ProfileStatItem(
                      title: 'كجم',
                      color: AppColors.secondary,
                      value: stats.kgDonated.total.toString(),
                    ),
                    ProfileStatItem(
                      title: 'تبرع',
                      color: Color(0xFF155DFC),
                      value: stats.totalDonationsCount.total.toString(),
                    ),
                  ],
                );
              }
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                spacing: 16,
                children: [
                  ProfileStatItem(
                    title: 'وجبات',
                    color: AppColors.primary,
                    value: '345',
                  ),
                  ProfileStatItem(
                    title: 'كجم',
                    color: AppColors.secondary,
                    value: '130',
                  ),
                  ProfileStatItem(
                    title: 'تبرع',
                    color: Color(0xFF155DFC),
                    value: '20',
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
