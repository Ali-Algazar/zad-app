import 'package:dio/dio.dart';
import 'package:zad/core/services/api_helper.dart';
import 'package:zad/core/utils/end_points.dart';
import 'package:zad/features/add_new_donation/data/model/donation.dart';

abstract class AddNewDonationRemoteDataSource {
  Future<Response> addNewDonation(DonationModel donation);
}

class AddNewDonationRemoteDataSourceImpl
    implements AddNewDonationRemoteDataSource {
  final ApiHelper apiHelper;
  AddNewDonationRemoteDataSourceImpl({required this.apiHelper});

  @override
  Future<Response<dynamic>> addNewDonation(DonationModel donation) async {
    final response = await apiHelper.post(
      EndPoints.createDonation,
      data: donation.toJson(),
      requiresAuth: true,
    );
    return response;
  }
}
