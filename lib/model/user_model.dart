import 'dart:core';

import 'package:flutter/material.dart';

class UserModel {
  final String id;
  final String name;
  final int cost;

  const UserModel({
    required this.id,
    required this.name,
    required this.cost,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
        id: json['id'],
        name: json['name'],
        cost: json['cost'],
    );
  }

  static List<UserModel> fromJsonList(List<dynamic> json) {
    return json.map((itemJson) => UserModel.fromJson(itemJson)).toList();;
  }
}