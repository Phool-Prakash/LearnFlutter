import 'package:custombutton_che/custombutton_che.dart';
import 'package:flutter/material.dart';
import 'package:flutter_learn/workingWithAPI/communicateWithWebSockets/webSockets.dart';

class WebSocketScreen extends StatefulWidget {
  const WebSocketScreen({super.key});

  @override
  State<WebSocketScreen> createState() => _WebSocketScreenState();
}

class _WebSocketScreenState extends State<WebSocketScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 40,
          ),
          Center(
            child: CustomButtonChe(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (builder) => const WebSocketPage()));
                },
                text: 'Web Socket'),
          )
        ],
      ),
    );
  }
}
