import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'notchedNavBar/CurvedNavigationBar.dart';
// import 'package:flutter_learn/bottomNavigationBar/notchedAnimatedNavbar/notchedNavBar/CurvedNavigationBar.dart';

class NotchedBottomNavBar extends StatefulWidget {
  const NotchedBottomNavBar({super.key});

  @override
  State<NotchedBottomNavBar> createState() => _NotchedBottomNavBarState();
}

class _NotchedBottomNavBarState extends State<NotchedBottomNavBar> {
  int _currentIndex = 0;
  static const TextStyle textStyle = TextStyle(
      fontSize: 20,
      color: Colors.black,
      fontWeight: FontWeight.bold,
      letterSpacing: 1);

  int _page = 0;
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // floatingActionButton: FloatingActionButton(
      //   shape: const RoundedRectangleBorder(
      //       borderRadius: BorderRadius.all(Radius.circular(28))),
      //   onPressed: () {},
      //   child: const Icon(Icons.add),
      // ),
      extendBody: true,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black12,
        title: const Text(
          'NotchedBottomNavBar',
          style: textStyle,
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar1(
        // key: _bottomNavigationKey,
        color: Colors.white,
        buttonBackgroundColor: Colors.white,
        backgroundColor: Colors.blueAccent,
        animationCurve: Curves.easeInOut,
        animationDuration:const Duration(milliseconds: 600),
        // key: _bottomNavigationKey,
        index:  0,
        items: const <Widget>[
          Icon(Icons.add, size: 30),
          Icon(Icons.list, size: 30),
          Icon(Icons.compare_arrows, size: 30),
          Icon(Icons.call_split, size: 30),
          Icon(Icons.perm_identity, size: 30),
        ],
        onTap: (index) {
          setState(() {
            _page = index;
          });
        },
        letIndexChange: (index) => true,
      ),
    );
  }
}

///BottomAppBar

// BottomAppBar(
//
// shape: const CircularNotchedRectangle(),
// padding: const EdgeInsets.symmetric(horizontal: 10),
// height: 60,
// color: Colors.cyan.shade400,
// notchMargin: 5,
// child: Row(
// mainAxisAlignment: MainAxisAlignment.spaceBetween,
// mainAxisSize: MainAxisSize.max,
// children: <Widget>[
// IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
// IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
// IconButton(onPressed: () {}, icon: const Icon(Icons.people)),
// IconButton(onPressed: () {}, icon: const Icon(Icons.settings)),
// ],
// ),
// )
