import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

void main() async{

  //// initialize hive
  await Hive.initFlutter();


  // Open the box
  var box = await Hive.openBox('mybox');
  runApp(const MyApp());


}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}