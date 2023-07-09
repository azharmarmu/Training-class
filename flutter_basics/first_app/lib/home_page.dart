import 'package:first_app/assets.dart';
import 'package:first_app/string.dart';
import 'package:flutter/material.dart';

import 'widgets/row_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start, //y-axis
          crossAxisAlignment: CrossAxisAlignment.start, //x-axis
          children: [
            const RowWidget(),
            const SizedBox(height: 10),
            Image.asset(
              AppAssets.roseAsset,
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 10),
            Image.network(
              AppAssets.roseNetwork,
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 10),
            const Center(child: Text('--Flexible Example--')),
            Container(
              padding: const EdgeInsets.symmetric(
                vertical: 12,
                horizontal: 16,
              ),
              color: Colors.blueAccent,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Flexible(
                    child: Text(AppStrings.helloWorld),
                  ), // it will render what space it requires
                  Icon(Icons.abc),
                ],
              ),
            ),
            const SizedBox(height: 10),
            const Center(child: Text('--Expnaded Example--')),
            Container(
              padding: const EdgeInsets.symmetric(
                vertical: 12,
                horizontal: 16,
              ),
              color: Colors.greenAccent,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Expanded(
                    child: Text(AppStrings.helloWorld),
                  ), // will take over all space after rendering its sibling
                  Icon(Icons.abc),
                ],
              ),
            ),
            const SizedBox(height: 10),
            //Intersecting mutliple widgets
            Stack(
              children: [
                Container(
                  width: 100,
                  height: 100,
                  // color: Colors.red,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.black,
                      width: 4,
                    ),
                    image: const DecorationImage(
                      image: AssetImage(AppAssets.roseAsset),
                      // image: NetworkImage(
                      //   AppAssets.roseNetwork,
                      // ),
                    ),
                    // borderRadius: BorderRadius.circular(16),
                  ),
                ),
                Positioned(
                  left: 0,
                  child: Container(
                    padding: const EdgeInsets.all(4),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFFEDEDED),
                    ),
                    child: const Icon(
                      Icons.camera_alt,
                      color: Colors.white,
                    ),
                  ),
                ),
                const Positioned(
                  bottom: 0,
                  right: 0,
                  child: Icon(
                    Icons.access_alarm,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 80,
        color: Colors.brown,
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _onPressedFAB,
      //   child: const Text('XYZ'),
      // ),
    );
  }

  void _onPressedFAB() {
    //logic
    print('Hello from XYZ');
  }
}
