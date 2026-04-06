import 'package:dio/dio.dart';
import 'package:zad/core/services/api_helper.dart';
import 'package:zad/core/utils/end_points.dart';

abstract class MyTasksRemoteDataSource {
  Future<Response> getMyTasks();
}

class MyTasksRemoteDataSourceImpl implements MyTasksRemoteDataSource {
  final ApiHelper apiHelper;
  MyTasksRemoteDataSourceImpl({required this.apiHelper});

  @override
  Future<Response<dynamic>> getMyTasks() async {
    final response = await apiHelper.get(
      EndPoints.myOrders,
      requiresAuth: true,
    );
    return response;
  }
}
