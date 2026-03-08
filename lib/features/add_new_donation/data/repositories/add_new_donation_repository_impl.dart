import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dartz/dartz.dart';
import 'package:zad/core/errors/failures.dart';
import 'package:zad/core/helper_functions/has_connection.dart';
import 'package:zad/features/add_new_donation/data/datasources/add_new_donation_remote_data_source.dart';
import 'package:zad/features/add_new_donation/data/model/donation.dart';

import 'add_new_donation_repository.dart';

class AddNewDonationRepositoryImpl implements AddNewDonationRepository {
  final AddNewDonationRemoteDataSource remoteDataSource;
  final Connectivity connectivity;

  AddNewDonationRepositoryImpl({
    required this.remoteDataSource,
    required this.connectivity,
  });

  @override
  Future<Either<Failure, Unit>> addNewDonation(DonationModel donation) async {
    print(donation.toJson());
    try {
      if (await hasConnection(connectivity)) {
        final response = await remoteDataSource.addNewDonation(donation);
        if (response.statusCode == 200 || response.statusCode == 201) {
          return Right(unit);
        } else {
          return Left(
            ServerFailure(
              'Failed to add new donation. Please try again. whith status code: ${response.statusCode} ${response.data}',
            ),
          );
        }
      } else {
        return Left(
          NetworkFailure(
            'No internet connection. Please check your connection and try again.',
          ),
        );
      }
    } catch (e) {
      print(e.toString());
      return Left(
        ServerFailure(
          'An error occurred while adding the donation. Please try again. ${e.toString()}',
        ),
      );
    }
  }
}
