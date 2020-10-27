import 'package:flutter/material.dart';
import 'home_page.dart';

class TabPage extends StatefulWidget {
  @override
  _TabPageState createState() => _TabPageState();
}

class _TabPageState extends State<TabPage> {
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    // Text(
    //   'Index 0: Home',
    // ),
    HomePage(),
    Text(
      'Index 1: Search',
    ),
    Text(
      'Index 2: Account',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        // selectedItemColor: ,
        onTap: _onItemTapped, //Called when one of the items is tapped.
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text('Search')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            title: Text('Account')
          ),
        ],
        // selectedItemColor: ,
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget drawCard() {
    return Card(
      child: Column(
        children: <Widget>[
          Text('hi'),
          Text('hi'),
          Text('hi')
        ],
      )
    );
  }
}
