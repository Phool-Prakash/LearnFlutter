import 'package:flutter/material.dart';
import 'package:flutter_learn/constant/constant.dart';

class StripeMainScreen extends StatefulWidget {
  const StripeMainScreen({super.key});

  @override
  State<StripeMainScreen> createState() => _StripeMainScreenState();
}

class _StripeMainScreenState extends State<StripeMainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Text('$apiKey')
      ],),
    );
  }
}
