class OrderEntity {
  final String oredrNumber;
  final String date;
  final num totalPrice;
  final num noOfItems;

  OrderEntity({
    required this.oredrNumber,
    required this.date,
    required this.totalPrice,
    required this.noOfItems,
  });

  Map<String, dynamic> toMap() {
    return {
      'oredrNumber': oredrNumber,
      'date': date,
      'totalPrice': totalPrice,
      'noOfItems': noOfItems,
    };
  }
}
