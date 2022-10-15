import 'package:flutter/material.dart';
import '../Widget/SwipeCardWidget.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'CollegeBuddy',
          style: Theme.of(context).textTheme.bodyText1,
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.account_circle_rounded,
              color: Theme.of(context).iconTheme.color,
            ),
          )
        ],
      ),
      body: Container(
        color: Theme.of(context).primaryColor,
        child: SwipeCardWidget(),
      ),
      drawer: Drawer(child: ListView()),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromRGBO(147, 147, 147, 1),
        items: [
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: Icon(
              Icons.task_alt,
              color: Theme.of(context).iconTheme.color,
            ),
            label: 'ToDo',
          ),
          BottomNavigationBarItem(
              backgroundColor: Theme.of(context).primaryColor,
              icon: Icon(
                Icons.search,
                color: Theme.of(context).iconTheme.color,
              ),
              label: 'Search'),
          BottomNavigationBarItem(
              backgroundColor: Theme.of(context).primaryColor,
              icon: Icon(
                Icons.vpn_lock,
                color: Theme.of(context).iconTheme.color,
              ),
              label: 'Community'),
        ],
      ),
    );
  }
}
