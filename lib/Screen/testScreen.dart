import 'package:flutter/material.dart';
import 'package:flutter_learn/paddingExtension/paddingExtension.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({super.key});

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  static const titleText = Text('Title Text');
  static const subTitle = Text('Sub-Title');

  ///TextStyle
  static const descTextStyle = TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w600,
      fontFamily: 'Roboto',
      letterSpacing: 0.5,
      fontSize: 18,
      height: 2);

  final iconList = DefaultTextStyle(
      style: descTextStyle,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Column(
          children: [
            Icon(
              Icons.kitchen,
              color: Colors.green[500],
            ),
            const Text('PREP:'),
            const Text('25 min')
          ],
        ),
        Column(
          children: [
            Icon(
              Icons.timer,
              color: Colors.green[500],
            ),
            const Text('COOK:'),
            const Text('1 hr')
          ],
        ),
        Column(
          children: [
            Icon(
              Icons.restaurant,
              color: Colors.green[500],
            ),
            const Text('FEEDS:'),
            const Text('4-6'),
          ],
        )
      ]).padAll(20));

  final leftColumn = Container(
      padding: const EdgeInsets.fromLTRB(20, 30, 20, 20),
      child: const Column(
        children: [
          titleText,
          subTitle,
        ],
      ));
  final star = Row(
    mainAxisSize: MainAxisSize.min,
    children: [
      Icon(Icons.star, color: Colors.green[500]),
      Icon(Icons.star, color: Colors.green[500]),
      Icon(Icons.star, color: Colors.green[500]),
      const Icon(Icons.star, color: Colors.black),
      const Icon(Icons.star, color: Colors.black),
    ],
  );
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/bg.jpg'), fit: BoxFit.cover)),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                star,
                const Text(
                  'Saket',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                )
              ],
            ),
          ),
        ));
  }
}
