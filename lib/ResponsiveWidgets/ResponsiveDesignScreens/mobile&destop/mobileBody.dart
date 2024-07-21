import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_learn/paddingExtension/paddingExtension.dart';

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
          AspectRatio(
            aspectRatio: 16 / 9,
            child: Container(
              color: Colors.deepPurple,
            ),
          ).padAll(8),
          Expanded(
              child: ListView.builder(
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 110,
                      color: Colors.amber,
                    ).padAll(8);
                  }))
        ],
      ),
    );
  }
}
