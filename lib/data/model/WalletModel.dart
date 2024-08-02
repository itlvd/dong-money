class WalletModel {
  WalletModel(
      {required this.id,
      required this.nameWallet,
      required this.amount,
      required this.currencyId,
      required this.iconId
      });

  factory WalletModel.fromJson(Map<String, dynamic> map) => WalletModel(
      id: map['id'],
      nameWallet: map['nameWallet'],
      amount: map['amount'],
      currencyId: map['currencyId'],
      iconId: map['iconId']
    );

  String id;
  String nameWallet;
  double amount;
  String currencyId;
  String iconId;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WalletModel &&
          runtimeType == other.runtimeType &&
          id == other.id;

  @override
  int get hashCode => id.hashCode;
}
