import 'package:flutter/material.dart';
import 'package:motor_app/Screens/fourwheelerpage.dart';

import 'package:motor_app/Widget/cardViews.dart';
import 'package:motor_app/Screens/finalpage.dart';

import 'Screens/mainpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Page3(),
    );
  }
}
