import 'package:cleanhome/ui/component/text/ch_text.dart';
import 'package:cleanhome/ui/component/theme/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CHButton extends StatefulWidget {
  const CHButton({
    super.key,
    required this.onPressed,
    required this.text
  });

  final VoidCallback? onPressed;
  final String text;


  @override
  State<StatefulWidget> createState() => _CHButton();


}

class _CHButton extends State<CHButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: FilledButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateColor.resolveWith((states) => CHColor.main500)
        ),
        onPressed: widget.onPressed,
        child: CHText(text: widget.text, color: Colors.white),
      )
    );
  }
}