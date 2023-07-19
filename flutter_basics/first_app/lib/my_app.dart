import 'package:first_app/settings_page.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';
import 'utility/routes.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.brown,
        appBarTheme: const AppBarTheme(
          color: Colors.amber,
          centerTitle: false,
          elevation: 0,
          titleTextStyle: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w700,
            color: Colors.brown,
          ),
        ),
        textTheme: const TextTheme(
          headlineSmall: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
          bodySmall: TextStyle(
            // fontFamily: 'Trajon Pro',
            fontSize: 14,
            fontWeight: FontWeight.w400,
            letterSpacing: 2,
            color: Colors.black26,
          ),
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Colors.red,
        ),
        inputDecorationTheme: const InputDecorationTheme(
          labelStyle: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w100,
            color: Colors.white,
          ),
          
        ),
      ),
      initialRoute: AppRoutes.homePage,
      // routes: {
      //   AppRoutes.homePage: (context) => const HomePage(),
      //   AppRoutes.settingsPage: (context) => const SettingsPage()
      // },
      onGenerateRoute: onGenerateRoute,
    );
  }
}
