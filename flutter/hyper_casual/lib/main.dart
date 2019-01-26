
/**
 *  lib/main.dart
 */

// IMPORTS
import 'package:flutter/material.dart';
// flame libs
//import 'package:flame/flame.dart';
//import 'package:flame/animation.dart' as animation;
//import 'package:flame/position.dart';

// Application entry point
void main() => runApp(
  HyperCasualApp()
);

// Hyper casual app stateless widget class
class HyperCasualApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hyper Clasual',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: HomePage()
    );
  }
}

// home page stateful widget class
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

// home page state class
class _HomePageState extends State<HomePage> {
  void _clickFab(GlobalKey<ScaffoldState> key) {
    key.currentState.showSnackBar(new SnackBar(
      content: new Text('You clicked the FAB!')
    ));
  }
  @override
  Widget build(BuildContext context) {
    final key = new GlobalKey<ScaffoldState>();
    return new Scaffold(
      key: key,
      appBar: new AppBar(
        title: new Text('Animation as a widget demo'),
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text('Hyper Casual'),
            new Text('sprite sheet animations'),
            /*
            Flame.util.animationAsWidget(
              Position(256.0, 256.0),
              animation.Animation.sequenced(
                'minotaur.png', 19, textureWidth: 96.0),
            ),
            */
            new Text('-----------'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _clickFab(key),
        child: Icon(Icons.add),
      ),
    );
  }
}


// EOF


