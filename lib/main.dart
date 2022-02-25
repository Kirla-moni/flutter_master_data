// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:bus/common/classs.dart';
import 'package:bus/common/course.dart';
import 'package:flutter/material.dart';

import 'common/modal.dart';
void main() => runApp(MyApp());

/// This Widget is the main application widget.
class MyApp extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key? key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: <Widget>[
          NavigationRail(
            backgroundColor: Colors.pink,
            selectedIndex:index,
            onDestinationSelected: (int index) {
              setState(() {
                this.index = index;
              });
            },
            labelType: NavigationRailLabelType.selected,
            destinations: [
              NavigationRailDestination(
                icon: Icon(Icons.favorite_border),
                selectedIcon: Icon(Icons.favorite),
                label: Text('class'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.bookmark_border),
                selectedIcon: Icon(Icons.book),
                label: Text('course'),
              ),
              
            ],
          ),
          VerticalDivider(thickness: 1, width: 1),
          Expanded(child: buildPages()),
        ],
      ),
    );
  }
  Widget buildPages() {
  switch (index) {
    case 0:
      return classs();
    case 1:
      return course();
    default:
      return classs();
  }
}
}


