import 'package:data/home.dart';
import 'package:flutter/material.dart';

import 'details.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: 'Simple Demo Page',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: const Home(),

    );
  }
}

