import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField(
      {this.obscureText = false, this.onChange, required this.text,this.type});
  Function(String)? onChange;
  TextInputType? type;
  final String text;
  final bool? obscureText;
  @override
  Widget build(BuildContext context) {
    return TextField(
     
      
      onChanged: onChange,
      decoration: InputDecoration(
        hintText: text,
       // hintStyle: const TextStyle(color: Colors.white),
        enabledBorder:  OutlineInputBorder(
          
          borderSide: BorderSide(color: Colors.black),borderRadius: BorderRadius.circular(8)
        ),
        border:  OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black),borderRadius: BorderRadius.circular(8)
        ),
      ),
    );
  }
}
