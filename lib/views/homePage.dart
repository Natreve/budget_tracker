import 'package:budget_tracker/widgets/dailyTransactionList.dart';
import 'package:flutter/material.dart';
import '../widgets/bottomAppBarMenu.dart';
import '../widgets/topAppBarMenu.dart';
import '../classes/Transaction.dart';

class HomePage extends StatefulWidget {
  final List<Transaction> transaction;

  const HomePage({Key key, this.transaction}) : super(key: key);

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  Widget _tabScreen;
  int _tabIndex = 0;
  @override
  Widget build(BuildContext context) {
    if (_tabIndex == 0) {
      _tabScreen = DailyTransactionTabPage(
        title: "Daily transaction",
        transactions: widget.transaction,
      );
    }
    return Scaffold(
      body: Padding(
        padding: MediaQuery.of(context).padding,
        child: _tabScreen,
      ),
      backgroundColor: Color(0xFFFDFDFD),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        tooltip: 'Increment',
        child: Icon(Icons.add),
        backgroundColor: Color.fromRGBO(255, 51, 120, 1.0),
      ),
      bottomNavigationBar: BottomAppBarMenu(
          menuBackgroundColor: Colors.white,
          menuItemColor: Color.fromRGBO(201, 204, 211, 1),
          selectedMenuItemColor: Color.fromRGBO(255, 51, 120, 1.0),
          menuItems: [
            BottomAppBarMenuItem(
              text: "Daily",
              iconData: Icons.calendar_today,
              tabScreen: DailyTransactionTabPage(
                title: "Daily transaction",
                transactions: widget.transaction,
              ),
            ),
            BottomAppBarMenuItem(
              text: "Stats",
              iconData: Icons.insert_chart,
              tabScreen: StatsTabPage(title: "Statistics"),
            ),
            BottomAppBarMenuItem(
              text: "Budget",
              iconData: Icons.account_balance_wallet,
              tabScreen: BudgetTabPage(title: "Budget"),
            ),
            BottomAppBarMenuItem(
              text: "Profile",
              iconData: Icons.account_box,
              tabScreen: ProfileTabPage(title: "Profile"),
            ),
          ],
          onMenuItemSelected: _selectedMenu,
          onMenuItemTap: _changeTabScreen), //NavigationMenu(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  void _selectedMenu(int index) {
    setState(() {
      _tabIndex = index;
    });
  }

  void _changeTabScreen(Widget tab) {
    setState(() {
      _tabScreen = tab;
    });
  }
}

class DailyTransactionTabPage extends StatelessWidget {
  final String title;
  final List<Transaction> transactions;
  const DailyTransactionTabPage({Key key, this.title, this.transactions})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TopAppBarMenu(
          primaryMenu: PrimaryAppBarMenu(
              title: "Daily transaction",
              actions: <Widget>[Icon(Icons.search)]),
        ),
        Expanded(
          child: DailyTrasactionList(
            transactions: transactions,
          ),
        )
      ],
    );
  }
}

class StatsTabPage extends StatelessWidget {
  final title;

  const StatsTabPage({Key key, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(title),
    );
  }
}

class BudgetTabPage extends StatelessWidget {
  final title;

  const BudgetTabPage({Key key, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(title),
    );
  }
}

class ProfileTabPage extends StatelessWidget {
  final title;

  const ProfileTabPage({Key key, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(title),
    );
  }
}
