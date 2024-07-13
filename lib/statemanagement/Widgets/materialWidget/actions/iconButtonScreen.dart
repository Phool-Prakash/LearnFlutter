import 'package:flutter/material.dart';

class IconButtonScreen extends StatefulWidget {
  const IconButtonScreen({super.key});

  @override
  State<IconButtonScreen> createState() => _IconButtonScreenState();
}

class _IconButtonScreenState extends State<IconButtonScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Icon Button'),
        ),
        body: const Padding(
          padding: EdgeInsets.all(4.0),
          child: Row(
            children: <Widget>[
              Spacer(),
              GroupIconButton(enabled: true),
              GroupIconButton(enabled: false),
              Spacer()
            ],
          ),
        ));
  }
}

class GroupIconButton extends StatefulWidget {
  const GroupIconButton({super.key, required this.enabled});
  final bool enabled;

  @override
  State<GroupIconButton> createState() => _GroupIconButtonState();
}

class _GroupIconButtonState extends State<GroupIconButton> {
  bool standardSelected = false;
  bool filledSelected = false;
  bool tonalSelected = false;
  bool outlinedSelected = false;
  @override
  Widget build(BuildContext context) {
    final void Function()? onPressed = widget.enabled ? () {} : null;
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          IconButton(
              onPressed: onPressed, icon: const Icon(Icons.filter_drama)),
          IconButton.outlined(
              onPressed: onPressed, icon: const Icon(Icons.filter_drama)),
          IconButton.filledTonal(
            color: Colors.purpleAccent,
              onPressed: onPressed, icon: const Icon(Icons.filter_drama)),
          IconButton.filled(
              onPressed: onPressed, icon: const Icon(Icons.filter_drama)),
          // IconButton(
          //     isSelected: standardSelected,
          //     selectedIcon: const Icon(Icons.settings_outlined),
          //     onPressed: () {
          //       setState(() {
          //         standardSelected != standardSelected;
          //       });
          //     },
          //     icon: const Icon(Icons.settings)),

        ],
      ),
    );
  }
}
