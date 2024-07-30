import 'package:flutter/material.dart';

class Wallet {

  String id;
  String name;
  double amount;
  String currencyID;
  String iconID;

  Wallet({
    required this.id,
    required this.name,
    required this.amount,
    required this.currencyID,
    required this.iconID,
  });

  factory Wallet.fromMap(Map<String, dynamic> data) {
    return Wallet(
      id: data['id'],
      name: data['name'],
      amount: data['amount'].toDouble(),
      currencyID: data['currencyID'],
      iconID: data['iconID'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'amount': amount,
      'currencyID': currencyID,
      'iconID': iconID,
    };
  }
}
