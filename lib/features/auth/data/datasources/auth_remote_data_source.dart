import 'package:dio/dio.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:zad/core/services/api_helper.dart';
import 'package:zad/core/utils/end_points.dart';

abstract class AuthRemoteDataSource {
  Future<Response> login({required String email, required String password});
  Future<Response> register({
    required String email,
    required String password,
    required String phone,
    required String displayName,
    required String governorate,
    required String role,
  });
  Future<Response> updateFcmToken();
  Future<Response> getUserData();
}

class AuthRemoteDataSourceImpl extends AuthRemoteDataSource {
  ApiHelper apiHelper;
  AuthRemoteDataSourceImpl(this.apiHelper);
  @override
  Future<Response> login({
    required String email,
    required String password,
  }) async {
    var response = await apiHelper.post(
      EndPoints.login,
      data: {'email': email, 'password': password},
    );

    return response;
  }

  @override
  Future<Response> register({
    required String email,
    required String password,
    required String phone,
    required String displayName,
    required String governorate,
    required String role,
  }) async {
    var response = await apiHelper.post(
      EndPoints.register,
      data: {
        "fullName": displayName,
        "phone": phone,
        "email": email,
        "password": password,
        "governorate": governorate,
        "role": role,
      },
    );

    return response;
  }

  @override
  Future<Response<dynamic>> updateFcmToken() async {
    var token = await FirebaseMessaging.instance.getToken();
    return apiHelper.put(
      EndPoints.updateFcmToken,
      data: {'fcmToken': token},
      requiresAuth: true,
    );
  }

  @override
  Future<Response<dynamic>> getUserData() async {
    var response = await apiHelper.get(EndPoints.getMe, requiresAuth: true);
    return response;
  }
}
