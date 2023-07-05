import 'package:flutter/material.dart';

class RowWidget extends StatelessWidget {
  const RowWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Colors.amber,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly, //x-axis
        crossAxisAlignment: CrossAxisAlignment.center, //y-axis
        children: const [
          Text(
            'Hello',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w800,
            ),
          ),
          Icon(Icons.home_filled),
          Chip(
            label: Text('Chip Widget'),
          ),
        ],
      ),
    );
  }
}
