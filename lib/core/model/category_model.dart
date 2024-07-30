import 'package:flutter/material.dart';

class CategoryModel {

  String id;
  String name;
  String type;
  String iconID;
  String status;
  List<String> walletId;

  CategoryModel({
    required this.id,
    required this.name,
    required this.type,
    required this.iconID,
    required this.status,
    required this.walletId,
  });

  factory CategoryModel.fromMap(Map<String, dynamic> data) {
    return CategoryModel(
        id: data['id'],
        name: data['name'],
        type: data['type'],
        iconID: data['iconID'],
        status: data['status'],
        walletId: List<String>.from(data['walletId'])
        );
  }

  Map<String, dynamic> toMap() {
    return {'id': id, 'name': name, 'type': type, 'iconID': iconID, 'status': status, 'walletId': walletId};
  }
}
