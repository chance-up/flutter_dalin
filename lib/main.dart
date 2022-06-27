import 'package:flutter/material.dart';
import 'views/dalin/dalin_home_screen.dart';

void main() => runApp(const MyApp());

bool isdalin = false;

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '달인',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const DalinHomeScreen(),
    );
  }
}
