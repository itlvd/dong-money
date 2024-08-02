import 'package:lvd_wallet/data/model/CategoryModel.dart';

class BudgetModel {
  String id;
  CategoryModel category;
  double amount;
  double spent;
  String walletId;
  bool isFinished;
  DateTime beginDate;
  DateTime endDate;
  bool isRepeat;
  String label;

  BudgetModel({
    required this.id,
    required this.category,
    required this.amount,
    required this.spent,
    required this.walletId,
    required this.isFinished,
    required this.beginDate,
    required this.endDate,
    required this.isRepeat,
    required this.label
});

  factory BudgetModel.fromMap(Map<String, dynamic> data) {
    return BudgetModel(
      id: data['id'],
      category: CategoryModel.fromMap(data['category']),
      amount: data['amount'],
      spent: data['spent'],
      walletId: data['walletId'],
      isFinished: data['isFinished'],
      beginDate: DateTime.tryParse(data['beginDate'].toDate().toString())!,
      endDate: DateTime.tryParse(data['endDate'].toDate().toString())!,
      isRepeat: data['isRepeat'],
      label: data['label'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'category': category.toMap(),
      'amount': amount,
      'spent': spent,
      'walletId': walletId,
      'isFinished': isFinished,
      'beginDate': beginDate,
      'endDate': endDate,
      'isRepeat': isRepeat,
      'label' : label
    };
  }
}