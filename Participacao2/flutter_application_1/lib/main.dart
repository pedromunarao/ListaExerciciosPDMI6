import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter is Fun!'),
          backgroundColor: Colors.green,
        ),
        body: Center(
          child: Container(
            width: 100,
            height: 100,
            color: Colors.red,
            child: Center(
              child: Text(
                'Hi Mom 👋',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}