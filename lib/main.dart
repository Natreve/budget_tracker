import 'package:flutter/material.dart';
import 'views/homePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Budget Tracker',
      theme: ThemeData(
          primaryColor: Colors.white,
          fontFamily: 'Quicksand',
          textTheme: TextTheme(
            body1: TextStyle(fontWeight: FontWeight.w600),
          )),
      home: HomePage(title: 'Daily transaction'),
    );
  }
}
