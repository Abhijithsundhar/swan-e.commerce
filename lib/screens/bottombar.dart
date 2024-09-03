import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:swan/screens/homepage.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: <Widget>[
          HomeScreen(),
          Center(child: Text('Search Page')),
          Center(child: Text('Notifications Page')),
          Center(child: Text('Messages Page')),
          Center(child: Text('Profile Page')),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.black, // Color of the selected item
        unselectedItemColor: Colors.grey, // Set unselected item color
        elevation: 0, // Remove bottom bar border
        selectedLabelStyle: TextStyle(color: Colors.black), // Color of the selected text
        unselectedLabelStyle: TextStyle(color: Colors.pink), // Color of the unselected text
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.text_rotation_angleup_rounded),
            label: 'Brands',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.brightness_auto_outlined),
            label: 'Best Items',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.grid_view),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}
