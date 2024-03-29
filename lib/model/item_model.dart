import 'dart:core';

import 'package:flutter/material.dart';

class ItemModel {
  final int id;
  final String itemName;
  final int cost;
  final String createdAt;

  const ItemModel({
    required this.id,
    required this.itemName,
    required this.cost,
    required this.createdAt
  });

  factory ItemModel.fromJson(Map<String, dynamic> json) {
    return ItemModel(
        id: json['id'],
        itemName: json['itemName'],
        cost: json['cost'],
        createdAt: json['createdAt']
    );
  }

  static List<ItemModel> fromJsonList(List<dynamic> json) {
    return json.map((itemJson) => ItemModel.fromJson(itemJson)).toList();;
  }
}