// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class course extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: Center(
          child: Text('course Page',
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20.0))),
    );
  }
}
