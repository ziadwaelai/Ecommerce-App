import 'package:flutter/material.dart';
import 'Screen/homeScreen.dart';
import 'Screen/itemScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: '180 task ',
        home: MyHomePage());
  }
}
