import 'package:flutter/material.dart';
import 'package:real_estate_ui/screens/LoginScreen.dart';

void main() {
  runApp(
    RealEstateApp(),
  );
}

class RealEstateApp extends StatefulWidget {
  RealEstateApp({Key? key}) : super(key: key);

  @override
  _RealEstateAppState createState() => _RealEstateAppState();
}

class _RealEstateAppState extends State<RealEstateApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
    // return Scaffold(

    // );
  }
}
