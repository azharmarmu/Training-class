import 'package:first_app/home_page.dart';
import 'package:first_app/settings_page.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const String homePage = '/';
  static const String settingsPage = '/settings_page';
}

Route<dynamic>? onGenerateRoute(RouteSettings args) {
  print('${args.name}, Arguments: ${args.arguments}');

  switch (args.name) {
    case AppRoutes.homePage:
      return MaterialPageRoute(
        builder: (ctx) {
          return const HomePage();
        },
      );
    case AppRoutes.settingsPage:
      return MaterialPageRoute(
        builder: (ctx) {
          return SettingsPage(
            args: args.arguments != null
                ? (args.arguments as Map<String, dynamic>)
                : null,
          );
        },
      );

    default:
      return MaterialPageRoute(
        builder: (ctx) {
          return const Scaffold(
            body: Center(
              child: Text('Error page'),
            ),
          );
        },
      );
  }
}
