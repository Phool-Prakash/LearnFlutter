import 'package:flutter/material.dart';

class BuiltInAnimationScreen extends StatefulWidget {
  const BuiltInAnimationScreen({super.key});

  @override
  State<BuiltInAnimationScreen> createState() => _BuiltInAnimationScreenState();
}

class _BuiltInAnimationScreenState extends State<BuiltInAnimationScreen>
    with SingleTickerProviderStateMixin {
  AnimationController? _animationController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(seconds: 15),
      vsync: this,
    )..repeat();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Align(
          alignment: Alignment.bottomLeft,
          child: TimeStopper(
            controller: _animationController!,
          ),
        ),
        RotationTransition(
            alignment: Alignment.center,
            turns: _animationController!,
            child: const GalaxyFitz()),
      ],
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _animationController?.dispose();
    super.dispose();
  }
}

///GalaxyFitz
class GalaxyFitz extends StatelessWidget {
  const GalaxyFitz({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: Image.asset('assets/galaxy_transparent.png'));
  }
}

///Controller

class TimeStopper extends StatelessWidget {
  final AnimationController controller;
  const TimeStopper({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          if (controller.isAnimating) {
            controller.stop();
          } else {
            controller.repeat();
          }
        },
        child: const Icon(
          Icons.play_arrow,
          size: 80,
          color: Colors.white,
        ));
  }
}
