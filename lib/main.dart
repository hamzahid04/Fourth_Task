import 'package:ecommrece_app/models/Cart.dart';
import 'package:ecommrece_app/models/cars_model.dart';
import 'package:ecommrece_app/pages/HomePage.dart';
import 'package:ecommrece_app/pages/intro_page.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Ford Motors',
        home: IntroPage(),
    );
  }
}
