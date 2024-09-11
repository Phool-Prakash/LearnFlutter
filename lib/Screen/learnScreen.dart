import 'package:custombutton_che/custombutton_che.dart';
import 'package:flutter/material.dart';
import 'package:flutter_learn/ResponsiveWidgets/GridView/gridViewAndList.dart';
import 'package:flutter_learn/ResponsiveWidgets/responsiveWidgetsScreen.dart';
import 'package:flutter_learn/ResponsiveWidgets/userInputAccessibility/user_input_accessibility.dart';
import 'package:flutter_learn/Screen/testScreen.dart';
import 'package:flutter_learn/Stripe(paymentGetWay)/stripeMainScreen.dart';
import 'package:flutter_learn/animations/explicitAnimation/built_inAnimation.dart';
import 'package:flutter_learn/animations/flutterAnimation.dart';
import 'package:flutter_learn/revisionFlutter/revisionMain.dart';
import 'package:flutter_learn/statemanagement/statemanagement_screen.dart';
import 'package:flutter_learn/workingWithAPI/webSocketScreen.dart';

import '../customButton/customElevatedButton.dart';

class LearnScreen extends StatefulWidget {
  const LearnScreen({super.key});

  @override
  State<LearnScreen> createState() => _LearnScreenState();
}

class _LearnScreenState extends State<LearnScreen> {
  bool obscureText = true;
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // backgroundColor: Colors.blueGrey,
        bottomNavigationBar: NavigationBar(
          onDestinationSelected: (value) {
            setState(() {
              _currentIndex = value;
            });
          },
          selectedIndex: _currentIndex,
          destinations: const <Widget>[
            NavigationDestination(icon: Icon(Icons.more), label: 'More'),
            NavigationDestination(icon: Icon(Icons.add_alert), label: 'Add'),
            NavigationDestination(icon: Icon(Icons.delete), label: 'Delete'),
          ],
        ),
        appBar: AppBar(
          backgroundColor: Colors.deepOrange,
          centerTitle: true,
          elevation: 1,
          title: const Text(
            "Learn Flutter",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepPurple),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (builder) => const ResponsiveWidgets()));
                    },
                    child: const Text(
                      'Responsive Widgets',
                      style: TextStyle(color: Colors.white),
                    )),
              ),
              const SizedBox(
                height: 6,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (builder) =>
                                const GridViewAndListScreen()));
                  },
                  child: const Text("GridViewAndList")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (builder) =>
                                const UserInputAccessibility()));
                  },
                  child: const Text("UserInputAccessibility")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (builder) =>
                                const StateManagementScreen()));
                  },
                  child: const Text("About State Management")),
              const SizedBox(
                height: 10,
              ),
              CustomElevatedButton(
                buttonColor: Colors.red,
                text: 'Revision Screen',
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (builder) => const RevisionMainScreen()));
                },
              ),
              CustomElevatedButton(
                  text: 'Animation',
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (builder) => const AnimationScreen()));
                  }),
              CustomButtonChe(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (builder) =>
                                const BuiltInAnimationScreen()));
                  },
                  text: 'Animation'),
              const SizedBox(
                height: 15,
              ),
              CustomButtonChe(
                  bHeight: 50,
                  textSize: 17,
                  color3: Colors.green,
                  color2: Colors.lightGreen.shade400,
                  color1: Colors.lightGreenAccent.shade700,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (builder) => const TestScreen()));
                  },
                  text: 'Test Screen'),
              const SizedBox(
                height: 20,
              ),
              MyElevatedButton(
                  gradient: const LinearGradient(
                      colors: [Colors.yellowAccent, Colors.yellow]),
                  onPressed: () {
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (builder) => const HomeScreen()));
                  },
                  child: const Text('Flutter Stripe(Payment GetWay')),
              CustomButtonChe(
                  bHeight: 50,
                  textSize: 17,
                  color3: Colors.green,
                  color2: Colors.lightGreen.shade400,
                  color1: Colors.lightGreenAccent.shade700,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (builder) => const WebSocketScreen()));
                  },
                  text: 'Test Screen'),
            ],
          ),
        ),
      ),
    );
  }
}

class MyElevatedButton extends StatelessWidget {
  final BorderRadiusGeometry? borderRadius;
  final double? width;
  final double height;
  final Gradient gradient;
  final VoidCallback? onPressed;
  final Widget child;
  final Colors? color;

  const MyElevatedButton({
    super.key,
    required this.onPressed,
    required this.child,
    this.borderRadius,
    this.width,
    this.height = 44.0,
    this.gradient =
        const LinearGradient(colors: [Colors.black45, Colors.black]),
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    final borderRadius = this.borderRadius ?? BorderRadius.circular(0);
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        gradient: gradient,
        borderRadius: borderRadius,
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          shape: RoundedRectangleBorder(borderRadius: borderRadius),
        ),
        child: child,
      ),
    );
  }
}
