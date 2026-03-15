import 'package:dio/dio.dart';
import 'package:zad/core/services/api_helper.dart';
import 'package:zad/core/utils/end_points.dart';

abstract class MyDonationsRemoteDataSource {
  Future<Response> getMyDonations();
}

class MyDonationsRemoteDataSourceImpl implements MyDonationsRemoteDataSource {
  final ApiHelper apiHelper;
  MyDonationsRemoteDataSourceImpl({required this.apiHelper});

  @override
  Future<Response<dynamic>> getMyDonations() async {
    final response = await apiHelper.get(
      EndPoints.myDonations,
      requiresAuth: true,
    );
    return response;
  }
}
