import 'package:zad/features/donation_details/data/models/donation_details.dart';

abstract class DonationDetailsState {}

class DonationDetailsInitial extends DonationDetailsState {}

class DonationDetailsLoading extends DonationDetailsState {}

class DonationDetailsSuccess extends DonationDetailsState {
  final DonationDetails donationDetails;
  DonationDetailsSuccess({required this.donationDetails});
}

class DonationDetailsFailure extends DonationDetailsState {
  final String failure;

  DonationDetailsFailure({required this.failure});
}
