import 'package:flutter/material.dart';
import 'package:zad/core/utils/app_text_styles.dart';

class NoticeBox extends StatelessWidget {
  final String message;

  const NoticeBox({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        // لون خلفية أزرق فاتح جداً هادئ
        color: const Color(0xffEBF5FF),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color(0xffCCE5FF)),
      ),
      child: Text(
        message,
        // ليدعم العربي بشكل صحيح
        style: AppTextStyles.textStyle14r.copyWith(
          color: const Color(0xff004085), // لون نص أزرق غامق للتباين
          height: 1.5, // لراحة العين في القراءة
        ),
      ),
    );
  }
}
