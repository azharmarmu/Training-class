import 'package:flutter/material.dart';

import 'widgets/item_widget.dart';

class ListOfItems extends StatelessWidget {
  const ListOfItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFeef3f6),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text(
          'Select Categories',
          style: TextStyle(
            fontSize: 30,
            color: Color(0xFF38bdfd),
            fontWeight: FontWeight.bold,
            letterSpacing: 1.2,
            fontFamily: 'Lato-ThinItalic',
          ),
        ),
        leading: const Icon(
          Icons.sort,
          color: Color(0xFF38bdfd),
          size: 30,
        ),
      ),
      body: Column(
        children: const [
          //row 1
          ItemWidget(
            imageLink:
                'https://img.freepik.com/premium-vector/logo-design-icon-symbol-organic-cosmetics-bottles-cosmetics-skin-care-with-watercolor-texture-ingredients-decorate-with-fruits-berries-herb_171580-227.jpg?w=2000',
            title: 'Cosmetics',
          ),
          
          SizedBox(height: 20),

          ItemWidget(
            fromAsset: true,
            imageLink: 'assets/images/rose.jpeg',
            title: 'Electronics',
            description: '100 shop avalabile',
            isSelected: true,
          ),

          SizedBox(height: 20),

          ItemWidget(
            imageLink:
                'https://t4.ftcdn.net/jpg/04/60/99/63/360_F_460996349_bIzl423o41oLdi5hJIgNT3OD8SViuo9i.jpg',
            title: 'Footwear',
          ),

          SizedBox(height: 20),
          ItemWidget(
            imageLink:
                'https://t4.ftcdn.net/jpg/04/60/99/63/360_F_460996349_bIzl423o41oLdi5hJIgNT3OD8SViuo9i.jpg',
            title: 'Footwear',
            description: '50 shop avalabile',
          ),
        ],
      ),
    );
  }
}
