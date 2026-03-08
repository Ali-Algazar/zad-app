import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zad/features/add_new_donation/data/model/donation.dart';
import 'package:zad/features/add_new_donation/data/repositories/add_new_donation_repository.dart';
import 'add_new_donation_state.dart';

class AddNewDonationCubit extends Cubit<AddNewDonationState> {
  AddNewDonationCubit(this.addNewDonationRepository)
    : super(AddNewDonationInitial());
  final AddNewDonationRepository addNewDonationRepository;
  Future<void> addNewDonation(DonationModel donation) async {
    emit(AddNewDonationLoading());
    final result = await addNewDonationRepository.addNewDonation(donation);
    result.fold(
      (failure) => emit(AddNewDonationError(failure.message)),
      (_) => emit(AddNewDonationSuccess()),
    );
  }
}
