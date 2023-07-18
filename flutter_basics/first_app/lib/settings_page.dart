import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  final Map<String, dynamic>? args;
  const SettingsPage({this.args, super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  late bool notificationVal;
  late bool deactiveVal;

  late bool isAll;

  Color animContainerColor = Colors.amber;
  Color animContainerTextColor = Colors.purple;
  double animContainerFontSize = 24;

  double animPadding = 16;

  @override
  void initState() {
    super.initState();
    print('initState');
    //statements
    notificationVal = widget.args?['notification'] ?? false;
    deactiveVal = widget.args?['deactive'] ?? false;
    isAll = true;
  }

  @override
  Widget build(BuildContext context) {
    int a = 10;
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            if (Navigator.canPop(context)) {
              Navigator.pop(context);
            }
          },
          child: const Center(
            child: Text('EDIT'),
          ),
        ),
        title: Center(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.black12,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                GestureDetector(
                  onTap: () {
                    isAll = true;
                    setState(() {});
                  },
                  child: Container(
                    width: 75,
                    padding: const EdgeInsets.symmetric(
                      vertical: 6,
                      horizontal: 24,
                    ),
                    decoration: BoxDecoration(
                      color: isAll ? Colors.black : Colors.transparent,
                      borderRadius: isAll ? BorderRadius.circular(8) : null,
                    ),
                    child: Text('All'),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    isAll = false;
                    setState(() {});
                  },
                  child: Container(
                    width: 75,
                    padding: const EdgeInsets.symmetric(
                      vertical: 6,
                      horizontal: 24,
                    ),
                    decoration: BoxDecoration(
                      color: !isAll ? Colors.black : Colors.transparent,
                      borderRadius: !isAll ? BorderRadius.circular(8) : null,
                    ),
                    child: Text('Missed'),
                  ),
                ),
              ],
            ),
          ),
        ),
        actions: const [
          Icon(
            Icons.add_ic_call_outlined,
            color: Colors.white,
            size: 24,
          ),
          SizedBox(width: 16),
        ],
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
                  thumbColor: MaterialStateProperty.all(
                    notificationVal ? Colors.red : Colors.grey,
                  ),
                )
              ],
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                const Text(
                  'Animate',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Spacer(),
                Checkbox(
                  value: deactiveVal,
                  onChanged: (bool? val) {
                    setState(() {
                      deactiveVal = val ?? false;
                      animContainerColor =
                          deactiveVal ? Colors.amber : Colors.deepPurple;
                      animContainerTextColor =
                          !deactiveVal ? Colors.amber : Colors.deepPurple;

                      animContainerFontSize = deactiveVal ? 24 : 20;
                      animPadding = deactiveVal ? 24 : 12;
                    });
                  },
                )
              ],
            ),
            const SizedBox(height: 8),
            AnimatedContainer(
              alignment: Alignment.center,
              duration: const Duration(
                milliseconds: 500,
              ),
              width: 100,
              height: 100,
              color: animContainerColor,
              child: Text(
                'AnimatedContainer',
                style: TextStyle(
                  color: animContainerTextColor,
                  fontSize: animContainerFontSize,
                ),
              ),
            ),
            const SizedBox(height: 12),
            Container(
              color: Colors.brown,
              child: AnimatedPadding(
                padding: EdgeInsets.all(animPadding),
                duration: const Duration(
                  milliseconds: 500,
                ),
                curve: Curves.easeInCirc,
              ),
            ),
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
