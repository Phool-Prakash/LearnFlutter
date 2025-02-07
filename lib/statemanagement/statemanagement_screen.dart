import 'package:custombutton_che/custombutton_che.dart';
import 'package:flutter/material.dart';
import 'package:flutter_learn/statemanagement/Widgets/materialWidget/materialWidget.dart';
import 'package:flutter_learn/statemanagement/inheritedWidget/mystatefulWidget.dart';
import 'package:flutter_learn/statemanagement/provider/providerScreen.dart';
import 'package:flutter_learn/statemanagement/statefull&less/statefull/bird.dart';
import 'package:flutter_learn/statemanagement/styledWidgets/styledWidgets.dart';

import '../customButton/customElevatedButton.dart';

class StateManagementScreen extends StatefulWidget {
  const StateManagementScreen({super.key});

  @override
  State<StateManagementScreen> createState() => _StateManagementScreenState();
}

class _StateManagementScreenState extends State<StateManagementScreen> {
  int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text(
          'StateManagement',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (builder) => const MyStatefulWidget()));
              },
              child: const Text('InheritedWidget')),
          CustomElevatedButton(
              text: 'StateFull&StateLess',
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (builder) => const Bird(
                              color: Colors.deepPurple,
                              child: Center(
                                child: Text(
                                  'Stateful Widget',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            )));
              }),
          CustomElevatedButton1(
              text: 'Styled Widget',
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (builder) => const StyledWidgets()));
              }),
          CustomElevatedButton1(
              text: 'Material Widget',
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (builder) => const MaterialWidget()));
              }),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomButtonChe(
              color1: Colors.purpleAccent,
              color2: Colors.deepPurpleAccent,
              color3: Colors.purpleAccent,
              bHeight: 48,
              bWidth: 200,
              onPressed: () {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (builder) => const MaterialWidget()));
              },
              text: 'CupertinoWidgets',
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (builder) => const ProviderScreen()));
              },
              child: Container(
                height: 48,
                width: MediaQuery.of(context).size.width * 0.60,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Colors.deepOrangeAccent,
                          Color(
                            (0xFFFFB8B2),
                          ),
                          Color(0xFFF44336),
                        ]),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey,
                          blurRadius: 8,
                          offset: Offset(0, 5))
                    ]),
                child: const Center(
                  child: Text(
                    'InWell',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        letterSpacing: 0.8,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.blueAccent),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (builder) =>const ProviderScreen()));
              },
              child: const Text('ProviderScreen'))
        ],
      ),
      // bottomNavigationBar: NavigationBar(
      //
      //   onDestinationSelected: (int index) {
      //     setState(() {
      //       currentPageIndex = index;
      //     });
      //   },
      //   indicatorColor: Colors.white,
      //   selectedIndex: currentPageIndex,
      //   destinations: const <Widget>[
      //     NavigationDestination(
      //       icon: Icon(Icons.home),
      //       label: 'Home',
      //
      //     ),
      //     NavigationDestination(icon: Icon(Icons.school), label: 'School'),
      //     NavigationDestination(
      //         icon: Icon(Icons.notifications), label: 'Notifications'),
      //     NavigationDestination(icon: Icon(Icons.settings), label: 'Settings'),
      //     NavigationDestination(icon: Icon(Icons.message), label: 'Messages')
      //   ],
      // ),
    );
  }
}

///Using Widget method to create a CustomElevatedButton

class CustomElevatedButton1 extends StatelessWidget {
  const CustomElevatedButton1(
      {super.key, required this.text, required this.onPressed});
  final VoidCallback onPressed;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(onPressed: onPressed, child: Text(text)),
    );
  }
}
