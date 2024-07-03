import 'package:flutter/material.dart';

class GridViewAndListScreen extends StatefulWidget {
  const GridViewAndListScreen({super.key});

  @override
  State<GridViewAndListScreen> createState() => _GridViewAndListScreenState();
}

class _GridViewAndListScreenState extends State<GridViewAndListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Grid View and List')),

        ///GridView and List
        // body: GridView.count(
        //     crossAxisCount: 3,
        //     children: List.generate(20, (index) {
        //       return Center(
        //           child: Center(child: Text("Item count : $index")));
        //     })),

        ///ListView.builder
        // body: ListView.builder(
        //   scrollDirection: Axis.horizontal, //Axis.vertical
        //     itemCount: 4000,
        //     itemBuilder: (context,index){
        //     return Center(child: Text('Saket $index'),);
        // }),
        body: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder()),
            )
          ],
        ));
  }
}
