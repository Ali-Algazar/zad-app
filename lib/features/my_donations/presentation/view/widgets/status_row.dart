import 'package:flutter/material.dart';
import 'package:zad/features/my_donations/presentation/view/widgets/status_container.dart';

class StatusRow extends StatefulWidget {
  const StatusRow({super.key, required this.onStatusChanged});
  final ValueChanged<int> onStatusChanged;

  @override
  State<StatusRow> createState() => _StatusRowState();
}

class _StatusRowState extends State<StatusRow> {
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
              widget.onStatusChanged(0);
            }
          },
        ),
        StatusContainer(
          isActive: index == 1,
          titel: 'نشطة',
          onTap: () {
            if (index != 1) {
              setState(() {
                index = 1;
              });
              widget.onStatusChanged(1);
            }
          },
        ),
        StatusContainer(
          isActive: index == 2,
          titel: 'مكتملة',
          onTap: () {
            if (index != 2) {
              setState(() {
                index = 2;
              });
            }
            widget.onStatusChanged(2);
          },
        ),
      ],
    );
  }
}
