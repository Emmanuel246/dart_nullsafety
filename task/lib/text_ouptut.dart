import 'package:flutter/material.dart';

class TextOuput extends StatelessWidget {
  final String mainText;

  TextOuput(this.mainText);

  @override
  Widget build(BuildContext context) {
    return Text(mainText);
  }
}
