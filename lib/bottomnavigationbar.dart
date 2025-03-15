import 'package:flutter/material.dart';
import 'package:screen/screen_1.dart';
import 'package:screen/screen_2.dart';
import 'package:screen/screen_3.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    Screen_1(),
    Screen_2(),
    Screen_3(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.looks_one_outlined),
            label: 'Screen-1',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.looks_two_outlined),
            label: 'Screen-2',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.looks_3_outlined),
            label: 'Screen-3',
          ),

        ],
      ),
    );
  }
}
