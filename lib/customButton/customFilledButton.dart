import 'package:flutter/material.dart';

class CustomFilledButton extends StatelessWidget {
  const CustomFilledButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FilledButton(onPressed: (){}, child: const Text('Filled Button'));
  }
}
