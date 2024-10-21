import 'package:fruits_ecommerce_app/features/my_orders/domain/entities/order_entity.dart';

class OrderModel extends OrderEntity {
  OrderModel({
    required super.oredrNumber,
    required super.date,
    required super.totalPrice,
    required super.noOfItems,
  });

  factory OrderModel.fromJson(Map<String, dynamic> json) {
    return OrderModel(
      oredrNumber: json['oredrNumber'] as String,
      date: json['date'] as String,
      totalPrice: json['totalPrice'] as num,
      noOfItems: json['noOfItems'] as num,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'oredrNumber': oredrNumber,
      'date': date,
      'totalPrice': totalPrice,
      'noOfItems': noOfItems,
    };
  }
}
