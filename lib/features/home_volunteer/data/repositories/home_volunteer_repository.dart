import 'package:dartz/dartz.dart';
import 'package:zad/core/errors/failures.dart';
import 'package:zad/features/home_volunteer/data/model/donation_with_restaurant_model.dart';

abstract class HomeVolunteerRepository {
  Future<Either<Failure, List<DonationWithRestaurantModel>>>
  getNearbyDonations();
}
