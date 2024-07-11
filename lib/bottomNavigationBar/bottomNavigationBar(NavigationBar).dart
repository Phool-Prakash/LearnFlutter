import 'package:flutter/material.dart';

class BottomNavigationBar1 extends StatefulWidget {
  const BottomNavigationBar1({super.key});

  @override
  State<BottomNavigationBar1> createState() => _BottomNavigationBar1State();
}

class _BottomNavigationBar1State extends State<BottomNavigationBar1> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        selectedIndex: _currentIndex,
        surfaceTintColor: Colors.deepPurple,
        indicatorColor: Colors.white,
        height: 80,
        backgroundColor: Colors.purple,
        destinations: const <Widget>[
          NavigationDestination(icon: Icon(Icons.feed), label: 'Feed',tooltip: 'Feed',),
          NavigationDestination(icon: Icon(Icons.message), label: 'Message'),
          NavigationDestination(
              icon: Icon(Icons.notifications), label: 'Notification'),
          NavigationDestination(icon: Icon(Icons.menu), label: 'Menu')
        ],
      ),
    );
  }
}
