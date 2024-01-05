import 'package:cleanhome/ui/feature/add_item/add_item_view.dart';
import 'package:cleanhome/ui/feature/home/home_view.dart';
import 'package:cleanhome/ui/feature/item/item_view.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uuid/uuid.dart';

import '../ui/feature/user/user_view.dart';

void main() async {
  runApp(const MyApp());
  WidgetsFlutterBinding.ensureInitialized();
  await handleUUID();
}

Future<void> handleUUID() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String uuid = prefs.getString('UUID') ?? '';

  if (uuid.isEmpty) {
    prefs.setString('UUID', const Uuid().v4());
  }
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
        '/item': (context) => ItemView(),
        '/item/add': (context) => AddItemView()
      },
      home: const HomeView(title: '집 치우기', subTitle: 'for admin'),
    );
  }
}
