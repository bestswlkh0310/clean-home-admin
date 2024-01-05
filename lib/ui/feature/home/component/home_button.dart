import 'package:cleanhome/ui/component/text/ch_text.dart';
import 'package:cleanhome/ui/component/text/ch_text_type.dart';
import 'package:cleanhome/ui/component/theme/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeButton extends StatefulWidget {
  const HomeButton({
    super.key,
    required this.text,
    required this.icon,
    required this.callback,
  });

  final String text;
  final VoidCallback callback;
  final String icon;

  @override
  State<StatefulWidget> createState() => _HomeButton();
}

class _HomeButton extends State<HomeButton> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: GestureDetector(
        onTap: () {
          widget.callback();
        },
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Container(
            alignment: Alignment.bottomCenter,
            height: 180,
            decoration: BoxDecoration(
              border: Border.all(width: 1.5, color: CHColor.gray50),
              borderRadius: const BorderRadius.all(Radius.circular(8)),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset(
                    widget.icon,
                    width: 100,
                    height: 100,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CHText(text: widget.text, textType: CHTextType.subtitle),
                      const Icon(Icons.arrow_forward_ios_rounded, size: 20)
                    ],
                  )
                ],
              )
            )
          ),
        ),
      )
    );
  }
}
