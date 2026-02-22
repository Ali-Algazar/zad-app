import 'package:flutter/material.dart';
import 'package:zad/core/helper/hive_helper.dart';
import 'package:zad/core/helper_functions/on_generate_routes.dart';
import 'package:zad/core/services/get_it_service.dart';
import 'package:zad/core/services/notification_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupServiceLocator();
  await NotificationService.init();
  await HiveHelper.init();
  runApp(const ZadApp());
}

class ZadApp extends StatelessWidget {
  const ZadApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: onGenerateRoute,
      debugShowCheckedModeBanner: false,
    );
  }
}
