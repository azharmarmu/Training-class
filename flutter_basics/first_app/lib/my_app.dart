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
      theme: ThemeData.light(),
      initialRoute: AppRoutes.settingsPage,
      // routes: {
      //   AppRoutes.homePage: (context) => const HomePage(),
      //   AppRoutes.settingsPage: (context) => const SettingsPage()
      // },
      onGenerateRoute: onGenerateRoute,
    );
  }
}
