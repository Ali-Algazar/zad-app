import 'package:dartz/dartz.dart';

import 'package:zad/core/errors/failures.dart';

import 'package:zad/features/donation_details/data/models/donation_details.dart';

import 'donation_details_repository.dart';
import '../datasources/donation_details_remote_data_source.dart';

class DonationDetailsRepositoryImpl implements DonationDetailsRepository {
  final DonationDetailsRemoteDataSource remoteDataSource;

  DonationDetailsRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, DonationDetails>> getDonationDetails(String id) async {
    try {
      final response = await remoteDataSource.getDonationDetails(id);
      final donationDetails = DonationDetails.fromJson(response.data['data']);
      return Right(donationDetails);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
