import 'package:flutter/material.dart';
import 'package:zad/core/extensions/extensions.dart';
import 'package:zad/core/helper_functions/get_user_data.dart';
import 'package:zad/core/utils/app_text_styles.dart';
import 'package:zad/features/profile/presentation/view/widgets/profile_info_row.dart';

class ProfileInfoCard extends StatelessWidget {
  const ProfileInfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getUserData(),
      builder: (context, asyncSnapshot) {
        if (asyncSnapshot.connectionState == ConnectionState.waiting) {
          return Container(
            width: double.infinity,
            padding: 12.all,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
            ),
            child: const Center(child: CircularProgressIndicator()),
          );
        }
        if (asyncSnapshot.hasError) {
          return Container(
            width: double.infinity,
            padding: 12.all,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Center(child: Text(asyncSnapshot.error.toString())),
          );
        } else if (asyncSnapshot.hasData) {
          final user = asyncSnapshot.data!;
          return Container(
            width: double.infinity,
            padding: 12.all,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  spacing: 16,
                  children: [
                    CircleAvatar(
                      radius: 40,
                      child: Text(
                        user.fullName[0],
                        style: AppTextStyles.textStyle32,
                      ),
                    ),
                    Text(user.fullName, style: AppTextStyles.textStyle24),
                  ],
                ),
                8.h,
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    spacing: 8,
                    children: [
                      ProfileInfoRow(
                        icon: Icons.phone_android_outlined,
                        text: user.phone,
                      ),
                      ProfileInfoRow(
                        icon: Icons.email_outlined,
                        text: user.email,
                      ),
                      ProfileInfoRow(
                        icon: Icons.location_on_outlined,
                        text: user.governorate,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        }
        return SizedBox();
      },
    );
  }
}
