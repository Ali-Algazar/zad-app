import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:zad/core/errors/failures.dart';
import 'package:zad/core/helper_functions/has_connection.dart';
import 'package:zad/features/home_donor/data/datasources/home_donor_remote_data_source.dart';
import 'package:zad/features/home_donor/data/model/dashboard_model.dart';
import 'home_donor_repository.dart';

class HomeDonorRepositoryImpl implements HomeDonorRepository {
  final HomeDonorRemoteDataSource remoteDataSource;
  final Connectivity connectivity;

  HomeDonorRepositoryImpl({
    required this.remoteDataSource,
    required this.connectivity,
  });
  @override
  Future<Either<Failure, DashboardModel>> getDonorHomeStats() async {
    try {
      if (await hasConnection(connectivity)) {
        final response = await remoteDataSource.getDonorHomeStats();
        if (response.statusCode == 200) {
          final dashboardModel = DashboardModel.fromJson(response.data['data']);
          return right(dashboardModel);
        } else {
          return left(ServerFailure('Server error: ${response.statusCode}'));
        }
      } else {
        return left(NetworkFailure('No internet connection'));
      }
    } on SocketException catch (e) {
      return left(ServerFailure.fromSocketException(e));
    } on DioException catch (e) {
      return left(ServerFailure.fromDioError(e));
    } catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }
}
