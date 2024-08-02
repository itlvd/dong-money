import 'package:lvd_wallet/data/model/CategoryModel.dart';

class TransactionModel {
  String id;
  double amount;
  DateTime createDate;
  String currencyId;
  CategoryModel category;
  bool status;
  String? budgetId;
  String? eventId;
  String? billId;
  String? contact;
  String? note;

  TransactionModel(
      {required this.id,
      required this.amount,
      required this.createDate,
      required this.currencyId,
      required this.category,
      required this.status,
      this.budgetId = "",
      this.eventId = "",
      this.billId = "",
      this.contact = "",
      this.note = ""});

  factory TransactionModel.fromMap(Map<String, dynamic> data) =>
      TransactionModel(
          id: data['id'],
          amount: data['amount'],
          createDate:
              DateTime.tryParse(data['createDate'].toDate().toString())!,
          currencyId: data['currencyId'],
          category: CategoryModel.fromMap(data['category']),
          status: data['status'],
          budgetId: data['budgetId'],
          eventId: data['eventId'] ?? '',
          billId: data['billId'],
          contact: data['contact'],
          note: data['note']);

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'amount': amount,
      'date': createDate,
      'currencyId': currencyId,
      'category': category.toMap(),
      'note': note ?? "",
      'budgetId': budgetId,
      'eventId': eventId ?? '',
      'billId': billId,
      'contact': contact,
      'status': status
    };
  }
}
