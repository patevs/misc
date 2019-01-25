
/**
 *  lib/main.dart
 */

// IMPORTS
import 'package:flutter/material.dart';

//import 'package:flame/flame.dart';

import 'dart:math' as math;
import 'dart:ui';

import 'package:flame/anchor.dart';
import 'package:flame/components/component.dart';
import 'package:flame/game.dart';
import 'package:flame/palette.dart';

// Application entry point
void main() => runApp(
  //HyperCasualApp()
  new HyperCasualGame().widget
);

// Palette class
class Palette {
  static const PaletteEntry white = BasicPalette.white;
  static const PaletteEntry red = PaletteEntry(Color(0xFFFF0000));
  static const PaletteEntry blue = PaletteEntry(Color(0xFF0000FF));
  static const PaletteEntry green = PaletteEntry(Colors.green);
}

// Square component class
class Square extends PositionComponent {
  static const SPEED = 0.5;

  // CONSTRUCTOR
  Square(double size){
    width = height = size;
    anchor = Anchor.center;
  }

  @override
  void resize(Size size){
    x = size.width / 2;
    y = size.height / 2;
  }

  @override
  void render(Canvas c){
    prepareCanvas(c);
    c.drawRect(Rect.fromLTWH(0, 0, width, height), Palette.green.paint);
    c.drawRect(Rect.fromLTWH(2, 2, 16, 16), Palette.red.paint);
    c.drawRect(Rect.fromLTWH((width / 2) - 4, (height / 2) - 4, 8, 8), Palette.blue.paint);
  }

  @override
  void update(double t){
    angle += SPEED * t;
    angle %= (2 * math.pi);
  }

}

// Hyper casual game class
class HyperCasualGame extends BaseGame {
  // CONSTRUCTOR
  HyperCasualGame() {
    add(new Square(128.0));
  }
}

/*
// Hyper casual app stateless widget class
class HyperCasualApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hyper Casual',
      theme: ThemeData(
        // This is the theme of your application.
        primarySwatch: Colors.green,
      ),
      home: HomePage(),
    );
  }
}

// home page stateless widget class
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    // Scaffold is a layout for the major Material Components
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          tooltip: 'Navigation Menu',
          onPressed: null,
        ),
        title: Text('Hyper Casual'),
      ),
      body: Center(
        child: Text('Hello Hyper Casual'),
      ),
    );
  }
}
*/


// EOF

