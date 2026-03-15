import 'package:dartz/dartz.dart';
import 'package:zad/core/errors/failures.dart';
import 'package:zad/features/my_donations/data/model/donation_model.dart';

abstract class MyDonationsRepository {
  Future<Either<Failure, List<DonationModel>>> getMyDonations();
}
