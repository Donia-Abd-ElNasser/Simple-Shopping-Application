import 'package:e_commerce_app/screens/profile_info_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../screens/favourite_screen.dart';
import '../screens/home_screen.dart';
import 'custom_icon.dart';

class CategoryBar extends StatelessWidget {
  const CategoryBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 10,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CustomIcon(
            icon: FontAwesomeIcons.house,
            onPressed: () {
              Navigator.pushNamed(context, HomePage.id);
            },
          ),
          CustomIcon(
            icon: FontAwesomeIcons.heart,
            onPressed: () {
              Navigator.pushNamed(context, FavouritePage.id);
            },
          ),
          CustomIcon(
            icon: Icons.person,
            onPressed: () {
              Navigator.pushNamed(context, ProfilePage.id);
            },
          ),
        ],
      ),
    );
  }
}
