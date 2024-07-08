import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Bird extends StatefulWidget {
  const Bird({super.key, required this.color, required this.child});
  final Color? color;
  final Widget child;
  @override
  State<Bird> createState() => _BirdState();
}

class _BirdState extends State<Bird> {
  double _size = 1.0;
  int count = 0;

  void minus(){
    setState(() {
      count-=1;
    });
  }
  void grow() {
    setState(() {
      _size += 0.1;
    });
  }

  @override
  Widget build(BuildContext context) {
    print('Build state from the top');
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        elevation: 0,
        onPressed: () {
          setState(() {
            count += 1;
          });
        },
        child: const Icon(Icons.add),
      ),
      body: Column(
        children: [
          Container(
            width: 500,
            height: 100,
            color: widget.color,
            child: widget.child,
          ),
          const SizedBox(
            height: 200,
          ),
          Center(
            child: Text(
              'Count $count',
              style:const TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
          ),
          CustomIconButton(onPressed: () =>minus(), icon:const Icon(Icons.minimize))
        ],
      ),
    );
  }
}

///Icon Button
class CustomIconButton extends StatelessWidget {
  const CustomIconButton(
      {super.key, required this.onPressed, required this.icon});
  final VoidCallback onPressed;
  final Widget icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 50,
      color: Colors.blue,
      child: Center(
        child: IconButton(
          onPressed: onPressed,
          icon: icon,
        ),
      ),
    );
  }
}
