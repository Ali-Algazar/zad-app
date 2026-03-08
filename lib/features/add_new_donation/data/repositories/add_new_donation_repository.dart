import 'package:dartz/dartz.dart';
import 'package:zad/core/errors/failures.dart';
import 'package:zad/features/add_new_donation/data/model/donation.dart';

abstract class AddNewDonationRepository {
  Future<Either<Failure, Unit>> addNewDonation(DonationModel donation);
}
