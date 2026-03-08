abstract class AddNewDonationState {}

class AddNewDonationInitial extends AddNewDonationState {}

class AddNewDonationLoading extends AddNewDonationState {}

class AddNewDonationSuccess extends AddNewDonationState {}

class AddNewDonationError extends AddNewDonationState {
  final String message;
  AddNewDonationError(this.message);
}
