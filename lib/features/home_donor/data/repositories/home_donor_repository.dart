import 'package:dartz/dartz.dart';
import 'package:zad/core/errors/failures.dart';
import 'package:zad/features/home_donor/data/model/dashboard_model.dart';

abstract class HomeDonorRepository {
  Future<Either<Failure, DashboardModel>> getDonorHomeStats();
}
