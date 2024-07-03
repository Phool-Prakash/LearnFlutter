import 'package:flutter/material.dart';

class DesktopBodyScreen extends StatefulWidget {
  const DesktopBodyScreen({super.key});

  @override
  State<DesktopBodyScreen> createState() => _DesktopBodyScreenState();
}

class _DesktopBodyScreenState extends State<DesktopBodyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'DESKTOP',
          style: TextStyle(letterSpacing: 1.5),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: AspectRatio(
              aspectRatio: 16 / 9,
              child: Container(
                color: Colors.deepPurple,
              ),
            ),
          ),
          // Expanded(
          //     child: ListView.builder(
          //         itemCount: 6,
          //         itemBuilder: (context, index) {
          //           return Padding(
          //             padding:const EdgeInsets.all(6),
          //             child: Container(
          //               height: 110,
          //               color: Colors.amber,
          //             ),
          //           );
          //         }))
        ],
      ),
    );
  }
}
