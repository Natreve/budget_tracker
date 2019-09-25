import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../classes/Transaction.dart';

class DailyTrasactionList extends StatefulWidget {
  final List<Transaction> transactions;

  const DailyTrasactionList({Key key, this.transactions}) : super(key: key);
  @override
  DailyTransactionListState createState() => DailyTransactionListState();
}

class DailyTransactionListState extends State<DailyTrasactionList> {
  @override
  Widget build(BuildContext context) {
    //return _renderDailyTransactionListItem(0);
    return ListView.builder(
      itemCount: widget.transactions.length,
      itemBuilder: (BuildContext context, int index) {
        return _renderDailyTransactionListItem(index);
      },
    );
  }

  Widget _renderDailyTransactionListItem(int index) {
    return Container(
      height: 71,
      padding: EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Column(
            children: <Widget>[
              Expanded(child: widget.transactions[index].image),
            ],
          ),
          Expanded(
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          Text(widget.transactions[index].title,
                              style: TextStyle(
                                fontFamily: "GT-Walsheim-Pro",
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF1C202E),
                              )),
                          Text(
                            new DateFormat("EEE ha").format(DateTime.parse(
                                widget.transactions[index].date.toString())),
                            style: TextStyle(
                              fontFamily: "GT-Walsheim-Pro",
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Colors.black.withOpacity(0.4),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      widget.transactions[index].amount.toString(),
                      style: TextStyle(
                        fontFamily: "GT-Walsheim-Pro",
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF19EA25),
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(bottom: 16),
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Colors.black.withOpacity(.12),
                          width: 0.5,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
/**
 Container(
                  padding: EdgeInsets.only(bottom: 16),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.black.withOpacity(.12),
                        width: 0.5,
                      ),
                    ),
                  ),
                ),
 */
