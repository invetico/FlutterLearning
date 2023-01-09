// 1) Create a new Flutter App (in this project) and output an AppBar and some text
// below it
// 2) Add a button which changes the text (to any other text of your choice)
// 3) Split the app into three widgets: App, TextControl & Text
import 'package:flutter/material.dart';
import 'dart:math';

import './TextOutput.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  String outputText = "This is the initial text";

  final _variousTexts = const [
    {'text': 'Joe waited for the train.'},
    {'text': 'The train was late'},
    {'text': 'Mary and Samantha took the bus.'},
    {'text': 'I looked for Mary and Samantha at the bus station'}
  ];

  void _handleChangeText() {
    Random random = new Random();
    int randomNumber = random.nextInt(_variousTexts.length);
    setState(() {
      outputText = _variousTexts[randomNumber]['text'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('First Assignment')),
        body: TextOutput(outputText, _handleChangeText),
      ),
    );
  }
}
