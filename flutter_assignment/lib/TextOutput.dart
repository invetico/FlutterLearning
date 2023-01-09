import 'package:flutter/material.dart';

import './TextControl.dart';

class TextOutput extends StatelessWidget {
  final String outputText;
  final Function handleTextChange;

  TextOutput(this.outputText, this.handleTextChange);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Column(
        children: [
          Text(
            outputText,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 28),
          ),
          TextControl(handleTextChange)
        ],
      ),
    );
  }
}
