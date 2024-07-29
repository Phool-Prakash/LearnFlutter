import 'package:custombutton_che/custombutton_che.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

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

  //Implicit Animation (AnimatedContainer)
  bool _isSelected = false;

  //AnimatedOpacity
  bool _visible = true;

  //AnimatedAlign
  bool _align = true;

  //Tween value
  static final colorTween = ColorTween(begin: Colors.white, end: Colors.orange);

  //
  double _slider = 0;

  Color _newColor = Colors.white;
  @override
  Widget build(BuildContext context) {
    double size = 300.0;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Center(
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
              GestureDetector(
                onTap: () {
                  setState(() {
                    _isSelected = !_isSelected;
                  });
                },
                child: AnimatedContainer(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                    _isSelected ? Colors.yellow : Colors.purpleAccent,
                    _isSelected ? Colors.orange : Colors.lightBlue,
                  ])),
                  duration: const Duration(seconds: 1),
                  transform: Matrix4.identity()
                    ..translate(size / 2, size / 2)
                    ..multiply(
                        Matrix4.rotationZ(_isSelected ? size / 4 : size / 2))
                    ..translate(-size / 2, -size / 2),
                  height: _isSelected ? size : 200,
                  width: _isSelected ? size : 200,
                ),
              ),
              const SizedBox(
                height: 100,
              ),
              AnimatedOpacity(
                  opacity: _visible ? 1.0 : 0.0,
                  duration: const Duration(seconds: 2),
                  child: const Text(
                    'AnimatedOpacity',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  )),
              const SizedBox(
                height: 10,
              ),
              CustomButtonChe(
                  color1: Colors.purpleAccent,
                  color3: CupertinoColors.systemPurple,
                  color2: Colors.deepPurpleAccent,
                  onPressed: () {
                    setState(() {
                      _visible = !_visible;
                    });
                  },
                  text: 'Toggle Opacity'),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    _align = !_align;
                  });
                },
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.blue[50],
                  child: AnimatedAlign(
                    alignment:
                        _align ? Alignment.topRight : Alignment.bottomLeft,
                    duration: const Duration(seconds: 1),
                    curve: Curves.easeInOut,
                    child: const FlutterLogo(
                      size: 30,
                    ),
                  ),
                ),
              ),

              Center(
                child: TweenAnimationBuilder(
                  duration: const Duration(seconds: 2),
                  tween: Tween<double>(begin: 0, end: 2 * math.pi),
                  builder: (_, double angle, __) {
                    return Transform.rotate(
                        angle: angle,
                        child: const Icon(
                          Icons.star,
                          size: 120,
                          color: Colors.white,
                        ));
                  },
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TweenAnimationBuilder(
                tween: ColorTween(begin: Colors.white, end: _newColor),
                  //2.
                  // tween: colorTween,
                  duration: const Duration(seconds: 0),
                  builder: (_, Color? color, Widget? myChild) {
                    return ColorFiltered(
                        colorFilter:
                            ColorFilter.mode(color!, BlendMode.modulate),
                        child: myChild);
                  },
                child: Image.asset('assets/sun.jpg')),

              //Slider
              Slider.adaptive(
                value: _slider,
                onChanged: (double value) {
                  setState(() {
                    _slider = value;
                    _newColor = Color.lerp(Colors.white, Colors.green, _slider)!;
                  });
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
