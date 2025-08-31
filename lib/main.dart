import 'package:flutter/material.dart';

void main() {
  runApp(const GrabberApp());
}

class GrabberApp extends StatelessWidget {
  const GrabberApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Grabber',
      home: Scaffold(),
    );
  }
}
