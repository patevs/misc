
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
      title: 'Testing Route Navigation',
      theme: ThemeData(
        // This is the theme of your application.
        primarySwatch: Colors.lightGreen,
        primaryColor: Colors.lightGreen,
        buttonColor: Colors.lightGreenAccent,
      ),
      home: LoadingScreen(),
    );
  }
} // END of LoadingApp

// LoadingScreen stateless widget class
class LoadingScreen extends StatelessWidget {
  // METHODS
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('LOADING SCREEN'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('--- LOADING SCREEN CONTENT ---'),
            RaisedButton(
              child: Text('START'),
              onPressed: () {
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context) => WelcomeScreen())
                );
              },
            )
          ],
        ),
      ),
    );
  }
} // END of LoadingScreen

// WelcomeScreen stateless widget class
class WelcomeScreen extends StatelessWidget {
  // METHODS
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('WELCOME SCREEN'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('--- WELCOME SCREEN CONTENT ---'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  child: Text('BACK'),
                  color: Colors.lightBlueAccent,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                RaisedButton(
                  child: Text('CONTINUE'),
                  onPressed: () {
                    Navigator.push(
                      context, 
                      MaterialPageRoute(builder: (context) => TestScreen())
                    );
                  },
                ),
              ],
            ),

          ],
        ),
      ),

    );
  }
} // END of WelcomeScreen

// TestScreen stateless widget class
class TestScreen extends StatelessWidget {
  // METHODS
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TEST SCREEN'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('--- TEST SCREEN CONTENT ---'),
            RaisedButton(
              child: Text('Back'),
              color: Colors.lightBlueAccent,
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
} // END of TestScreen


// EOF

