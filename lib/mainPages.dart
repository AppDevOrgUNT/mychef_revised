import 'package:flutter/material.dart';
import 'constants.dart';
import 'customAppBar.dart';
import 'homePage.dart';

class Pages extends StatefulWidget {
  @override
  _PagesState createState() => _PagesState();
}

class _PagesState extends State<Pages> {
  int _selectedIndex = 1;

  List<String> appBarTitle = [
    'Recipes',
    'Let\'s Cook!',
    'Saved',
  ];

  List<String> appBarSubText = [
    'Here\'s what you can make',
    'Select the ingredients you have',
    'Recipes you have saved',
  ];

  static List<Widget> _widgetOptions = <Widget>[
    Text('Index 0: Page 1'),
    HomePage(),
    Text('Index 2: Page 3'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: CustomAppBar(
              title: appBarTitle.elementAt(_selectedIndex),
              subText: appBarSubText.elementAt(_selectedIndex),
            ),
          ),
          Expanded(
            flex: 5,
            child: _widgetOptions.elementAt(_selectedIndex),
          ),
          BottomNavigationBar(
            backgroundColor: kLimeColor,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.list),
                label: 'Recipes',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.house),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite),
                label: 'Saved',
              ),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.grey[800],
            unselectedItemColor: Colors.grey[200],
            onTap: _onItemTapped,
          ),
        ],
      ),
    );
  }
}

// Expanded(
// child: CustomAppBar(
// title: 'Let\'s Cook!',
// subText: 'Select the ingredients you have',
// ),
// ),
