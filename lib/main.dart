import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zad/app_restart.dart';
import 'package:zad/core/cubit/locale_cubit.dart';
import 'package:zad/core/helper/hive_helper.dart';
import 'package:zad/core/helper_functions/on_generate_routes.dart';
import 'package:zad/core/services/get_it_service.dart';
import 'package:zad/core/services/notification_service.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:zad/core/theme/app_theme.dart';
import 'package:zad/firebase_options.dart';
import 'package:zad/generated/l10n.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  setupServiceLocator();
  await NotificationService.init();
  await HiveHelper.init();

  runApp(RestartWidget(child: const ZadApp()));
}

class ZadApp extends StatelessWidget {
  const ZadApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LocaleCubit(),
      child: BlocBuilder<LocaleCubit, String>(
        builder: (context, state) {
          return MaterialApp(
            localizationsDelegates: [
              S.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: S.delegate.supportedLocales,
            locale: Locale(state),
            onGenerateRoute: onGenerateRoute,
            debugShowCheckedModeBanner: false,
            theme: AppTheme.lightTheme,
          );
        },
      ),
    );
  }
}
