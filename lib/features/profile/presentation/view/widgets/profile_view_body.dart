import 'package:flutter/material.dart';
import 'package:zad/core/constants.dart';
import 'package:zad/core/extensions/extensions.dart';
import 'package:zad/features/profile/presentation/view/widgets/logout_button.dart';
import 'package:zad/features/profile/presentation/view/widgets/profile_header.dart';
import 'package:zad/features/profile/presentation/view/widgets/profile_stats_card.dart';
import 'package:zad/features/profile/presentation/view/widgets/settings_card.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ProfileHeader(),
          16.h,
          Padding(
            padding: Constants.khorizontalPadding.horizontal,
            child: Column(
              children: [
                ProfileStatsCard(),
                16.h,
                SettingsCard(),
                16.h,
                LogoutButton(),
                Constants.kbottomPadding.h,
              ],
            ),
          ),
        ],
      ),
    );
  }
}
