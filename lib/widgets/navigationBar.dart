import 'package:flutter/material.dart';

///A appbar menu item class used to create a appbar menu item by defining it's [text] and [IconData]
class BottomAppBarMenuItem {
  String text;
  IconData iconData;
  BottomAppBarMenuItem({@required this.text, @required this.iconData});
}

///The bottomAppBarMenue is a StatefulWidget to be used with the [Scaffold.bottomNavigationBar] it takes in for its parameters
///[menueItems: items], [onMenuItemSelected: callback], [menuItemColor: Color], [menuBackgroundColor: Color], [selectedMenuItemColor: Color]
class BottomAppBarMenu extends StatefulWidget {
  final List<BottomAppBarMenuItem> menuItems;
  final ValueChanged<int> onMenuItemSelected;
  final Color menuBackgroundColor;
  final Color menuItemColor;
  final Color selectedMenuItemColor;

  const BottomAppBarMenu(
      {Key key,
      @required this.menuItems,
      @required this.onMenuItemSelected,
      @required this.menuBackgroundColor,
      @required this.menuItemColor,
      @required this.selectedMenuItemColor})
      : super(key: key);

  @override
  BottomAppBarMenuState createState() => BottomAppBarMenuState();
}

class BottomAppBarMenuState extends State<BottomAppBarMenu> {
  int _selectedMenuItem = 0;

  _updateSelectMenuItem(int index) {
    widget.onMenuItemSelected(index);
    setState(() {
      _selectedMenuItem = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    ///Renders each menu item present in the [widget.menutItem] that was passed into the [Scaffold.bottomNavigationBar] widget [BottomAppBarMenu]
    List<Widget> menuItems =
        List.generate(widget.menuItems.length, (int index) {
      return _renderBottomAppBarMenuItem(
        index: index,
        menuItem: widget.menuItems[index],
        updatedMenuItem: _updateSelectMenuItem,
      );
    });

    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(25.0),
        topRight: Radius.circular(25.0),
      ),
      child: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 4.0,
        color: widget.menuBackgroundColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: menuItems,
        ),
      ),
    );
  }

  ///This function is used with the [List.generate] and takes in a [BottomAppBarMenuItem] its postion has a [Int] and a [ValueChanged] callback in order to render each item as a [List<widget>].
  Widget _renderBottomAppBarMenuItem({
    BottomAppBarMenuItem menuItem,
    int index,
    ValueChanged<int> updatedMenuItem,
  }) {
    Color iconColor = _selectedMenuItem == index
        ? widget.selectedMenuItemColor
        : widget.menuItemColor;
    Color textColor =
        _selectedMenuItem == index ? Colors.black : widget.menuItemColor;
    Border menuItemBorder = _selectedMenuItem == index
        ? Border(
            top: BorderSide(
              width: 2.0,
              color: Color.fromRGBO(255, 51, 120, 1.0),
            ),
          )
        : null;
    return Expanded(
      child: SizedBox(
        height: 80,
        child: Material(
          type: MaterialType.transparency,
          child: InkWell(
            onTap: () => updatedMenuItem(index),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                SizedBox(
                  width: 34,
                  child: Container(
                    decoration: BoxDecoration(border: menuItemBorder),
                  ),
                ),
                Expanded(child: Icon(menuItem.iconData, color: iconColor)),
                Expanded(
                  child: Text(
                    menuItem.text,
                    style: TextStyle(color: textColor),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
//Color.fromRGBO(201, 204, 211, 1)
