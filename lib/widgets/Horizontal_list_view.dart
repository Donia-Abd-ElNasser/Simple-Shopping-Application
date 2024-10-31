import 'package:e_commerce_app/screens/electronic_screen.dart';
import 'package:e_commerce_app/screens/jewellery_screen.dart';
import 'package:e_commerce_app/screens/woman_screen.dart';
import 'package:flutter/material.dart';
import '../screens/mens_screen.dart';

class HorizontalListView extends StatelessWidget {
  HorizontalListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          CategoryWidget(
            onTap: () {
              Navigator.pushNamed(context, WomenCategoryPage.id);
            },
            text: 'Women\'s Category',
          ),
          CategoryWidget(
            onTap: () {
              Navigator.pushNamed(context, MenCategoryPage.id);
            },
            text: 'Men\'s Category',
          ),
          CategoryWidget(
            onTap: () {
              Navigator.pushNamed(context, ElectronicPage.id);
            },
            text: 'Electronic Category',
          ),
          CategoryWidget(
            onTap: () {
              Navigator.pushNamed(context, JewelleryPage.id);
            },
            text: 'Jewellery Category',
          ),
        ],
      ),
    );
  }
}

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key, required this.onTap, required this.text});
  final void Function()? onTap;
  final String text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          padding: const EdgeInsets.all(10),
          width: 200,
          height: 100,
           decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(22),color: Theme.of(context).primaryColor,),
          child: Center(
            child: Text(
              text,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
