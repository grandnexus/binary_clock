import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show SystemChrome, DeviceOrientation;

import 'package:binary_clock/clock.dart';

void main() {
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeRight,
    DeviceOrientation.landscapeLeft,
  ]);

  runApp(BinaryClockApp());
}

class BinaryClockApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        textTheme: TextTheme(
          display1: TextStyle(color: Colors.black38, fontSize: 30),
        ),
        fontFamily: 'Alatsi',
      ),
      home: Scaffold(
        body: SafeArea(
          child: Container(
            padding: const EdgeInsets.all(30.0),
            child: Clock(),
          ),
        ),
      ),
    );
  }
}
