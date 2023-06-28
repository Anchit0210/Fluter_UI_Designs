import 'package:flutter/material.dart';
import 'package:ui_designs/widgets/Day19UI.dart';
import 'package:ui_designs/widgets/Day20UI.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.light, primaryColor: Colors.deepOrange[800]),
      home: Day20UI(),
    );
  }
}