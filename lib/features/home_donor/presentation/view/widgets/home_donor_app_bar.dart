import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zad/core/constants.dart';
import 'package:zad/core/cubit/nav_cubit.dart';
import 'package:zad/core/extensions/extensions.dart';
import 'package:zad/core/helper/hive_helper.dart';
import 'package:zad/core/utils/app_colors.dart';
import 'package:zad/core/utils/app_text_styles.dart';
import 'package:zad/features/auth/data/model/user_model.dart';
import 'package:zad/features/home_donor/presentation/view/widgets/welcome_header_shimmer.dart';
import 'package:zad/generated/l10n.dart';

class HomeDonorAppBar extends StatelessWidget {
  const HomeDonorAppBar({super.key});
  Future<UserModel> getUserData() async {
    final user = await HiveHelper.getData(
      key: Constants.userHiveKey,
      boxName: Constants.userBox,
    );
    return user;
  }

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
          Row(
            children: [
              FutureBuilder(
                future: getUserData(),
                builder: (context, asyncSnapshot) {
                  if (asyncSnapshot.connectionState ==
                      ConnectionState.waiting) {
                    return const WelcomeHeaderShimmer();
                  }
                  if (asyncSnapshot.hasData) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          S.of(context).hello,
                          style: AppTextStyles.textStyle16.copyWith(
                            color: AppColors.grayText,
                          ),
                        ),
                        Text(
                          asyncSnapshot.data!.fullName,
                          style: AppTextStyles.textStyle24,
                        ),
                      ],
                    );
                  }
                  return WelcomeHeaderShimmer();
                },
              ),
              const Spacer(),
              InkWell(
                onTap: () {
                  context.read<NavCubit>().changeNavIndex(2);
                },
                child: CircleAvatar(
                  radius: 22,
                  backgroundColor: AppColors.grayText.withValues(alpha: 0.22),
                  child: Stack(
                    children: [
                      const Icon(
                        Icons.notifications_none_outlined,
                        color: Colors.white,
                        size: 24,
                      ),
                      Positioned(
                        right: 0,
                        top: 0,
                        child: Container(
                          width: 8,
                          height: 8,
                          decoration: BoxDecoration(
                            color: Colors.redAccent,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Row(
            spacing: 16,
            children: [
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(16),
                  decoration: ShapeDecoration(
                    gradient: LinearGradient(
                      begin: Alignment(0.50, 0.00),
                      end: Alignment(0.50, 1.00),
                      colors: [
                        const Color(0xFF006D5B),
                        const Color(0xFF004D42),
                      ],
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  child: Column(
                    spacing: 4,
                    children: [
                      Text(
                        S.of(context).totalDonations,
                        style: AppTextStyles.textStyle14r.copyWith(
                          color: Colors.white.withValues(alpha: 0.9),
                        ),
                      ),
                      Text(
                        '150 ${S.of(context).kg}',
                        style: AppTextStyles.textStyle24.copyWith(
                          color: Colors.white,
                        ),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.arrow_outward_outlined,
                            color: Colors.white.withValues(alpha: 0.9),
                          ),
                          4.w,
                          Text(
                            ' 15% ${S.of(context).thisMonth} ',
                            style: AppTextStyles.textStyle14r.copyWith(
                              color: Colors.white.withValues(alpha: 0.9),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(16),
                  decoration: ShapeDecoration(
                    gradient: LinearGradient(
                      begin: Alignment(0.50, 0.00),
                      end: Alignment(0.50, 1.00),
                      colors: [
                        const Color(0xFFE87B35),
                        const Color(0xFFD46A25),
                      ],
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  child: Column(
                    spacing: 4,
                    children: [
                      Text(
                        S.of(context).mealsSaved,
                        style: AppTextStyles.textStyle14r.copyWith(
                          color: Colors.white.withValues(alpha: 0.9),
                        ),
                      ),
                      Text(
                        '50 ${S.of(context).meal}',
                        style: AppTextStyles.textStyle24.copyWith(
                          color: Colors.white,
                        ),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.arrow_outward_outlined,
                            color: Colors.white.withValues(alpha: 0.9),
                          ),
                          4.w,
                          Text(
                            ' 10% ${S.of(context).thisMonth} ',
                            style: AppTextStyles.textStyle14r.copyWith(
                              color: Colors.white.withValues(alpha: 0.9),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
