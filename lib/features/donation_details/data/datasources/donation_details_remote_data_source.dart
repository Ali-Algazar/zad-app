import 'package:dio/dio.dart';
import 'package:zad/core/services/api_helper.dart';
import 'package:zad/core/utils/end_points.dart';

abstract class DonationDetailsRemoteDataSource {
  Future<Response> getDonationDetails(String id);
}

class DonationDetailsRemoteDataSourceImpl
    implements DonationDetailsRemoteDataSource {
  final ApiHelper apiHelper;
  DonationDetailsRemoteDataSourceImpl({required this.apiHelper});

  @override
  Future<Response<dynamic>> getDonationDetails(String id) async {
    final response = await apiHelper.get(
      EndPoints.getDonationDetails(id),
      requiresAuth: true,
    );
    return response;
  }
}
