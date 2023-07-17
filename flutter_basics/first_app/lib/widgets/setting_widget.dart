import 'package:first_app/settings_page.dart';
import 'package:flutter/material.dart';

class SettingsWidget extends StatelessWidget {
  const SettingsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              //do ur logic
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (ctx) {
                    return const SettingsPage();
                  },
                ),
              );
            },
            child: const Text('Go to Settings'),
          ),
        ],
      ),
    );
  }
}
