
/**
 *  lib/main.dart
 */

// IMPORTS
import 'package:flutter/material.dart';

//import 'package:cloud_firestore/cloud_firestore.dart';

// Application entry point
void main() => runApp(MyApp());

// dummy database values
final dummySnapshot = [
  {"name": "Filip", "votes": 15},
  {"name": "Abraham", "votes": 14},
  {"name": "Richard", "votes": 11},
  {"name": "Ike", "votes": 10},
  {"name": "Justin", "votes": 1},
];

// Application root stateless widget class
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Baby Namer',
      theme: ThemeData(
        // This is the theme of your application.
        primarySwatch: Colors.green,
      ),
      home: HomePage(),
    );
  }
}

// Home page stateless widget class
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Baby Namer'
    );
  }
}
