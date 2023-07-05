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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start, //y-axis
        crossAxisAlignment: CrossAxisAlignment.start, //x-axis
        children: [
          RowWidget(),
          SizedBox(height: 10),
          Image.asset(
            'assets/rose.jpeg',
            width: 100,
            height: 100,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 10),
          Image.network(
            'https://st3.depositphotos.com/7531416/33179/i/600/depositphotos_331791150-stock-photo-rose-isolated-white-background.jpg',
            width: 100,
            height: 100,
            fit: BoxFit.cover,
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 80,
        color: Colors.brown,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _onPressedFAB,
        child: const Text('XYZ'),
      ),
    );
  }

  void _onPressedFAB() {
    //logic
    print('Hello from XYZ');
  }
}
