import 'package:flutter/material.dart';
import 'package:zad/features/home_donor/presentation/view/widgets/recent_activity_card.dart';

class RecentActivityListView extends StatelessWidget {
  const RecentActivityListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.only(bottom: 12),
        child: RecentActivityCard(),
      ),
    );
  }
}
