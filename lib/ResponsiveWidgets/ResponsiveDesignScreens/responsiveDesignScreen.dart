import 'package:flutter/material.dart';
import 'package:flutter_learn/ResponsiveWidgets/ResponsiveDesignScreens/mobile&destop/desktopBody.dart';
import 'package:flutter_learn/ResponsiveWidgets/ResponsiveDesignScreens/mobile&destop/mobileBody.dart';
import 'package:flutter_learn/ResponsiveWidgets/ResponsiveDesignScreens/responsive_layout.dart';

class ResponsiveDesignScreen extends StatefulWidget {
  const ResponsiveDesignScreen({super.key});

  @override
  State<ResponsiveDesignScreen> createState() => _ResponsiveDesignScreenState();
}

class _ResponsiveDesignScreenState extends State<ResponsiveDesignScreen> {
  @override
  Widget build(BuildContext context) {
    //Method1:-
    // final currentSize = MediaQuery.sizeOf(context).width;
    return const Scaffold(
      // backgroundColor: currentSize < 600 ? Colors.deepOrange[300] : Colors.deepPurple[500],
      body: ResponsiveLayout(
        mobileBody: MobileBodyScreen(),
        desktopBody: DesktopBodyScreen(),
      ),
    );
  }
}
