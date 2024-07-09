import 'package:flutter/material.dart';

class StyledWidgets extends StatelessWidget {
  const StyledWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        width: 350,
        decoration: BoxDecoration(
            color: Colors.green.shade800,
            borderRadius: BorderRadius.circular(8)),
        child: const Padding(
          padding: EdgeInsets.all(12),
          child: Text(
            'Lorem ipsem dolor sit amet....',
            style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic),
          ),
        ),
      ),
    ));
  }
}

