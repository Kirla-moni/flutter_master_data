// ignore_for_file: prefer_const_constructors, prefer_final_fields

import 'package:flutter/material.dart';

class classs extends StatelessWidget {
  TextEditingController _name = TextEditingController();

  TextEditingController _code = TextEditingController();
  TextEditingController _id = TextEditingController();

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        title: const Text('class page',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24.0,
              fontWeight: FontWeight.w500,
              fontFamily: 'Cera Pro',
            )),
      ),
    body: Form(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
          child: ListView(
            children: <Widget>[
              TextFormField(
                controller: _name,
             
            
                decoration: const InputDecoration(
                  labelText: 'Name',
                  hintText: 'Enter your name.',
                  icon: const Icon(Icons.person),
                ),
              ),
              TextFormField(
                controller: _code,
              
                decoration: const InputDecoration(
                  labelText: 'code',
                  hintText: 'Enter your code.',
                  icon: const Icon(Icons.mail),
                ),
              ),
              TextFormField(
                controller: _id,
               
                decoration: const InputDecoration(
                  labelText: 'id',
                  hintText: 'Enter your id.',
                  icon: const Icon(Icons.person),
                ),
               
              ),
            ],
          ),
        ),
    ),
    );
  }
}
