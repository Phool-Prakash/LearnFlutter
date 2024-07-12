import 'package:flutter/material.dart';
import 'package:flutter_learn/bottomNavigationBar/bottomNavigationBar(NavigationBar).dart';
import 'package:flutter_learn/bottomNavigationBar/screens/FeedScreen1.dart';
import 'package:flutter_learn/bottomNavigationBar/screens/menuScreen.dart';
import 'package:flutter_learn/bottomNavigationBar/screens/messageScreen.dart';
import 'package:flutter_learn/bottomNavigationBar/screens/notificationScreen.dart';

class BottomClass1 {
  final  List<Widget> _widgetOptions = [
    FeedScreen1(),
    MessageScreen(),
    NotificationScreen(),
    MenuScreen()
  ];
}
