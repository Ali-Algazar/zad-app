import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zad/features/home_volunteer/data/repositories/home_volunteer_repository.dart';
import 'home_volunteer_state.dart';

class HomeVolunteerCubit extends Cubit<HomeVolunteerState> {
  HomeVolunteerCubit(this.homeVolunteerRepository)
    : super(HomeVolunteerInitial());
  final HomeVolunteerRepository homeVolunteerRepository;

  Future<void> getNearbyDonations() async {
    emit(HomeVolunteerLoading());
    final result = await homeVolunteerRepository.getNearbyDonations();
    result.fold((failure) => emit(HomeVolunteerError(failure.message)), (
      donations,
    ) {
      print(donations);
      emit(HomeVolunteerLoaded(donations));
    });
  }
}
