import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zad/core/constants.dart';
import 'package:zad/core/cubit/nav_cubit.dart';
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
    return Row(
      children: [
        FutureBuilder(
          future: getUserData(),
          builder: (context, asyncSnapshot) {
            if (asyncSnapshot.connectionState == ConnectionState.waiting) {
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
    );
  }
}
