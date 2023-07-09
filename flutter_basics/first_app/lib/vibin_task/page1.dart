import 'package:first_app/vibin_task/profile_model.dart';
import 'package:flutter/material.dart';

import 'list_view_seprator.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

// //         ''
  final List<ProfileModel> profileList = const [
    ProfileModel(
      imageUrl:
          'https://marketplace.canva.com/EAFEits4-uw/1/0/1600w/canva-boy-cartoon-gamer-animated-twitch-profile-photo-oEqs2yqaL8s.jpg',
      name: 'John A',
    ),
    ProfileModel(
      imageUrl:
          'https://marketplace.canva.com/EAFEits4-uw/1/0/1600w/canva-boy-cartoon-gamer-animated-twitch-profile-photo-oEqs2yqaL8s.jpg',
      name: 'John A',
    ),
    ProfileModel(
      imageUrl:
          'https://marketplace.canva.com/EAFEits4-uw/1/0/1600w/canva-boy-cartoon-gamer-animated-twitch-profile-photo-oEqs2yqaL8s.jpg',
      name: 'John A',
    ),
    ProfileModel(
      imageUrl:
          'https://marketplace.canva.com/EAFEits4-uw/1/0/1600w/canva-boy-cartoon-gamer-animated-twitch-profile-photo-oEqs2yqaL8s.jpg',
      name: 'John A',
    ),
    ProfileModel(
      imageUrl:
          'https://marketplace.canva.com/EAFEits4-uw/1/0/1600w/canva-boy-cartoon-gamer-animated-twitch-profile-photo-oEqs2yqaL8s.jpg',
      name: 'John A',
    ),
    ProfileModel(
      imageUrl:
          'https://marketplace.canva.com/EAFEits4-uw/1/0/1600w/canva-boy-cartoon-gamer-animated-twitch-profile-photo-oEqs2yqaL8s.jpg',
      name: 'John A',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, i) => ProfileItem(
            profile: profileList[i],
          ),
          separatorBuilder: (_, i) => const SizedBox(width: 10),
          itemCount: profileList.length,
        ),
      ),
    );
  }
}
