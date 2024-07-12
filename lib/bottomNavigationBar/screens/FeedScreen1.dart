import 'package:flutter/material.dart';
import 'package:flutter_learn/bottomNavigationBar/style/style.dart';

class FeedScreen1 extends StatefulWidget {
  const FeedScreen1({super.key});

  @override
  State<FeedScreen1> createState() => _FeedScreen1State();
}

class _FeedScreen1State extends State<FeedScreen1> {
  final optionStyle = ThemeStyle().optionStyle;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Feed Screen',
        style: optionStyle,
      ),
    );
  }
}
