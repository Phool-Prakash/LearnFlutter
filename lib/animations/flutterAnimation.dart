import 'package:flutter/material.dart';

class AnimationScreen extends StatefulWidget {
  const AnimationScreen({super.key});

  @override
  State<AnimationScreen> createState() => _AnimationScreenState();
}

class _AnimationScreenState extends State<AnimationScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 2))
          ..repeat(reverse: true);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double size = 300.0;
    return Center(
      child: Column(
        children: [
          const SizedBox(
            height: 15,
          ),

          ///Explicit Animation
          FadeTransition(
            opacity: _controller,
            child: const FlutterLogo(
              textColor: Colors.white,
              style: FlutterLogoStyle.horizontal,
              curve: Curves.fastEaseInToSlowEaseOut,
              duration: Duration(seconds: 3),
              size: 100,
            ),
          ),
          const SizedBox(
            height: 20,
          ),

          ///Implicit Animation
          AnimatedContainer(
            decoration: const BoxDecoration(
                gradient:
                    LinearGradient(colors: [Colors.yellow, Colors.orange])),
            duration: const Duration(seconds: 1),
            transform: Matrix4.identity()
              ..translate(size / 2, size / 2)
              ..multiply(Matrix4.rotationZ(size/4))
              ..translate(-size / 2, -size / 2),
            height: size,
            width: size,
          )
        ],
      ),
    );
  }
}
