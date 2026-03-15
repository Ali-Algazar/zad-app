import 'package:dio/dio.dart';
import 'package:zad/core/services/api_helper.dart';
import 'package:zad/core/utils/end_points.dart';

abstract class NotificationsRemoteDataSource {
  Future<Response> getNotifications();
  Future<Response> markAllAsRead();
  Future<Response> markAsRead(String notificationId);
}

class NotificationsRemoteDataSourceImpl
    implements NotificationsRemoteDataSource {
  final ApiHelper apiHelper;
  NotificationsRemoteDataSourceImpl({required this.apiHelper});

  @override
  Future<Response<dynamic>> getNotifications() async {
    final response = await apiHelper.get(
      EndPoints.getUserNotifications,
      requiresAuth: true,
    );
    return response;
  }

  @override
  Future<Response<dynamic>> markAllAsRead() async {
    final response = await apiHelper.put(
      EndPoints.markAllNotificationsRead,
      requiresAuth: true,
    );
    return response;
  }

  @override
  Future<Response<dynamic>> markAsRead(String notificationId) async {
    final response = await apiHelper.put(
      EndPoints.markNotificationAsRead(notificationId),
      requiresAuth: true,
    );
    return response;
  }
}
