import 'package:flutter/material.dart';
import 'package:flutter_learn/ResponsiveWidgets/GridView/gridViewAndList.dart';
import 'package:flutter_learn/ResponsiveWidgets/responsiveWidgetsScreen.dart';
import 'package:flutter_learn/ResponsiveWidgets/userInputAccessibility/user_input_accessibility.dart';
import 'package:flutter_learn/statemanagement/statemanagement_screen.dart';

class LearnScreen extends StatefulWidget {
  const LearnScreen({super.key});

  @override
  State<LearnScreen> createState() => _LearnScreenState();
}

class _LearnScreenState extends State<LearnScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                                const StatemanagementScreen()));
                  },
                  child: const Text("About State Management"))
            ],
          ),
        ),
      ),
    );
  }
}
