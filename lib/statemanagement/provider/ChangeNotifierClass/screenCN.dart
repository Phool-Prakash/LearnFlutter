import 'package:flutter/material.dart';
import 'package:flutter_learn/statemanagement/provider/ChangeNotifierClass/counterChangeNotifier.dart';
import 'package:provider/provider.dart';

class CNScreen extends StatelessWidget {
  const CNScreen({super.key});

  @override
  Widget build(BuildContext context) {
    print('Build 1');
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Consumer<CounterClass>(builder: (context, counter, child) {
                  return Center(child: Text('${counter.count}'));
                }),
                Container(
                  color: Colors.blue,
                  width: 500,
                  height: 500,
                  child:const  Center(child: Text('Container')),
                ),
                Container(
                  color: Colors.purpleAccent,
                  width: 500,
                  height: 500,
                  child:const Center(child: Text('Container')),
                ),
                Selector<CounterClass, int>(
                  selector: (context, counter) => counter.count,
                  builder: (context, value, child) {
                    return Container(
                      color: Colors.black,
                      width: 500,
                      height: 500,
                      child: Center(
                          child: Text(
                        '$value',
                        style: const TextStyle(color: Colors.white),
                      )),
                    );
                  },
                ),
                Container(
                  color: Colors.yellow,
                  width: 500,
                  height: 500,
                  child: const Center(child: Text('Container')),
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: () => context.read<CounterClass>().increase()),
      ),
    );
  }
}
