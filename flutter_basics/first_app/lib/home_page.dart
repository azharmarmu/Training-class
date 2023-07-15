import 'package:first_app/assets.dart';
import 'package:first_app/list_of_items.dart';
import 'package:first_app/string.dart';
import 'package:first_app/widgets/setting_widget.dart';
import 'package:flutter/material.dart';

import 'widgets/home_widget.dart';
import 'widgets/row_widget.dart';

class OrientationPage extends StatelessWidget {
  const OrientationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (ctx, orientation) {
        return orientation != Orientation.landscape
            ? HomePage()
            : ListOfItems();
      },
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //base for every page
      appBar: AppBar(
        backgroundColor: const Color(0xFF6C01F9),
        centerTitle: false,
        title: const Text('Flutter Widgets'),
        leading: const Icon(Icons.map),
        actions: const [
          Icon(Icons.settings),
          SizedBox(width: 10),
          Icon(Icons.person_off_outlined),
          SizedBox(width: 10),
        ],
      ),
      body: IndexedStack(
        index: pageIndex,
        children: const [
          HomeWidget(),
          SettingsWidget(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: pageIndex,
        onTap: (int index) {
          //1st way
          // setState(() {
          //   pageIndex = index;
          //   print('pageIndex:$pageIndex');
          // });

          //2nd way
          pageIndex = index;
          print('pageIndex:$pageIndex');
          setState(() {});
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _onPressedFAB,
      //   child: const Text('XYZ'),
      // ),
    );
  }
}
