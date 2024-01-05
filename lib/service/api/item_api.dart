import 'dart:convert';

import 'package:cleanhome/service/api_client.dart';
import 'package:cleanhome/util/constant.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

import '../../model/item_model.dart';

class ItemApi {
  static Future<List<ItemModel>> getItemAll() async {
    var response = await ApiClient.client.get(Uri.parse('${Constant.baseUrl}/item/all'));
    debugPrint(response.body);

    return ItemModel.fromJsonList(json.decode(response.body));
  }

  static Future<List<ItemModel>> addItem(itemName, cost) async {
    Map<String, dynamic> body = {
      'itemName': itemName,
      'cost': cost
    };
    var response = await ApiClient.client.post(
        Uri.parse('${Constant.baseUrl}/item/add'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8'
        },
        body: jsonEncode(body));
    return ItemModel.fromJsonList(json.decode(response.body));
  }
}