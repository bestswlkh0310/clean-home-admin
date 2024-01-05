import 'package:cleanhome/ui/component/text/ch_text.dart';
import 'package:cleanhome/ui/component/text/ch_text_type.dart';
import 'package:cleanhome/ui/component/theme/color.dart';
import 'package:cleanhome/ui/feature/home/component/ch_button.dart';
import 'package:flutter/material.dart';

class AddItemView extends StatefulWidget {

  const AddItemView({super.key});

  @override
  State<StatefulWidget> createState() => _AddItemView();
}

class _AddItemView extends State<AddItemView> {

  String name = "";
  int cost = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        title: const CHText(text: "아이템 추가", textType: CHTextType.title),
      ),
      body: Container(
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.all(12),
          child: Column(
            children: [
              Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 4, bottom: 4),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: CHText(text: "아이템 이름", textType: CHTextType.subtitle),
                    )
                  ),
                  const TextField(
                    cursorColor: CHColor.main500,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        borderSide: BorderSide(width: 2, color: CHColor.main500)
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        borderSide: BorderSide(width: 2, color: CHColor.main500)
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        borderSide: BorderSide(width: 1.5, color: CHColor.main500)
                      ),
                      hintText: "아이템 이름을 입력해주세요"
                    )
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 4, bottom: 4, top: 16),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: CHText(text: "가격", textType: CHTextType.subtitle),
                    )
                  ),
                  const TextField(
                    cursorColor: CHColor.main500,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          borderSide: BorderSide(width: 2, color: CHColor.main500)
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          borderSide: BorderSide(width: 2, color: CHColor.main500)
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          borderSide: BorderSide(width: 1.5, color: CHColor.main500)
                      ),
                      hintText: "가격을 입력해주세요"
                    )
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: CHButton(
                        onPressed: () {

                        }, text: "추가 완료"
                    ),
                  )
                ],
              ),
            ],
          )
        )
      )
    );
  }
}