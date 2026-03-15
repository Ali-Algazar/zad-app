import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dartz/dartz.dart';
import 'package:zad/core/errors/failures.dart';
import 'package:zad/core/helper_functions/has_connection.dart';
import 'package:zad/features/my_donations/data/datasources/my_donations_local_data_source.dart';
import 'package:zad/features/my_donations/data/datasources/my_donations_remote_data_source.dart';
import 'package:zad/features/my_donations/data/model/donation_model.dart';
import 'my_donations_repository.dart';

class MyDonationsRepositoryImpl implements MyDonationsRepository {
  final MyDonationsRemoteDataSource remoteDataSource;
  final MyDonationsLocalDataSource localDataSource;
  final Connectivity connectivity;

  MyDonationsRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
    required this.connectivity,
  });

  @override
  Future<Either<Failure, List<DonationModel>>> getMyDonations() async {
    try {
      if (await hasConnection(connectivity)) {
        final response = await remoteDataSource.getMyDonations();
        if (response.statusCode == 200) {
          final List<DonationModel> donations = (response.data['data'] as List)
              .map((json) => DonationModel.fromJson(json))
              .toList();
          await localDataSource.cacheMyDonations(donations);
          return right(donations);
        } else {
          return left(ServerFailure('Server error: ${response.statusCode}'));
        }
      } else {
        final cachedDonations = await localDataSource.getCachedMyDonations();
        if (cachedDonations.isNotEmpty) {
          return right(cachedDonations);
        } else {
          return left(
            NetworkFailure('No internet connection and no cached data'),
          );
        }
      }
    } catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }
}
