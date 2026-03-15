import 'package:flutter/material.dart';
import 'package:zad/core/helper_functions/get_user_data.dart';
import 'package:zad/features/home_donor/presentation/view/widgets/header/notifications_button.dart';
import 'package:zad/features/home_donor/presentation/view/widgets/header/welcome_header.dart';
import 'package:zad/features/home_donor/presentation/view/widgets/header/welcome_header_shimmer.dart';

class HomeDonorAppBar extends StatelessWidget {
  const HomeDonorAppBar({super.key});

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
