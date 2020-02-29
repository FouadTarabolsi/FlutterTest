// Copyrigth 2019 The Flutter team. All rights reserver.const
// Use of this source code is governed by BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Welcome to Flutter",
        home: Scaffold(
          appBar: AppBar(
            title: Text(
              "Welcome To Flutter",
            ),
          ),
          body: Center(
            child: RandomWords(),
          ),
        ));
  }
}

class RandomWordsState extends State<RandomWords> {
  @override
  Widget build(BuildContext context) {
    final _suggestions = <WordPair>[];
    final _biggerFont = const TextStyle(fontSize: 18.0);

    final wordPair = WordPair.random();
    return Text(
      wordPair.asPascalCase,
      textScaleFactor: 2.5,
    );
  }

  Widget _buildSuggestions() {
    return ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemBuilder: (context, i) {
          if (i.isOdd) return Divider();

          final index = i ~/ 2;
          if (index >= _suggestions.length) {
            _suggestions.addAll(generateWordPairs().take(10));
          }
          return _buildRow(_suggestions[index]);
        });
  }
}

class RandomWords extends StatefulWidget {
  @override
  RandomWordsState createState() => RandomWordsState();
}
