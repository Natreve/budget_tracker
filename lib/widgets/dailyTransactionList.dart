import 'package:flutter/material.dart';

class DailyTransactionListItem {
  IconData icon;
  String title;
  DateTime date;
  double amount;
  DailyTransactionListItem(
      {@required this.icon,
      @required this.title,
      @required this.date,
      @required this.amount});
}

class DailyTrasactionList extends StatefulWidget {
  final List<DailyTransactionListItem> dailyTransactionListItem;

  const DailyTrasactionList({Key key, this.dailyTransactionListItem})
      : super(key: key);
  @override
  DailyTransactionListState createState() => DailyTransactionListState();
}

class DailyTransactionListState extends State<DailyTrasactionList> {
  @override
  Widget build(BuildContext context) {
    List<Widget> dailyTransactions =
        List.generate(widget.dailyTransactionListItem.length, (int index) {
      return _renderDailyTransactionListItem(index);
    });
    return ListView.builder(
      itemCount: dailyTransactions.length,
      itemBuilder: (BuildContext context, int index) {
        return dailyTransactions[index];
      },
    );
  }

  Widget _renderDailyTransactionListItem(int index) {
    return Container(
      child: Row(
        children: <Widget>[
          Icon(
            widget.dailyTransactionListItem[index].icon,
          ),
          Column(children: <Widget>[
            Text(
              widget.dailyTransactionListItem[index].title,
            ),
            Text(
              widget.dailyTransactionListItem[index].date.toString(),
            ),
          ]),
          Text(widget.dailyTransactionListItem[index].amount.toString()),
        ],
      ),
    );
  }
}
