
/**
 *  lib/main.dart
 */

// IMPORTS
import 'package:flutter/material.dart';

// Application entry point
void main() => runApp(RoutesApp());

// RoutesApp stateless widget class
class RoutesApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation Routes',
      theme: ThemeData(
        // This is the theme of your application.
        primarySwatch: Colors.green,
      ),
      home: LoadingScreen(title: 'Navigating Routes - Loading Screen'),
    );
  }
} // END of LoadingApp

// LoadingScreen stateless widget class
class LoadingScreen extends StatelessWidget {
  // FIELDS
  final String title;
  // CONSTRUCTOR
  LoadingScreen({this.title});
  // METHODS
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Loading Screen...'),
        ],
      ),
    );
  }
} // END of LoadingScreen

// WelcomeScreen stateless widget class
class WelcomeScreen extends StatelessWidget {
  // FIELDS
  final String title;
  // CONSTRUCTOR
  WelcomeScreen({this.title});
  // METHODS
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Welcome Screen...'),
        ],
      ),
    );
  }
}


// EOF

