import 'package:cleanhome/ui/component/text/ch_text.dart';
import 'package:cleanhome/ui/component/text/ch_text_type.dart';
import 'package:flutter/material.dart';

class UserView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _UserView();
}

class _UserView extends State<UserView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const CHText(text: "유저 관리", textType: CHTextType.title),
      ),
    );
  }
}