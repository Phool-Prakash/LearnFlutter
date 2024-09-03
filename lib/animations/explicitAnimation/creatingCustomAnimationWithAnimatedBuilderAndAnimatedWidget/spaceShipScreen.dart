import 'package:flutter/material.dart';

class SpaceshipScreen extends StatefulWidget {
  const SpaceshipScreen({super.key});

  @override
  State<SpaceshipScreen> createState() => _SpaceshipScreenState();
}

class _SpaceshipScreenState extends State<SpaceshipScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.center, children: <Widget>[
      Container(
        height: 1000,
        decoration: const BoxDecoration(
            gradient: RadialGradient(
                radius: 1.5, colors: [Colors.yellow, Colors.transparent])),
      )
    ]);
  }
}
