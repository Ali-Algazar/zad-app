import 'package:zad/features/home_volunteer/data/model/donation_with_restaurant_model.dart';

abstract class HomeVolunteerState {}

class HomeVolunteerInitial extends HomeVolunteerState {}

class HomeVolunteerLoading extends HomeVolunteerState {}

class HomeVolunteerLoaded extends HomeVolunteerState {
  final List<DonationWithRestaurantModel> donations;

  HomeVolunteerLoaded(this.donations);
}

class HomeVolunteerError extends HomeVolunteerState {
  final String message;

  HomeVolunteerError(this.message);
}
