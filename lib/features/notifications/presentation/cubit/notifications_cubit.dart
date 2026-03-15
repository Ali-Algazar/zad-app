import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zad/features/notifications/data/repositories/notifications_repository.dart';
import 'notifications_state.dart';

class NotificationsCubit extends Cubit<NotificationsState> {
  NotificationsCubit(this.notificationsRepository)
    : super(NotificationsInitial());
  final NotificationsRepository notificationsRepository;
  bool isAllRead = false;

  Future<void> getNotifications() async {
    emit(NotificationsLoading());
    final result = await notificationsRepository.getNotifications();
    result.fold((failure) => emit(NotificationsError(failure.message)), (
      notifications,
    ) {
      isAllRead = notifications.every((notification) => notification.isRead);
      emit(NotificationsLoaded(notifications));
    });
  }

  Future<void> markAllAsRead() async {
    final response = await notificationsRepository.markAllAsRead();
    response.fold(
      (failure) => emit(NotificationsError(failure.message)),
      (_) => getNotifications(),
    );
  }

  Future<void> markAsRead(String notificationId) async {
    final response = await notificationsRepository.markAsRead(notificationId);
    response.fold(
      (failure) => emit(NotificationsError(failure.message)),
      (_) => getNotifications(),
    );
  }
}
