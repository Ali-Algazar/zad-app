import 'package:flutter_bloc/flutter_bloc.dart';
import 'volunteer_profile_state.dart';

class VolunteerProfileCubit extends Cubit<VolunteerProfileState> {
  VolunteerProfileCubit() : super(VolunteerProfileInitial());
}
