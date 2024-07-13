import 'package:flutter/material.dart';
import 'package:flutter_learn/statemanagement/Widgets/materialWidget/actions/commonButtons.dart';
import 'package:flutter_learn/statemanagement/Widgets/materialWidget/actions/floatingActionButton.dart';
import 'package:flutter_learn/statemanagement/Widgets/materialWidget/actions/iconButtonScreen.dart';
import 'package:flutter_learn/statemanagement/Widgets/materialWidget/actions/segmentedButtonScreen.dart';

class ActionScreen extends StatefulWidget {
  const ActionScreen({super.key});

  @override
  State<ActionScreen> createState() => _ActionScreenState();
}

class _ActionScreenState extends State<ActionScreen> {
  int currentIndex = 0;
  final String appBarTitle = 'Action Screen';
  static const TextStyle textStyle =
      TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.white);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   centerTitle: true,
      //   backgroundColor: Colors.blue,
      //   title: Text(
      //     appBarTitle,
      //     style: textStyle,
      //   ),
      // ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      //   child: const Icon(Icons.add),
      // ),
      bottomNavigationBar: NavigationBar(
        destinations: const <Widget>[
          NavigationDestination(icon: Icon(Icons.smart_button), label: 'cButton'),
          NavigationDestination(icon: Icon(Icons.radio_button_checked), label: 'fAButton'),
          NavigationDestination(icon: Icon(Icons.radio_button_off), label: 'iButton'),
          NavigationDestination(icon: Icon(Icons.safety_check), label: 'sButton'),
        ],
        selectedIndex: currentIndex,
        onDestinationSelected: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
      body: const <Widget>[
        CommonButtonsScreen(),
        FloatingActionButtonScreen(),
        IconButtonScreen(),
        SegmentedButtonScreen()
      ][currentIndex],
    );
  }
}
