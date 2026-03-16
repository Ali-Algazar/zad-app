import 'package:dio/dio.dart';
import 'package:zad/core/services/api_helper.dart';
import 'package:zad/core/utils/end_points.dart';

abstract class HomeVolunteerRemoteDataSource {
  Future<Response> getNearbyDonations();
}

class HomeVolunteerRemoteDataSourceImpl
    implements HomeVolunteerRemoteDataSource {
  final ApiHelper apiHelper;
  HomeVolunteerRemoteDataSourceImpl(this.apiHelper);
  @override
  Future<Response<dynamic>> getNearbyDonations() async {
    final response = await apiHelper.get(
      EndPoints.nearbyDonations,
      requiresAuth: true,
    );
    return response;
  }
}
