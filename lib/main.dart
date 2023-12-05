import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kuy_trip/screens/detail_xcreaam.dart';
import 'package:kuy_trip/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Inter',
        primarySwatch: Colors.blue,
      ),
      // ignore: prefer_const_constructors
      home: HomeScreen(),
    );
  }
}
