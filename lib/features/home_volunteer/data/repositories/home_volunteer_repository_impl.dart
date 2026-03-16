import 'dart:math';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dartz/dartz.dart';
import 'package:zad/core/errors/failures.dart';
import 'package:zad/core/helper_functions/has_connection.dart';
import 'package:zad/features/home_volunteer/data/datasources/home_volunteer_remote_data_source.dart';
import 'package:zad/features/home_volunteer/data/model/donation_with_restaurant_model.dart';

import 'home_volunteer_repository.dart';

class HomeVolunteerRepositoryImpl implements HomeVolunteerRepository {
  final HomeVolunteerRemoteDataSource remoteDataSource;
  final Connectivity connectivity;

  HomeVolunteerRepositoryImpl({
    required this.remoteDataSource,
    required this.connectivity,
  });

  @override
  Future<Either<Failure, List<DonationWithRestaurantModel>>>
  getNearbyDonations() async {
    try {
      if (await hasConnection(connectivity)) {
        final donations = await remoteDataSource.getNearbyDonations();
        if (donations.statusCode == 200) {
          final List<DonationWithRestaurantModel> donationList =
              (donations.data['data'] as List)
                  .map(
                    (donation) =>
                        DonationWithRestaurantModel.fromJson(donation),
                  )
                  .toList();
          return Right(donationList);
        } else {
          return Left(
            ServerFailure(
              'Failed to fetch nearby donations with status code: ${donations.statusCode}',
            ),
          );
        }
      } else {
        return Left(
          NetworkFailure(
            'No internet connection. Please check your connectivity.',
          ),
        );
      }
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
