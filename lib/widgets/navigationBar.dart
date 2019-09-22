import 'package:flutter/material.dart';

class NavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text("Hello");
  }
}

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new BottomAppBar(
      shape: CircularNotchedRectangle(),
      notchMargin: 4.0,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    IconButton(
                      color: Color.fromRGBO(255, 51, 120, 1.0),
                      icon: Icon(Icons.calendar_today),
                      onPressed: () {},
                    ),
                    Text("Daily")
                  ],
                ),
                IconButton(
                  color: Color.fromRGBO(255, 51, 120, 1.0),
                  icon: Icon(Icons.insert_chart),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                IconButton(
                  color: Color.fromRGBO(255, 51, 120, 1.0),
                  icon: Icon(Icons.account_balance_wallet),
                  onPressed: () {},
                ),
                IconButton(
                  color: Color.fromRGBO(255, 51, 120, 1.0),
                  icon: Icon(Icons.account_box),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class NavigationMenu extends StatelessWidget {
  final Icon calendarIcon =
      Icon(Icons.calendar_today, color: Color.fromRGBO(255, 51, 120, 1.0));
  final Icon statsIcon =
      Icon(Icons.insert_chart, color: Color.fromRGBO(201, 204, 211, 1));
  final Icon budgetIcon = Icon(Icons.account_balance_wallet,
      color: Color.fromRGBO(201, 204, 211, 1));
  final Icon profileIcon =
      Icon(Icons.account_box, color: Color.fromRGBO(201, 204, 211, 1));

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      notchMargin: 4.0,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          new NavigationItem("Daily", calendarIcon),
          new NavigationItem("Stat", statsIcon),
          new NavigationItem("Budget", budgetIcon),
          new NavigationItem("Profile", profileIcon),
        ],
      ),
    );
  }
}

class NavigationItem extends StatefulWidget {
  final String title;
  final Icon icon;
  NavigationItem(this.title, this.icon);

  @override
  NavigationItemState createState() => NavigationItemState();
}

class NavigationItemState extends State<NavigationItem> {
  bool active = false;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 80,
        child: Material(
          type: MaterialType.transparency,
          child: InkWell(
            onTap: () => print("Clicked"),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                widget.icon,
                Text('${widget.title}',
                    style: TextStyle(color: Color.fromRGBO(201, 204, 211, 1)))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
