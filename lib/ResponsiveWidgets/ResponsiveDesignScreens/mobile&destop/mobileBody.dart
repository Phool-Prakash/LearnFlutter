import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MobileBodyScreen extends StatefulWidget {
  const MobileBodyScreen({super.key});

  @override
  State<MobileBodyScreen> createState() => _MobileBodyScreenState();
}

class _MobileBodyScreenState extends State<MobileBodyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Mobile',
          style: TextStyle(letterSpacing: 1.5),
        ),
      ),
      // backgroundColor: Colors.purple,
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
          Expanded(
              child: ListView.builder(
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(6),
                      child: Container(
                        height: 110,
                        color: Colors.amber,
                      ),
                    );
                  }))
        ],
      ),
    );
  }
}
