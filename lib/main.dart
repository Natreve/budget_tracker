import 'package:flutter/material.dart';
import 'widgets/navigationBar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'GTWalsheimPro',
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List menuOptions = ["Daily", "Stats", "Budget", "Profile"];
  int _counter = 0;
  String _selected = 'Menu option Daily selected';

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _selectedMenu(int index) {
    setState(() {
      _selected = "Menu Option: ${menuOptions[index]} selected";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        decoration: BoxDecoration(color: Color.fromRGBO(253, 253, 253, 1)),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.display1,
              ),
              Text('$_selected')
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
        backgroundColor: Color.fromRGBO(255, 51, 120, 1.0),
      ),
      bottomNavigationBar: BottomAppBarMenu(
        menuBackgroundColor: Colors.white,
        menuItemColor: Color.fromRGBO(201, 204, 211, 1),
        selectedMenuItemColor: Color.fromRGBO(255, 51, 120, 1.0),
        menuItems: [
          BottomAppBarMenuItem(text: "Daily", iconData: Icons.calendar_today),
          BottomAppBarMenuItem(text: "Stats", iconData: Icons.insert_chart),
          BottomAppBarMenuItem(
              text: "Budget", iconData: Icons.account_balance_wallet),
          BottomAppBarMenuItem(text: "Profile", iconData: Icons.account_box),
        ],
        onMenuItemSelected: _selectedMenu,
      ), //NavigationMenu(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
