import '../../domain/entities/cart_entity.dart';

class CartModel extends CartEntity {
  CartModel({
    required super.nameProduct,
    required super.imageProduct,
    required super.priceProduct,
    required super.id,
    required super.amount,
  });

  factory CartModel.fromFirebase(Map<String, dynamic> map) {
    return CartModel(
      nameProduct: map['nameProduct'] as String,
      imageProduct: map['imageProduct'] as String,
      priceProduct: map['priceProduct'] as num,
      amount: map['amount'] as int,
      id: map['id'] as String,
    );
  }
}
