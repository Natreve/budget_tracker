import 'package:flutter/material.dart';

class Transaction {
  Image image;
  String title;
  DateTime date;
  double amount;
  Transaction({
    @required this.image,
    @required this.title,
    @required this.date,
    @required this.amount,
  });

  static List<Transaction> generateTransactions() {
    return [
      Transaction(
        title: "Bought Gas",
        image: Image.asset(
          "assets/imgs/Automobile.png",
          height: 71,
          width: 71,
        ),
        date: DateTime.now(),
        amount: 60.00,
      ),
      Transaction(
        title: "ATM Withdrawl",
        image: Image.asset(
          "assets/imgs/Bank.png",
          height: 71,
          width: 71,
        ),
        date: DateTime.now(),
        amount: 35.00,
      ),
      Transaction(
        title: "Cash Spent",
        image: Image.asset(
          "assets/imgs/Cash.png",
          height: 71,
          width: 71,
        ),
        date: DateTime.now(),
        amount: 10.00,
      ),
      Transaction(
        title: "Gave away some money",
        image: Image.asset(
          "assets/imgs/Charity.png",
          height: 71,
          width: 71,
        ),
        date: DateTime.now(),
        amount: 50.00,
      ),
      Transaction(
        title: "Baby on the way",
        image: Image.asset(
          "assets/imgs/Childcare.png",
          height: 71,
          width: 71,
        ),
        date: DateTime.now(),
        amount: 10.00,
      ),
      Transaction(
        title: "Bought Gas",
        image: Image.asset(
          "assets/imgs/Automobile.png",
          height: 71,
          width: 71,
        ),
        date: DateTime.now(),
        amount: 60.00,
      ),
      Transaction(
        title: "ATM Withdrawl",
        image: Image.asset(
          "assets/imgs/Bank.png",
          height: 71,
          width: 71,
        ),
        date: DateTime.now(),
        amount: 35.00,
      ),
      Transaction(
        title: "Cash Spent",
        image: Image.asset(
          "assets/imgs/Cash.png",
          height: 71,
          width: 71,
        ),
        date: DateTime.now(),
        amount: 10.00,
      ),
      Transaction(
        title: "Gave away some money",
        image: Image.asset(
          "assets/imgs/Charity.png",
          height: 71,
          width: 71,
        ),
        date: DateTime.now(),
        amount: 50.00,
      ),
      Transaction(
        title: "Baby on the way",
        image: Image.asset(
          "assets/imgs/Childcare.png",
          height: 71,
          width: 71,
        ),
        date: DateTime.now(),
        amount: 10.00,
      ),
    ];
  }
}
