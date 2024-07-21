import 'package:flutter/material.dart';
import 'package:flutter_learn/ResponsiveWidgets/ResponsiveDesignScreens/responsiveDesignScreen.dart';

class ResponsiveWidgets extends StatefulWidget {
  const ResponsiveWidgets({super.key});

  @override
  State<ResponsiveWidgets> createState() => _ResponsiveWidgetsState();
}

class _ResponsiveWidgetsState extends State<ResponsiveWidgets> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {

    final currentSize = MediaQuery.of(context).size.width;
    final currentSize1 = MediaQuery.sizeOf(context).width;
    var i = 1;
    return SafeArea(
        child: Scaffold(
      bottomNavigationBar: NavigationBar(
        selectedIndex : _currentIndex,
        onDestinationSelected: (int index){
          setState(() {
            _currentIndex = index;
          });
        },
        indicatorColor: Colors.white,
        destinations: const <Widget>[
          NavigationDestination(icon: Icon(Icons.home), label: ''),
          NavigationDestination(icon: Icon(Icons.account_box_sharp), label: ''),
          NavigationDestination(icon: Icon(Icons.chat), label: ''),
        ],
      ),
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        centerTitle: true,
        title: const Text(
          'Responsive Widgets',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              NavigationBar(destinations: <Widget>[
                ElevatedButton(
                    onPressed: () {}, child: const Text('Small Window')),
                ElevatedButton(
                    onPressed: () {}, child: const Text('Large Window')),
              ]),
              IntrinsicWidth(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text('${i++}. Abstract:-\n(Find shared data nd abstract it)'),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                      '${i++}. Measure:-\n(Choose between MediaQuery.sizeOf or LayoutBuilder)'),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                      """3. Two ways to determine the size of display area
           1. MediaQuery
           2. LayoutBuilder
                  """),
                  const Text('1.MediaQuery'),
                ],
              )),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 150,
                child: NavigationRail(
                  onDestinationSelected: (value){
                    setState(() {
                      _currentIndex = value;
                    });
                  },
                    destinations: const [
                  NavigationRailDestination(
                      icon: Icon(Icons.home), label: Text('Home')),
                  NavigationRailDestination(
                      icon: Icon(Icons.call), label: Text('Call')),
                  NavigationRailDestination(
                      icon: Icon(Icons.more), label: Text('More'))
                ], selectedIndex: _currentIndex),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                  "SizeOf Screen width: ${currentSize.toString()}"), //low performance
              // Text(currentSize1.toString()) //Best performance
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (builder) =>
                                const ResponsiveDesignScreen()));
                  },
                  child: const Text('ResponsiveScreen')),
            ],
          ),
        ),
      ),
    ));
  }
}
