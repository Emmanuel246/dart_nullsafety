import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        color: Color(0xff51A8FF),
        width: double.infinity,
        height: 350,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Text(
            'Hi Emma',
            style: TextStyle(
              fontSize: 18,
              color: Color(0xffFFFFFF),
            ),
          )
        ],),
      ),
    );
  }
}