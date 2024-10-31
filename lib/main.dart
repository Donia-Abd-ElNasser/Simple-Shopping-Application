// ignore_for_file: camel_case_types


import 'package:e_commerce_app/screens/electronic_screen.dart';
import 'package:e_commerce_app/screens/favourite_screen.dart';
import 'package:e_commerce_app/screens/home_screen.dart';
import 'package:e_commerce_app/screens/jewellery_screen.dart';
import 'package:e_commerce_app/screens/login_screen.dart';
import 'package:e_commerce_app/screens/mens_screen.dart';
import 'package:e_commerce_app/screens/onBoarding_screen1.dart';
import 'package:e_commerce_app/screens/woman_screen.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'firebase_options.dart';
import 'screens/profile_info_screen.dart';
import 'screens/register_screen.dart';

void main()async{
   WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(const ShoppingApp());
}

class ShoppingApp extends StatelessWidget {
  const ShoppingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(textTheme: GoogleFonts.poppinsTextTheme(), ),
      routes: {
        LoginScreen.id: (context)=>const LoginScreen(),
        RegisterationScreen.id:(context)=>const RegisterationScreen(),
       HomePage.id:(context)=>const HomePage(),
       FavouritePage.id:(context)=>const FavouritePage(),
       ProfilePage.id:(context)=>const ProfilePage(),
       WomenCategoryPage.id:(context)=>const WomenCategoryPage(),
       MenCategoryPage.id:(context)=>const MenCategoryPage(),
       ElectronicPage.id:(context)=>const ElectronicPage(),
       JewelleryPage.id:(context)=>const JewelleryPage(),
      },
      home:  Onbording(),
    );
  }
}