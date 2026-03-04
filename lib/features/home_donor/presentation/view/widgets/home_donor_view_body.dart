import 'package:flutter/material.dart';
import 'package:zad/core/constants.dart';
import 'package:zad/core/extensions/extensions.dart';
import 'package:zad/core/utils/app_text_styles.dart';
import 'package:zad/core/widgets/custom_button.dart';
import 'package:zad/features/home_donor/presentation/view/widgets/recent_activity_list_view.dart';
import 'package:zad/features/home_donor/presentation/view/widgets/recent_activity_row.dart';
import 'package:zad/generated/l10n.dart';

class HomeDonorViewBody extends StatelessWidget {
  const HomeDonorViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Constants.khorizontalPadding.horizontal,
      child: Column(
        children: [
          CustomButton(
            onTap: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.add, color: Colors.white),
                8.w,
                Text(
                  S.of(context).addNewDonation,
                  style: AppTextStyles.textStyle18.copyWith(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          32.h,
          RecentActivityRow(),
          16.h,
          RecentActivityListView(),
        ],
      ),
    );
  }
}
