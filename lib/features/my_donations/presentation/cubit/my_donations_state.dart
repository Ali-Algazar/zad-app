import 'package:zad/features/my_donations/data/model/donation_model.dart';

abstract class MyDonationsState {}

class MyDonationsInitial extends MyDonationsState {}

class MyDonationsLoaded extends MyDonationsState {
  List<DonationModel> donations;
  MyDonationsLoaded({required this.donations});
}

class MyDonationsError extends MyDonationsState {
  String message;
  MyDonationsError({required this.message});
}

class MyDonationsLoading extends MyDonationsState {}
