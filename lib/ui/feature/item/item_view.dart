import 'package:flutter/material.dart';

import '../../component/text/ch_text.dart';
import '../../component/text/ch_text_type.dart';

class ItemView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ItemView();
}

class _ItemView extends State<ItemView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const CHText(text: "아이템 관리", textType: CHTextType.title),
      ),
    );
  }
}