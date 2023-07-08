import 'package:flutter/material.dart';

import 'widgets/item_widget.dart';

class ListOfItems extends StatelessWidget {
  ListOfItems({Key? key}) : super(key: key);

  final List<String> images = [
    "https://imgv3.fotor.com/images/gallery/Realistic-Male-Profile-Picture.jpg",
    "https://t4.ftcdn.net/jpg/03/64/21/11/360_F_364211147_1qgLVxv1Tcq0Ohz3FawUfrtONzz8nq3e.jpg",
    "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?cs=srgb&dl=pexels-pixabay-220453.jpg&fm=jpg",
    "https://expertphotography.b-cdn.net/wp-content/uploads/2020/08/profile-photos-4.jpg",
    "https://images.pexels.com/photos/3586091/pexels-photo-3586091.jpeg?cs=srgb&dl=pexels-tain%C3%A1-bernard-3586091.jpg&fm=jpg",
  ];

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
      //using horizontal list
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(
            images.length,
            (int index) => Image.network(
              images[index],
              width: 150,
              height: 100,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
      //using ListView.seprated
      // body: ListView.separated(
      //   itemBuilder: (_, index) => const ItemWidget(
      //     imageLink:
      //         'https://img.freepik.com/premium-vector/logo-design-icon-symbol-organic-cosmetics-bottles-cosmetics-skin-care-with-watercolor-texture-ingredients-decorate-with-fruits-berries-herb_171580-227.jpg?w=2000',
      //     title: 'Cosmetics',
      //   ),
      //   separatorBuilder: (_, index) => const Center(child: Text('----x----')),
      //   itemCount: 2,
      // ),
      //using ListView.builder
      // body: ListView.builder(
      //   //anonymous function
      //   itemCount: 10,
      //   itemBuilder: (BuildContext ctx, int index) {
      //     return const ItemWidget(
      //       imageLink:
      //           'https://img.freepik.com/premium-vector/logo-design-icon-symbol-organic-cosmetics-bottles-cosmetics-skin-care-with-watercolor-texture-ingredients-decorate-with-fruits-berries-herb_171580-227.jpg?w=2000',
      //       title: 'Cosmetics',
      //     );
      //   },
      // ),
      //using ListView
      // body: ListView(
      //     children: List.generate(
      //       10,
      //       (index) => const ItemWidget(
      //         imageLink:
      //             'https://img.freepik.com/premium-vector/logo-design-icon-symbol-organic-cosmetics-bottles-cosmetics-skin-care-with-watercolor-texture-ingredients-decorate-with-fruits-berries-herb_171580-227.jpg?w=2000',
      //         title: 'Cosmetics',
      //       ),
      //     ),
      // ),
      //using SingleChildScrollView
      // body: SingleChildScrollView(
      //   child: Column(
      //     children: List.generate(
      //       10,
      //       (index) => const ItemWidget(
      //         imageLink:
      //             'https://img.freepik.com/premium-vector/logo-design-icon-symbol-organic-cosmetics-bottles-cosmetics-skin-care-with-watercolor-texture-ingredients-decorate-with-fruits-berries-herb_171580-227.jpg?w=2000',
      //         title: 'Cosmetics',
      //       ),
      //     ),
      //     // children: const [
      //     //   //row 1
      //     //   ItemWidget(
      //     //     imageLink:
      //     //         'https://img.freepik.com/premium-vector/logo-design-icon-symbol-organic-cosmetics-bottles-cosmetics-skin-care-with-watercolor-texture-ingredients-decorate-with-fruits-berries-herb_171580-227.jpg?w=2000',
      //     //     title: 'Cosmetics',
      //     //   ),
      //     //   SizedBox(height: 20),
      //     //   ItemWidget(
      //     //     fromAsset: true,
      //     //     imageLink: 'assets/images/rose.jpeg',
      //     //     title: 'Electronics',
      //     //     description: '100 shop avalabile',
      //     //     isSelected: true,
      //     //   ),
      //     //   SizedBox(height: 20),
      //     //   ItemWidget(
      //     //     imageLink:
      //     //         'https://t4.ftcdn.net/jpg/04/60/99/63/360_F_460996349_bIzl423o41oLdi5hJIgNT3OD8SViuo9i.jpg',
      //     //     title: 'Footwear',
      //     //   ),
      //     //   SizedBox(height: 20),
      //     //   ItemWidget(
      //     //     imageLink:
      //     //         'https://t4.ftcdn.net/jpg/04/60/99/63/360_F_460996349_bIzl423o41oLdi5hJIgNT3OD8SViuo9i.jpg',
      //     //     title: 'Footwear',
      //     //     description: '50 shop avalabile',
      //     //   ),
      //     //   SizedBox(height: 20),
      //     //   ItemWidget(
      //     //     imageLink:
      //     //         'https://t4.ftcdn.net/jpg/04/60/99/63/360_F_460996349_bIzl423o41oLdi5hJIgNT3OD8SViuo9i.jpg',
      //     //     title: 'Footwear',
      //     //     description: '50 shop avalabile',
      //     //   ),
      //     //   SizedBox(height: 20),
      //     //   ItemWidget(
      //     //     imageLink:
      //     //         'https://t4.ftcdn.net/jpg/04/60/99/63/360_F_460996349_bIzl423o41oLdi5hJIgNT3OD8SViuo9i.jpg',
      //     //     title: 'Footwear',
      //     //     description: '50 shop avalabile',
      //     //   ),
      //     //   SizedBox(height: 20),
      //     //   ItemWidget(
      //     //     imageLink:
      //     //         'https://t4.ftcdn.net/jpg/04/60/99/63/360_F_460996349_bIzl423o41oLdi5hJIgNT3OD8SViuo9i.jpg',
      //     //     title: 'Footwear',
      //     //     description: '50 shop avalabile',
      //     //   ),
      //     // ],
      //   ),
      // ),
    );
  }
}
