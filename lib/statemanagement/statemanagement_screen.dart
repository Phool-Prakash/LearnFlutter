import 'package:custombutton_che/custombutton_che.dart';
import 'package:flutter/material.dart';
import 'package:flutter_learn/statemanagement/Widgets/materialWidget/materialWidget.dart';
import 'package:flutter_learn/statemanagement/inheritedWidget/mystatefulWidget.dart';
import 'package:flutter_learn/statemanagement/statefull&less/statefull/bird.dart';
import 'package:flutter_learn/statemanagement/styledWidgets/styledWidgets.dart';

class StatemanagementScreen extends StatefulWidget {
  const StatemanagementScreen({super.key});

  @override
  State<StatemanagementScreen> createState() => _StatemanagementScreenState();
}

class _StatemanagementScreenState extends State<StatemanagementScreen> {
  @override
  Widget build(BuildContext context) {
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
          CustomElevatedButton(
              text: 'Styled Widget',
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (builder) => const StyledWidgets()));
              }),
          CustomElevatedButton(
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
          const SizedBox(height: 12,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              onTap: () {},
              child: Container(
                height: 48,
                width: MediaQuery.of(context).size.width * 0.60,
                decoration:const BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(16)),
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Colors.deepOrangeAccent,
                          const Color((0xFFFFB8B2),
                          ),
                          const Color(0xFFF44336),
                        ]),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.grey, blurRadius: 8, offset: Offset(0, 5))
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
          )
        ],
      ),
    );
  }
}

///Using Widget method to create a CustomElevatedButton

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton(
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
