import 'package:flutter/material.dart';

import 'home_page.dart';
import 'list_of_items.dart';
import 'vibin_task/page1.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      // home: const HomePage(),
      home: const HomePage(),
    );
  }
}
