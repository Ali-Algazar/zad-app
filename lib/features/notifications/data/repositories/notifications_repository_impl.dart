import 'package:dartz/dartz.dart';
import 'package:zad/core/errors/failures.dart';
import 'package:zad/features/notifications/data/datasources/notifications_remote_data_source.dart';
import 'package:zad/features/notifications/data/model/notification_model.dart';
import 'notifications_repository.dart';

class NotificationsRepositoryImpl implements NotificationsRepository {
  final NotificationsRemoteDataSource remoteDataSource;
  NotificationsRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, List<NotificationModel>>> getNotifications() async {
    try {
      final response = await remoteDataSource.getNotifications();
      final notifications = (response.data['notifications'] as List)
          .map((json) => NotificationModel.fromJson(json))
          .toList();
      return Right(notifications);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, Unit>> markAllAsRead() async {
    try {
      await remoteDataSource.markAllAsRead();
      return Right(unit);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, Unit>> markAsRead(String notificationId) async {
    try {
      await remoteDataSource.markAsRead(notificationId);
      return Right(unit);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
