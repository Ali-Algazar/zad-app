import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:zad/core/extensions/extensions.dart';
import 'package:zad/core/utils/app_colors.dart';
import 'package:zad/core/utils/app_text_styles.dart';
import 'package:zad/features/onboarding/presentation/view/onboarding_view.dart';
import 'package:zad/generated/l10n.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> scale;

  @override
  initState() {
    super.initState();
    requestPermission();
    initAnimations();
    setupInteractedMessage();
    navigateToNextView(OnboardingView.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(gradient: AppColors.primaryGradient),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ScaleTransition(
              scale: scale,
              child: Image.asset('assets/image/logo_w.png', height: 190),
            ),
            32.h,
            Text(
              S.of(context).zadElKheirPlatform,
              style: AppTextStyles.textStyle32.copyWith(
                color: AppColors.background,
              ),
            ),
            // 4.h,
            Text(
              S.of(context).reduceWasteSlogan,
              style: AppTextStyles.textStyle16.copyWith(
                color: AppColors.background,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> requestPermission() async {
    FirebaseMessaging messaging = FirebaseMessaging.instance;

    NotificationSettings settings = await messaging.requestPermission(
      alert: true,
      badge: true,
      sound: true,
    );

    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
    } else if (settings.authorizationStatus ==
        AuthorizationStatus.provisional) {
    } else {}
  }

  void initAnimations() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1100),
    );

    scale = Tween<double>(
      begin: 0.6,
      end: 1.0,
    ).animate(CurvedAnimation(parent: controller, curve: Curves.easeInOut));

    controller.repeat(reverse: true);
  }

  void navigateToNextView(String routeName, [dynamic arguments]) {
    Future.delayed(const Duration(milliseconds: 2800), () {
      controller.stop();
      Navigator.pushReplacementNamed(context, routeName, arguments: arguments);
    });
  }

  Future<void> setupInteractedMessage() async {
    // 1. حالة التطبيق كان مقفول تماماً (Terminated)
    RemoteMessage? initialMessage = await FirebaseMessaging.instance
        .getInitialMessage();

    if (initialMessage != null) {
      _handleMessage(initialMessage);
    }

    // 2. حالة التطبيق كان في الخلفية (Background)
    FirebaseMessaging.onMessageOpenedApp.listen(_handleMessage);
  }

  void _handleMessage(RemoteMessage message) {
    // هنا بتكتب اللوجيك بتاعك
    // مثلاً لو فيه data بتقول روح لصفحة التطعيمات
    if (message.data['screen'] == 'vaccination') {
      // navigateTo...
      print("المستخدم ضغط على الإشعار وعايز يروح صفحة التطعيمات");
    }
  }

  @override
  void dispose() {
    controller.stop();
    controller.dispose();

    super.dispose();
  }
}
