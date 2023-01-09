import 'package:flutter/material.dart';

class TextControl extends StatelessWidget {
  final Function handleTextChange;

  TextControl(this.handleTextChange);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: ElevatedButton(
      child: Text("Press this button to change the text"),
      onPressed: handleTextChange,
    ));
  }
}
