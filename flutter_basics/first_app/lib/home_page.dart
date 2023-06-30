import 'package:flutter/material.dart';

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
      // body: myAmberBox,
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
