import 'package:flutter/material.dart';
import 'package:project_motion/Home.dart';
import 'package:project_motion/watch.dart';

void main() {
  runApp(const myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: <String, Widget Function(BuildContext)>{
        '/': (context) => MyHome(),
        '/watch': (context) => const myWatch(),
      },
    );
  }
}
