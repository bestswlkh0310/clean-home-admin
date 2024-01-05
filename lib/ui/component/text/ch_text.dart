import 'package:cleanhome/ui/component/text/ch_text_type.dart';
import 'package:flutter/material.dart';

class CHText extends StatelessWidget {

  const CHText({
    super.key,
    required this.text,
    this.fontSize,
    this.fontWeight,
    this.color = Colors.black,
    this.textType = CHTextType.body
  });

  final String text;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color color;
  final CHTextType textType;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:
      TextStyle(
        fontWeight: fontWeight ?? textType.fontWeight,
        fontSize: fontSize ?? textType.fontSize,
        color: color)
    );
  }
}