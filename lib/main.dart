// main.dart
import 'package:flutter/material.dart';
import 'package:recipe/views/home.dart';
import 'package:recipe/views/start.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nom Nom',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
        primaryColor: Colors.white,
        textTheme: TextTheme(
          bodyText2: TextStyle(color: Colors.white),
        ),
      ),
      home: StartPage(), // Start with StartPage
    );
  }
}
