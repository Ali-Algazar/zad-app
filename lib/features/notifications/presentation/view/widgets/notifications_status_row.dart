import 'package:flutter/material.dart';
import 'package:zad/features/my_donations/presentation/view/widgets/status_container.dart';

class NotificationsStatusRow extends StatefulWidget {
  const NotificationsStatusRow({super.key, required this.onStatusChanged});
  final ValueChanged<int>? onStatusChanged;

  @override
  State<NotificationsStatusRow> createState() => _NotificationsStatusRowState();
}

class _NotificationsStatusRowState extends State<NotificationsStatusRow> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 16,
      children: [
        StatusContainer(
          isActive: index == 0,
          titel: 'الكل',
          onTap: () {
            if (index != 0) {
              setState(() {
                index = 0;
              });
              widget.onStatusChanged!(0);
            }
          },
        ),
        StatusContainer(
          isActive: index == 1,
          titel: 'غير مقروءة',
          onTap: () {
            if (index != 1) {
              setState(() {
                index = 1;
              });
              widget.onStatusChanged!(1);
            }
          },
        ),
      ],
    );
  }
}
