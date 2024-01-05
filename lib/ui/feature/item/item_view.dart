import 'dart:convert';

import 'package:cleanhome/model/item_model.dart';
import 'package:flutter/material.dart';

import '../../../service/api/item_api.dart';
import '../../component/text/ch_text.dart';
import '../../component/text/ch_text_type.dart';
import '../../component/theme/color.dart';

class ItemView extends StatefulWidget {
  const ItemView({super.key});

  @override
  State<StatefulWidget> createState() => _ItemView();
}

class _ItemView extends State<ItemView> with WidgetsBindingObserver {

  Future<List<ItemModel>>? itemList;

  @override
  void initState() {
    WidgetsBinding.instance?.addObserver(this);
    super.initState();
    itemList = ItemApi.getItemAll();
  }

  Future<void> _refreshItems() async {
    await Future.delayed(const Duration(seconds: 1));
    setState(() {
      itemList = ItemApi.getItemAll();
    });
  }

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
        height: double.infinity,
        child: RefreshIndicator(
          color: CHColor.main500,
          onRefresh: _refreshItems,
          child: SizedBox(
            height: double.infinity,
            child: FutureBuilder<List<ItemModel>>(
              future: itemList,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(
                      shrinkWrap: true,
                      itemCount: snapshot.data!.length,
                      itemBuilder: (context, index) {
                        var itemModel = snapshot.data![index];
                        return Container(
                            height: 60,
                            child: Text(itemModel.itemName)
                        );
                      });
                } else if (snapshot.hasError) {
                  return Text("${snapshot.error}");
                }
                return const CircularProgressIndicator();
              },
            )
          )
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/item/add')
          .then((v) {
            setState(() {
              itemList = ItemApi.getItemAll();
            });
          });
        },
        backgroundColor: CHColor.main500,
        foregroundColor: Colors.white,
        child: const Icon(Icons.add),
      ),
    );
  }
}