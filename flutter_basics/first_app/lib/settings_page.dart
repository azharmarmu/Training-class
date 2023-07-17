import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  late bool notificationVal;

  @override
  void initState() {
    super.initState();
    print('initState');
    //statements
    notificationVal = true;
  }

  @override
  Widget build(BuildContext context) {
    int a = 10;
    print('build: $a');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        //automaticallyImplyLeading: false,
        leading: InkWell(
          onTap: () {
            if (Navigator.canPop(context)) {
              Navigator.pop(context);
            }
          },
          child: const Center(
            child: Text('BACK'),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Row(
              children: [
                const Text(
                  'Notifications',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Spacer(),
                Switch(
                  value: notificationVal,
                  onChanged: (bool val) {
                    a += 10; //    a = a + 10;
                    notificationVal = val;
                    setState(() {});
                  },
                  thumbColor: MaterialStateProperty.all(Colors.red),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  @override
  void didUpdateWidget(covariant SettingsPage oldWidget) {
    print('didUpdateWidget: $oldWidget');
    super.didUpdateWidget(oldWidget);
  }

  @override
  void didChangeDependencies() {
    print('didUpdateWidget');
    super.didChangeDependencies();
  }

  @override
  void deactivate() {
    print('deactivate');
    super.deactivate();
  }

  @override
  void dispose() {
    print('dispose');
    super.dispose();
  }
}
