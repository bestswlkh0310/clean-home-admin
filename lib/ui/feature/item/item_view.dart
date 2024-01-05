import 'package:flutter/material.dart';

import '../../component/text/ch_text.dart';
import '../../component/text/ch_text_type.dart';
import '../../component/theme/color.dart';

class ItemView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ItemView();
}

class _ItemView extends State<ItemView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        title: const CHText(text: "아이템 관리", textType: CHTextType.title),
      ),
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [

            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/item/add');
        },
        child: Icon(Icons.add),
        backgroundColor: CHColor.main500,
        foregroundColor: Colors.white,
      ),
    );
  }
}