
/**
 * lib/main.dart
 */

// IMPORTS
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

// main method
void main() => runApp(MyApp());

// root app stateless widget class
class MyApp extends StatelessWidget {

  // build method
  @override
  Widget build(BuildContext context){
    // app widget
    return MaterialApp(
      title: 'Startup Name Generator',
      home: RandomWords()
    );
  }

}

// random words stateful class
class RandomWordsState extends State<RandomWords> {
  // prefixing with an underscore enforces privacy
  final _suggestions = <WordPair>[];
  final _biggerFont = const TextStyle(fontSize: 18.0);
  
  // build suggestions method
  Widget _buildSuggestions() {
    return ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemBuilder: /*1*/ (context, i) {
        if (i.isOdd) return Divider(); /*2*/
        final index = i ~/ 2; /*3*/
        if (index >= _suggestions.length) {
          _suggestions.addAll(generateWordPairs().take(10)); /*4*/
        }
        return _buildRow(_suggestions[index]);
      }
    );
  }

  Widget _buildRow(WordPair pair) {
    return ListTile(
      title: Text(
        pair.asPascalCase,
        style: _biggerFont
      )
    );
  }
  
  // build method
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Startup Name Generator')
      ),
      body: _buildSuggestions()
    );
  }

}

// random words widget class
class RandomWords extends StatefulWidget {
  @override
  RandomWordsState createState() => new RandomWordsState();
}

