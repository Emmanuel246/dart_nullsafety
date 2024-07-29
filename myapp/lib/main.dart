import 'package:flutter/material.dart';

import 'package:myapp/product_manager.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
         brightness: Brightness.light,
        primarySwatch: Colors.deepOrange,
        // accentColor: Colors.deepPurple,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('EasyList'),
          backgroundColor: Colors.blue,
        ),
        body: ProductManager(startproduct: 'Food Tester'),
      ),
    );
  }
}


