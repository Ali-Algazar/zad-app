import 'package:flutter/material.dart';
import 'package:zad/features/splash/presentation/view/splash_view.dart';

void main() {
  runApp(const ZadApp());
}

class ZadApp extends StatelessWidget {
  const ZadApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: SplashView(), debugShowCheckedModeBanner: false);
  }
}
