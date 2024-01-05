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
            Text(widget.title, style: const TextStyle(fontWeight: FontWeight.bold)),
            Padding(
              padding: EdgeInsets.all(4),
              child: Text(widget.subTitle, style: const TextStyle(fontWeight: FontWeight.normal, fontSize: 16)),
            )
          ],
        ),
      ),
    );
  }
}