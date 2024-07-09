import 'package:flutter/material.dart';

import 'gradient_container.dart';

void main() {
  runApp(
     const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: GradientContainer(colors:  [
          Color.fromARGB(255, 33, 5, 200),
          Color.fromARGB(255, 68, 21, 149)
        ]),
      ),
    ),
  );
}
