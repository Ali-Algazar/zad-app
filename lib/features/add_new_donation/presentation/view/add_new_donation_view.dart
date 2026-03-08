import 'package:flutter/material.dart';
import 'widgets/add_new_donation_view_body.dart';

class AddNewDonationView extends StatelessWidget {
  const AddNewDonationView({super.key});
  static const String routeName = '/add-new-donation';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: AddNewDonationViewBody(),
      backgroundColor: Colors.white,
    );
  }
}
