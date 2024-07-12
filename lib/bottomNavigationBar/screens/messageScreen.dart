import 'package:flutter/material.dart';
import 'package:flutter_learn/bottomNavigationBar/style/style.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({super.key});

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  final optionStyle = ThemeStyle().optionStyle;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'MessageScreen',
        style: optionStyle,
      ),
    );
  }
}
