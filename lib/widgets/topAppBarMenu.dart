import 'package:flutter/material.dart';
import '../style.dart';

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
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(25.0),
          bottomRight: Radius.circular(25.0),
        ),
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(.12),
              offset: Offset(0, 12),
              blurRadius: 60)
        ],
      ),
      padding: EdgeInsets.all(20.0),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: Text(
                  widget.primaryMenu.title,
                  style: pageTitleStyle,
                ),
              ),
              Icon(Icons.search)
            ],
          )
        ],
      ),
    );
  }
}
