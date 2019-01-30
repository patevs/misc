
/**
 *  lib/main.dart
 */

// IMPORTS
import 'package:flutter/material.dart';
// spinkit loading indicators
import 'package:flutter_spinkit/flutter_spinkit.dart';

// Application entry point
void main() => runApp(
  LoadingApp()
);

// LoadingApp stateless widget class
class LoadingApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Spinkit Test',
      theme: ThemeData(
        // This is the theme of your application.
        primarySwatch: Colors.green,
      ),
      home: LoadingScreen(title: 'Spinkit Test'),
    );
  }
}

// HomePage stateless widget class
class LoadingScreen extends StatelessWidget {
  // FIELDS
  final String title;
  // CONSTRUCTOR
  LoadingScreen({Key key, this.title}) : super(key: key);
  // METHODS
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SpinKitCircle(
              color: Colors.green,
              size: 100.0
            )
          ],
        )
      )
    );
  }
} // END of HomePage


// EOF

