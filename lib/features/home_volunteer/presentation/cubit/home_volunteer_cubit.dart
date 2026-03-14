import 'package:flutter_bloc/flutter_bloc.dart';
import 'home_volunteer_state.dart';

class HomeVolunteerCubit extends Cubit<HomeVolunteerState> {
  HomeVolunteerCubit() : super(HomeVolunteerInitial());
}
