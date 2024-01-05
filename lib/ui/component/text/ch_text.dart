import 'package:flutter/material.dart';

class CHText extends StatelessWidget {

  const CHText({
    required this.text,
    this.fontSize = 14,
    this.fontWeight = FontWeight.normal,
    this.color = Colors.black
  });

  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:
      TextStyle(
        fontWeight: fontWeight,
        fontSize: fontSize,
        color: color)
    );
  }
}