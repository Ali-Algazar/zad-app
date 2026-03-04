import 'package:flutter/material.dart';
import 'package:zad/core/constants.dart';
import 'package:zad/core/helper/hive_helper.dart';
import 'package:zad/features/auth/data/model/user_model.dart';
import 'package:zad/features/home_donor/presentation/view/widgets/header/notifications_button.dart';
import 'package:zad/features/home_donor/presentation/view/widgets/header/welcome_header.dart';
import 'package:zad/features/home_donor/presentation/view/widgets/header/welcome_header_shimmer.dart';

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
              return WelcomeHeader(name: asyncSnapshot.data!.fullName);
            }
            return WelcomeHeaderShimmer();
          },
        ),
        const Spacer(),
        NotificationsButon(),
      ],
    );
  }
}
