import 'package:dartz/dartz.dart';
import 'package:zad/core/errors/failures.dart';
import 'package:zad/features/donation_details/data/models/donation_details.dart';

abstract class DonationDetailsRepository {
  Future<Either<Failure, DonationDetails>> getDonationDetails(String id);
}
