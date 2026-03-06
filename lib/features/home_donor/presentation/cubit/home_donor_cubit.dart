import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zad/features/home_donor/data/repositories/home_donor_repository.dart';
import 'home_donor_state.dart';

class HomeDonorCubit extends Cubit<HomeDonorState> {
  HomeDonorCubit(this.homeDonorRepository) : super(HomeDonorInitial());
  final HomeDonorRepository homeDonorRepository;

  Future<void> getDonorHomeStats() async {
    emit(HomeDonorLoading());
    final result = await homeDonorRepository.getDonorHomeStats();
    result.fold((failure) => emit(HomeDonorError(message: failure.message)), (
      dashboardModel,
    ) {
      emit(HomeDonorLoaded(dashboardModel));
    });
  }
}
