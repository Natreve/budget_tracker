import 'package:flutter/material.dart';

class PrimaryAppBarMenu {
  String title;
  List<Widget> actions;
  PrimaryAppBarMenu({this.title, this.actions});
}

class TopAppBarMenu extends StatefulWidget {
  final PrimaryAppBarMenu primaryMenu;
  final Widget secondaryMenu;

  const TopAppBarMenu({Key key, this.primaryMenu, this.secondaryMenu})
      : super(key: key);

  @override
  TopAppBarMenuState createState() => TopAppBarMenuState();
}

class TopAppBarMenuState extends State<TopAppBarMenu> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Row(
            ///To DO create a action builder function to add new actions
            children: <Widget>[
              Expanded(
                  child: Text(
                widget.primaryMenu.title,
                style: TextStyle(
                    fontFamily: "Quicksand",
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              )),
              Icon(Icons.search)
            ],
          )
        ],
      ),
    );
  }
}
