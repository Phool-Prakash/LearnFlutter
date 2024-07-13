import 'package:flutter/material.dart';
import 'package:flutter_learn/customButton/customFilledButton.dart';
import 'package:flutter_learn/statemanagement/statemanagement_screen.dart';

class CommonButtonsScreen extends StatefulWidget {
  const CommonButtonsScreen({super.key});

  @override
  State<CommonButtonsScreen> createState() => _CommonButtonsScreenState();
}

class _CommonButtonsScreenState extends State<CommonButtonsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:
      Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomElevatedButton(text: 'ElevatedButton', onPressed: () {}),
            CustomFilledButton(onPressed: () {}, text: 'FillButton'),
            const SizedBox(
              height: 8,
            ),
            FilledButton.tonal(
                onPressed: () {}, child: const Text('FilledButtonTonal')),
            OutlinedButton(onPressed: () {}, child: const Text('Add')),
            const SizedBox(
              height: 8,
            ),
            OutlinedButton.icon(
              onPressed: () {},
              label: const Icon(Icons.add),
            ),
            TextButton(onPressed: () {}, child: const Text('Text Button')),
            TextButton.icon(
              onPressed: () {},
              label: const Icon(Icons.move_to_inbox),
            )
          ],
        ),
      ),
    );
  }
}
