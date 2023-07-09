//import 'dart:html';

import 'package:first_app/vibin_task/profile_model.dart';
import 'package:flutter/material.dart';

class ProfileItem extends StatelessWidget {
  final ProfileModel profile;

  const ProfileItem({
    Key? key,
    required this.profile,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            image: DecorationImage(
              image: NetworkImage(profile.imageUrl),
              fit: BoxFit.cover,
            ),
          ),
          width: 80,
          height: 80,
        ),
        const SizedBox(height: 10),
        Text(profile.name),
      ],
    );
  }
}
