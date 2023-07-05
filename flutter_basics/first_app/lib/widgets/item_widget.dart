import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  final String imageLink;
  final bool fromAsset;
  final String title;
  final String description;
  final bool isSelected;

  const ItemWidget({
    Key? key,
    this.fromAsset = false,
    required this.imageLink,
    required this.title,
    this.description = '50 shop avalabile',
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 20),
        fromAsset
            ? Image.asset(
                imageLink,
                width: 80,
                height: 80,
              )
            : Image.network(
                imageLink,
                width: 80,
                height: 80,
              ),
        const SizedBox(width: 20),
        Column(
          children: [
            Text(
              title,
              style: const TextStyle(
                color: Color(0xFF404040),
                fontSize: 23.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.5,
              ),
            ),
            Text(
              description,
              style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w400),
            ),
          ],
        ),
        const Spacer(),
        Container(
          decoration: BoxDecoration(
            color: isSelected ? Colors.blue : Colors.white,
            shape: BoxShape.circle,
          ),
          child: Icon(
            isSelected ? Icons.done : Icons.add,
            size: 50,
            color: isSelected ? Colors.white : Colors.grey,
          ),
        ),
      ],
    );
  }
}
