import 'package:flutter/material.dart';
import 'custom_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.text, required this.icon, this.onPressed});
final String text;
final IconData icon;
final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return   Container(
      
      child: Row(
        
         mainAxisAlignment:MainAxisAlignment.spaceBetween,
        children: [
         
         Text(
            text,
            style: TextStyle(
              fontSize: 24,fontWeight: FontWeight.bold,
              color: Theme.of(context).primaryColor,
            ),
          ),
          CustomIcon(onPressed: onPressed,icon: icon,)
        ],
      ),
    );
  }
}
