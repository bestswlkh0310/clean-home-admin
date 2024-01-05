import 'package:cleanhome/ui/feature/home/home_view.dart';
import 'package:cleanhome/ui/feature/item/item_view.dart';
import 'package:flutter/material.dart';

import '../ui/feature/user/user_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '집 치우기',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.white,
        useMaterial3: true,
      ),
      routes: {
        '/user': (context) => UserView(),
        '/item': (context) => ItemView()
      },
      home: const HomeView(title: '집 치우기', subTitle: 'for admin'),
    );
  }
}
