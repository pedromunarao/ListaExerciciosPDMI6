import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Flutter By Example')),
      body: Center(
        child: Icon(Icons.flutter_dash, size: 100),
      ),
    );
  }
}