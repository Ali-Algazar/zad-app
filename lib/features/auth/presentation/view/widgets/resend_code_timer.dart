import 'dart:async';
import 'package:flutter/material.dart';
import 'package:zad/core/utils/app_colors.dart';
import 'package:zad/core/utils/app_text_styles.dart';

class ResendCodeTimer extends StatefulWidget {
  const ResendCodeTimer({super.key});

  @override
  State<ResendCodeTimer> createState() => _ResendCodeTimerState();
}

class _ResendCodeTimerState extends State<ResendCodeTimer> {
  Timer? _timer;
  int _start = 58; // الوقت بالثواني زي اللي في الصورة

  void startTimer() {
    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(oneSec, (Timer timer) {
      if (_start == 0) {
        setState(() {
          timer.cancel();
        });
      } else {
        setState(() {
          _start--;
        });
      }
    });
  }

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  String get timerText {
    final minutes = (_start ~/ 60).toString().padLeft(2, '0');
    final seconds = (_start % 60).toString().padLeft(2, '0');
    return '$minutes:$seconds';
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "إعادة إرسال الرمز بعد ", // "إعادة إرسال الرمز بعد "
          style: AppTextStyles.textStyle14r.copyWith(color: AppColors.grayText),
        ),
        Text(
          timerText,
          style: AppTextStyles.textStyle14Medium.copyWith(
            color: AppColors.primary,
          ),
        ),
      ],
    );
  }
}
