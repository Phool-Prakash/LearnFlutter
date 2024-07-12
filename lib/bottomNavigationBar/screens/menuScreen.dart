import 'package:flutter/material.dart';
import 'package:flutter_learn/bottomNavigationBar/style/style.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  final optionStyle = ThemeStyle().optionStyle;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Menu Screen',
        style: optionStyle,
      ),
    );
  }
}
