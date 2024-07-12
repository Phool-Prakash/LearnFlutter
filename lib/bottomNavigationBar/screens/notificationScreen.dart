import 'package:flutter/material.dart';
import 'package:flutter_learn/bottomNavigationBar/style/style.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  final optionStyle = ThemeStyle().optionStyle;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Notification Screen',
        style: optionStyle,
      ),
    );
  }
}
