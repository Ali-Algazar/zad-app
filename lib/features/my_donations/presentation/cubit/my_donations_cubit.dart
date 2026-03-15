import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zad/features/my_donations/data/repositories/my_donations_repository.dart';
import 'my_donations_state.dart';

class MyDonationsCubit extends Cubit<MyDonationsState> {
  MyDonationsCubit(this.repository) : super(MyDonationsInitial());
  final MyDonationsRepository repository;

  Future<void> getMyDonations() async {
    emit(MyDonationsLoading());
    final result = await repository.getMyDonations();
    result.fold(
      (failure) => emit(MyDonationsError(message: failure.message)),
      (donations) => emit(MyDonationsLoaded(donations: donations)),
    );
  }
}
