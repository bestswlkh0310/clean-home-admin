import 'package:cleanhome/ui/component/text/ch_text.dart';
import 'package:cleanhome/ui/component/text/ch_text_type.dart';
import 'package:cleanhome/ui/feature/home/component/home_button.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {

  const HomeView({
    super.key,
    required this.title,
    required this.subTitle
  });

  final String title;
  final String subTitle;

  @override
  State<StatefulWidget> createState() => _HomeView();
}

class _HomeView extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            CHText(text: widget.title, textType: CHTextType.title),
            Padding(
              padding: const EdgeInsets.all(4),
              child: CHText(text: widget.subTitle, textType: CHTextType.body),
            )
          ],
        ),
      ),
      body: Center(
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            HomeButton(text: "유저 관리", icon: 'assets/icons/home.svg', callback: () {
              Navigator.pushNamed(context, '/user');
            }),
            HomeButton(text: "아이템 관리", icon: 'assets/icons/item.svg', callback: () {
              Navigator.pushNamed(context, '/item');
            })
          ],
        ),
      ),
    );
  }
}