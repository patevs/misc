
/**
 *  lib/main.dart
 */

// IMPORTS
import 'package:flutter/material.dart';

import 'dart:math' as math;
import 'dart:ui';

// flame libs
import 'package:flame/flame.dart';
import 'package:flame/anchor.dart';
import 'package:flame/components/component.dart';
import 'package:flame/components/text_box_component.dart';
import 'package:flame/components/text_component.dart';
import 'package:flame/text_config.dart';
import 'package:flame/game.dart';
import 'package:flame/palette.dart';

// Text style configs
TextConfig regular = TextConfig(color: BasicPalette.white.color);
TextConfig small = regular.withFontSize(16.0);
TextConfig tiny = regular.withFontSize(12.0);

// Application entry point
void main() => runApp(
  //HyperCasualApp()
  new HyperCasualGame().widget
);

// Palette class for storing common color values
class Palette {
  static const PaletteEntry white = BasicPalette.white;
  static const PaletteEntry red = PaletteEntry(Color(0xFFFF0000));
  static const PaletteEntry blue = PaletteEntry(Color(0xFF0000FF));
  static const PaletteEntry green = PaletteEntry(Colors.green);
}

// MyTextBox component class
class MyTextBox extends TextBoxComponent {
  // CONSTRUCTOR
  MyTextBox(String text) 
    : super(
        text, 
        config: tiny, 
        boxConfig: TextBoxConfig(timePerChar: 0.05)
      );

  @override
  void drawBackground(Canvas c) {
    Rect rect = Rect.fromLTWH(0, 0, width, height);
    c.drawRect(rect, new Paint()..color = Color(0xFFFF00FF));
    c.drawRect(
      rect.deflate(boxConfig.margin), 
      new Paint()
        ..color = BasicPalette.black.color
        ..style = PaintingStyle.stroke
    );
  }
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
    _start();
  }

  _start() async {
    // get screen dimensions
    Size size = await Flame.util.initialDimensions();
    // adding components
    add(TextComponent('HYPER CASUAL', config: regular)
      ..anchor = Anchor.topCenter
      ..x = size.width / 2
      ..y = 64.0
    );
    add(new Square(128.0));
    add(TextComponent('center', config: small)
      ..anchor = Anchor.center
      ..x = size.width / 2
      ..y = size.height / 2
    );
    add(TextComponent('bottomLeft', config: tiny)
      ..anchor = Anchor.bottomLeft
      ..x = 16.0
      ..y = size.height - 16.0
    );
    add(TextComponent('bottomRight', config: tiny)
      ..anchor = Anchor.bottomRight
      ..x = size.width - 16.0
      ..y = size.height - 16.0
    );
    /*
    add(MyTextBox('bottomLeft')
      ..anchor = Anchor.bottomLeft
      ..y = size.height
    );
    */
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

