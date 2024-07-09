import 'package:flutter/material.dart';

import 'text_ouptut.dart';

class TextControl extends StatefulWidget {
  const TextControl({super.key});

  @override
  State<TextControl> createState() => _TextControlState();
}

class _TextControlState extends State<TextControl> {
  String _mainText = 'This is a first text';
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      FilledButton(onPressed: () {
        setState(() {
          _mainText = 'This changed';
        });
      },
          child: Text('Change Text')),
      TextOuput(_mainText),
    ]);
  }
}
