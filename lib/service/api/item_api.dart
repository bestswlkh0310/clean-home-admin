import 'dart:convert';

import 'package:cleanhome/service/api_client.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

import '../../model/item_model.dart';

class ItemApi {
  static Future<List<ItemModel>> getItemAll() async {
    var response = await ApiClient.client.get(Uri.parse('http://172.30.1.85:3000/item/all'));
    return ItemModel.fromJsonList(json.decode(response.body));
  }
}