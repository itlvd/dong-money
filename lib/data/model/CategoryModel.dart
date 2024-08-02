class CategoryModel {
  String id;
  String categoryName;
  String type;
  String iconId;

  CategoryModel(
      {required this.id,
      required this.iconId,
      required this.categoryName,
      required this.type});

  factory CategoryModel.fromMap(Map<String, dynamic> mapCategory) => CategoryModel(
        id: mapCategory["id"],
        iconId: mapCategory["iconId"],
        categoryName: mapCategory["categoryName"],
        type: mapCategory["type"]);

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      'categoryName': categoryName,
      'type': type,
      'iconId': iconId
    };
  }
}
