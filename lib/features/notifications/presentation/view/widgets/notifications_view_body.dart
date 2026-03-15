import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zad/core/constants.dart';
import 'package:zad/core/extensions/extensions.dart';
import 'package:zad/features/notifications/data/model/notification_model.dart';
import 'package:zad/features/notifications/presentation/cubit/notifications_cubit.dart';
import 'package:zad/features/notifications/presentation/cubit/notifications_state.dart';
import 'package:zad/features/notifications/presentation/view/widgets/notifications_card.dart';
import 'package:zad/features/notifications/presentation/view/widgets/notifications_header.dart';

class NotificationsViewBody extends StatefulWidget {
  const NotificationsViewBody({super.key});

  @override
  State<NotificationsViewBody> createState() => _NotificationsViewBodyState();
}

class _NotificationsViewBodyState extends State<NotificationsViewBody> {
  int index = 0;
  List<NotificationModel> notifications = [];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NotificationsHeader(
          onStatusChanged: (index) {
            setState(() {
              this.index = index;
            });
          },
        ),
        16.h,
        Expanded(
          child: Padding(
            padding: Constants.khorizontalPadding.horizontal,
            child: BlocBuilder<NotificationsCubit, NotificationsState>(
              builder: (context, state) {
                if (state is NotificationsError) {
                  return Center(child: Text(state.message));
                } else if (state is NotificationsLoading) {
                  return Center(child: CircularProgressIndicator());
                } else if (state is NotificationsLoaded &&
                    state.notifications.isEmpty) {
                  return Center(child: Text('لا توجد إشعارات بعد'));
                } else if (state is NotificationsLoaded) {
                  if (index == 1) {
                    notifications = state.notifications
                        .where((n) => n.isRead)
                        .toList();
                  } else {
                    notifications = state.notifications;
                  }
                  return ListView.builder(
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.only(bottom: 12),
                      child: NotificationsCard(
                        notification: notifications[index],
                      ),
                    ),
                    itemCount: notifications.length,
                  );
                }
                return SizedBox();
              },
            ),
          ),
        ),
      ],
    );
  }
}
