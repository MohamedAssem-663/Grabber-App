import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Image.asset('assets/Icons/bike.png', height: 35),
            SizedBox(width: 10),
            Text('61 Hopper street..'),
            SizedBox(width: 10),
            Icon(Icons.keyboard_arrow_down_outlined),
            Spacer(),
            Image.asset('assets/Icons/Vectorr.png', height: 30),
          ],
        ),
      ),
    );
  }
}
