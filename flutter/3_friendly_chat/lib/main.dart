
/**
 *  lib/main.dart
 */

// IMPORTS
import 'package:flutter/material.dart';

// Application entry point
void main() {
  runApp(new FriendlyChatApp());
}

// friendly chat app stateless widget class
class FriendlyChatApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Friendly Chat",
      theme: new ThemeData(
        primarySwatch: Colors.green
      ),
      home: new ChatScreen()
    );
  }
}

// chat screen stateless widget class
class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Friendly Chat")
      )
    );
  }
}


// EOF

