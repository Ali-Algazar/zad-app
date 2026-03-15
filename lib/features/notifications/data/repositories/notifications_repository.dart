import 'package:dartz/dartz.dart';
import 'package:zad/core/errors/failures.dart';
import 'package:zad/features/notifications/data/model/notification_model.dart';

abstract class NotificationsRepository {
  Future<Either<Failure, List<NotificationModel>>> getNotifications();
  Future<Either<Failure, Unit>> markAllAsRead();
  Future<Either<Failure, Unit>> markAsRead(String notificationId);
}
