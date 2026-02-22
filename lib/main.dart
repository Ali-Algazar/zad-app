import 'package:flutter/material.dart';
import 'package:zad/core/helper_functions/on_generate_routes.dart';
import 'package:zad/core/services/get_it_service.dart';

void main() async {
  setupServiceLocator();
  WidgetsFlutterBinding.ensureInitialized();
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
