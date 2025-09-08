import 'package:flutter/material.dart';

class Customtext extends StatelessWidget {
  const Customtext({
    super.key,
    required this.text,
    this.fontSize = 18,
    this.weight = FontWeight.bold,
    this.max = 1,
    this.height = 1,
    this.spacing = 1,
  });
  final String text;
  final double fontSize;
  final FontWeight weight;
  final int max;
  final double height;
  final double spacing;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: max,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: weight,
        fontFamily: "TenorSans",
        height: height,
        letterSpacing: spacing,
      ),
    );
  }
}
