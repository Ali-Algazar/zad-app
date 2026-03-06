import 'package:dio/dio.dart';
import 'package:zad/core/services/api_helper.dart';
import 'package:zad/core/utils/end_points.dart';

abstract class HomeDonorRemoteDataSource {
  Future<Response> getDonorHomeStats();
}

class HomeDonorRemoteDataSourceImpl implements HomeDonorRemoteDataSource {
  final ApiHelper apiHelper;

  HomeDonorRemoteDataSourceImpl({required this.apiHelper});

  @override
  Future<Response> getDonorHomeStats() async {
    final response = await apiHelper.get(
      EndPoints.getDonorHomeStats,
      requiresAuth: true,
    );
    return response;
  }
}
