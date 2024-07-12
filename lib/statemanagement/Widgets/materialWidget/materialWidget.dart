import 'package:flutter/material.dart';
import 'package:flutter_learn/bottomNavigationBar/notchedBottomNavBar.dart';
import 'package:flutter_learn/customButton/customElevatedButton.dart';
import 'package:flutter_learn/customButton/customFilledButton.dart';

import '../../../bottomNavigationBar/bottomNavigationBar(NavigationBar).dart';

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
        backgroundColor: Colors.white,
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
            const CustomFilledButton(),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 44.0,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Color.fromARGB(255, 2, 173, 102), Colors.blue])),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent),
                child: const Text('Elevated Button'),
              ),
            ),

            ///flutter package (own)
            // const FancyContainersNew(
            //   width: 350,
            //   height: 100,
            //   color1: Colors.white,
            //   color2: Colors.purple,
            //   title: 'Saket',
            //   subtitle: 'Kumar',
            //   textColor: Colors.black,
            //   subtitleColor: Colors.black,
            //   titleTextSize: 25,
            //   subTitleTextSize: 18,
            // )
            CustomElevatedButton(
                text: 'NotchedBottomNavBar',
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (builder) => const NotchedBottomNavBar()));
                })
          ],
        ),
        bottomNavigationBar: const BottomAppBar(),
        floatingActionButton: FloatingActionButton(
          elevation: 0,
          backgroundColor: Colors.deepPurpleAccent,
          splashColor: Colors.deepPurple,
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (builder) => const BottomNavigationBar1()));
          },
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }
}
