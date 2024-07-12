import 'package:flutter/material.dart';
import 'package:flutter_learn/bottomNavigationBar/bottomNavigationClass/bottomNavigationClass.dart';
import 'package:flutter_learn/bottomNavigationBar/customNavigationBar/customNavigationBar.dart';
import 'package:flutter_learn/bottomNavigationBar/screens/FeedScreen1.dart';
import 'package:flutter_learn/bottomNavigationBar/screens/menuScreen.dart';
import 'package:flutter_learn/bottomNavigationBar/screens/messageScreen.dart';
import 'package:flutter_learn/bottomNavigationBar/screens/notificationScreen.dart';
import 'package:flutter_learn/bottomNavigationBar/style/style.dart';

class BottomNavigationBar1 extends StatefulWidget {
  const BottomNavigationBar1({super.key});

  @override
  State<BottomNavigationBar1> createState() => _BottomNavigationBar1State();
}

class _BottomNavigationBar1State extends State<BottomNavigationBar1> {
  int _currentIndex = 0;
  // static const TextStyle optionStyle =
  //     TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  final TextStyle optionStyle = ThemeStyle().optionStyle;
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
          NavigationDestination(
            icon: Icon(Icons.feed),
            label: 'Feed',
            tooltip: 'Feed',
          ),
          NavigationDestination(icon: Icon(Icons.message), label: 'Message'),
          NavigationDestination(
              icon: Icon(Icons.notifications), label: 'Notification'),
          NavigationDestination(icon: Icon(Icons.menu), label: 'Menu')
        ],
      ),
      body: Center(
        child: <Widget>[
          // FeedScreen(),
          // Text(
          //   'Phool',
          //   style: optionStyle,
          // ),
          // Text(
          //   'Prakash',
          //   style: optionStyle,
          // ),
          // Text(
          //   'Phool Prakash',
          //   style: optionStyle,
          // )
          const FeedScreen1(),
          const MessageScreen(),
          const NotificationScreen(),
          const MenuScreen()

        ][_currentIndex],
      ),
    );
  }
}

class FeedScreen extends StatefulWidget {
  const FeedScreen({super.key});

  @override
  State<FeedScreen> createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> {
  static const TextStyle optionStyle =
      TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold);
  final list = <String>[
    'Saket',
    'Phool'
        'Phool Prakash',
    'Shubham',
    'Roshan',
    'Rohit',
    'Ramesh',
    'Rohan',
    'Raunak',
    'Ramesh',
    'Rahul'
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) {
                return Center(
                  child: Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Container(
                      height: 54,
                      width: 230,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Colors.purpleAccent,
                                Colors.purple,
                                Colors.deepPurple
                              ])),
                      child: const Center(
                        child: Text(
                          'Saket',
                          style: optionStyle,
                        ),
                      ),
                    ),
                  ),
                );
              })),
    );
  }
}
