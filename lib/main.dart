import 'package:flutter/material.dart';
import './classes/Transaction.dart';
import 'views/homePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Budget Tracker',
      theme: ThemeData(
          primaryColor: Color(0xFFFDFDFD),
          fontFamily: 'GT-Walsheim-Pro',
          textTheme: TextTheme(
            body1: TextStyle(fontWeight: FontWeight.w600),
          )),
      home: HomePage(transaction: Transaction.generateTransactions()),
    );
  }
}
