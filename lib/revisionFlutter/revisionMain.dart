import 'package:flutter/material.dart';
import 'package:flutter_learn/revisionFlutter/extensionRevision/revisePaddingExtension.dart';

class RevisionMainScreen extends StatefulWidget {
  const RevisionMainScreen({super.key});

  @override
  State<RevisionMainScreen> createState() => _RevisionMainScreenState();
}

class _RevisionMainScreenState extends State<RevisionMainScreen> {
  String myText = 'Revision Flutter';

  @override
  Widget build(BuildContext context) {
    Widget myTextWidget = myText.textSize(20);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          centerTitle: true,
          title: myTextWidget,
        ),
        body: Column(
          children: [],
        ),
      ),
    );
  }
}
