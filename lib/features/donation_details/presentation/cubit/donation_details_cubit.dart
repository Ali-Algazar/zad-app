import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zad/features/donation_details/data/repositories/donation_details_repository.dart';
import 'donation_details_state.dart';

class DonationDetailsCubit extends Cubit<DonationDetailsState> {
  DonationDetailsCubit({required this.donationDetailsRepository})
    : super(DonationDetailsInitial());
  final DonationDetailsRepository donationDetailsRepository;

  Future<void> getDonationDetails(String id) async {
    emit(DonationDetailsLoading());
    final response = await donationDetailsRepository.getDonationDetails(id);
    response.fold(
      (failure) => emit(DonationDetailsFailure(failure: failure.message)),
      (donationDetails) =>
          emit(DonationDetailsSuccess(donationDetails: donationDetails)),
    );
  }
}
