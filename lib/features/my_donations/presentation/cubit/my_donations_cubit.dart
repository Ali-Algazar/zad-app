import 'package:flutter_bloc/flutter_bloc.dart';
import 'my_donations_state.dart';

class MyDonationsCubit extends Cubit<MyDonationsState> {
  MyDonationsCubit() : super(MyDonationsInitial());
}
