import 'package:lvd_wallet/data/model/CategoryModel.dart';

class BillModel {
  String id;
  CategoryModel category;
  double amount;
  String? note;
  String walletId;
  List<String> transactionIds;
  bool isFinished;
  List<DateTime> dueDates;
  List<DateTime> paidDueDates;

  BillModel({
    required this.id,
    required this.category,
    required this.amount,
    this.note = "",
    required this.walletId,
    required this.transactionIds,
    required this.isFinished,
    required this.dueDates,
    required this.paidDueDates
});

  factory BillModel.fromMap(Map<String, dynamic> data) {
    return BillModel(
      id: data['id'],
      category: CategoryModel.fromMap(data['category']),
      amount: data['amount'],
      note: data['note'],
      walletId: data['walletId'],
      transactionIds:
      List<String>.from(data['transactionIdList']?.map((x) => x)),
      isFinished: data['isFinished'],
      dueDates: List<DateTime>.from(data['dueDates']
          ?.map((x) => DateTime.tryParse(x.toDate().toString()))),
      paidDueDates: List<DateTime>.from(data['paidDueDates']
          ?.map((x) => DateTime.tryParse(x.toDate().toString()))),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'category': category.toMap(),
      'amount': amount,
      'note': note,
      'walletId': walletId,
      'transactionIdList': transactionIds,
      'isFinished': isFinished,
      'dueDates': dueDates,
      'paidDueDates': paidDueDates,
    };
  }

}