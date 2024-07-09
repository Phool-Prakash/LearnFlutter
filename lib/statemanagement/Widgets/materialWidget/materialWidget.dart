import 'package:flutter/material.dart';
import 'package:flutter_learn/customButton/customElevatedButton.dart';
import 'package:flutter_learn/customButton/customFilledButton.dart';

class MaterialWidget extends StatefulWidget {
  const MaterialWidget({super.key});

  @override
  State<MaterialWidget> createState() => _MaterialWidgetState();
}

class _MaterialWidgetState extends State<MaterialWidget> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.purple,
          title: const Text(
            'Material Widget',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
                child: CustomElevatedButton(
              elevation: 0,
              onPressed: () {},
              text: 'Actions',
            )),
            CustomFilledButton()
          ],
        ),
      ),
    );
  }
}
