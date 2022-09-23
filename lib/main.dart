import 'package:flutter/material.dart';
import 'package:food_delivery/screens/dish_screen.dart';
import 'package:food_delivery/screens/home_screen.dart';
import 'package:food_delivery/screens/partners_screen.dart';
import 'package:food_delivery/theme.dart';

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
      title: 'Flutter Demo',
      theme: buildThemeData(),
      home: const HomeScreen(),
      routes: {
        '/home': (context) => HomeScreen(),
        '/partners': (context) => PartnersScreen(),
        '/dishs': (context) => DishScreen(),
      },
    );
  }
}
